import Foundation
import HTTPTypes
import OpenAPIRuntime

enum StreamURLSessionTransportError: Error {
  case invalidRequestURL(path: String, method: HTTPRequest.Method, baseURL: URL)
  case notHTTPResponse(URLResponse)
  case noResponse(url: URL?)
}

public final class StreamURLSessionTransport {
  private let urlSessionConfiguration: URLSessionConfiguration
  private let urlSessionHandler: URLSessionHandler
  public init(urlSessionConfiguration: URLSessionConfiguration) {
    self.urlSessionConfiguration = urlSessionConfiguration
    self.urlSessionHandler = URLSessionHandler(urlSessionConfiguration: urlSessionConfiguration)
  }
  
  private func send(request: URLRequest) async throws -> (AsyncBytes, URLResponse) {
    let accumulator = BytesAccumulator()
    let task = urlSessionHandler.send(request: request)
    return try await withTaskCancellationHandler {
      try await withCheckedThrowingContinuation { continuation in
        urlSessionHandler.addTaskHandler(task: task) { result in
          switch result {
          case .success(let event):
            switch event {
            case .response(let response):
              continuation.resume(
                returning: (
                  AsyncBytes(
                    bytesProvider: accumulator,
                    task: task
                  ), response
                )
              )
            case .data(let data):
              Task {
                await accumulator.addData(data)
              }
            case .complete(let error):
              Task {
                switch error {
                case .some(let error):
                  await accumulator.setResult(result: .failure(error))
                case .none:
                  await accumulator.setResult(result: .success(()))
                }
              }
            }
          case .failure(let error):
            continuation.resume(throwing: error)
          }
        }
        task.resume()
      }
    } onCancel: {
      task.cancel()
    }
  }
}

extension StreamURLSessionTransport: ClientTransport {
  public func send(_ request: HTTPTypes.HTTPRequest,
                   body: OpenAPIRuntime.HTTPBody?,
                   baseURL: URL,
                   operationID: String) async throws -> (HTTPTypes.HTTPResponse, OpenAPIRuntime.HTTPBody?) {
    let urlRequest = try await URLRequest(request, body: body, baseURL: baseURL)
    let (bytes, response) = try await send(request: urlRequest)
    return try HTTPResponse.response(
      method: request.method,
      urlResponse: response,
      bytes: bytes)
  }
}

extension URLRequest {
  init(_ request: HTTPRequest, body: HTTPBody?, baseURL: URL) async throws {
    guard
      var baseUrlComponents = URLComponents(string: baseURL.absoluteString),
      let requestUrlComponents = URLComponents(string: request.path ?? "")
    else {
      throw StreamURLSessionTransportError.invalidRequestURL(
        path: request.path ?? "<nil>",
        method: request.method,
        baseURL: baseURL
      )
    }
    
    let path = requestUrlComponents.percentEncodedPath
    baseUrlComponents.percentEncodedPath += path
    baseUrlComponents.percentEncodedQuery = requestUrlComponents.percentEncodedQuery
    guard let url = baseUrlComponents.url else {
      throw StreamURLSessionTransportError.invalidRequestURL(
        path: path,
        method: request.method,
        baseURL: baseURL
      )
    }
    self.init(url: url)
    self.httpMethod = request.method.rawValue
    for header in request.headerFields {
      self.setValue(header.value, forHTTPHeaderField: header.name.canonicalName)
    }
    if let body {
      self.httpBody = try await Data(collecting: body, upTo: .max)
    }
  }
}

extension HTTPResponse {
  static func response(
    method: HTTPRequest.Method,
    urlResponse: URLResponse,
    bytes: AsyncBytes
  ) throws -> (HTTPResponse, HTTPBody?) {
    guard let httpResponse = urlResponse as? HTTPURLResponse else {
      throw StreamURLSessionTransportError.notHTTPResponse(urlResponse)
    }
    var headerFields = HTTPFields()
    for (headerName, headerValue) in httpResponse.allHeaderFields {
      guard
        let rawName = headerName as? String,
        let name = HTTPField.Name(rawName),
        let value = headerValue as? String
      else {
        continue
      }
      headerFields[name] = value
    }
    
    let httpBodyAsyncStream: AsyncThrowingStream<ArraySlice<UInt8>, Error> = AsyncThrowingStream { continuation in
      let task = Task {
        do {
          for try await batch in bytes {
            try Task.checkCancellation()
            continuation.yield(ArraySlice(batch))
          }
        } catch let error {
          continuation.finish(throwing: error)
        }
        continuation.finish()
      }
      continuation.onTermination = { _ in
        task.cancel()
      }
    }
    let body = HTTPBody(httpBodyAsyncStream, length: .unknown)
    return (
      HTTPResponse(
        status: .init(code: httpResponse.statusCode),
        headerFields: headerFields
      ),
      body
    )
  }
}
