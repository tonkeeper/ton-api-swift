//
//  NetworkClient.swift
//
//
//  Created by Grigory on 14.9.23..
//

import Foundation

public final class NetworkClient {
  
  public enum Error: Swift.Error {
    case requestFailed(error: Swift.Error)
    case notHTTPResponse(response: URLResponse)
    case noConnection
  }
  
  private let httpTransport: HTTPTransport
  private let urlRequestBuilder: URLRequestBuilder
  private let requestInterceptors: [RequestInterceptor]
  
  // MARK: - Init
  
  public init(httpTransport: HTTPTransport, 
              urlRequestBuilder: URLRequestBuilder,
              requestInterceptors: [RequestInterceptor]) {
    self.httpTransport = httpTransport
    self.urlRequestBuilder = urlRequestBuilder
    self.requestInterceptors = requestInterceptors
  }
  
  public func send(request: Request, hostURL: URL) async throws -> (Data, HTTPResponse) {
    let request = try await interceptRequest(request)
    let urlRequest = try urlRequestBuilder.build(with: request, baseURL: hostURL)

    do {
      let (data, urlResponse) = try await httpTransport.send(request: urlRequest)
      guard let httpResponse = HTTPResponse(urlResponse: urlResponse) else {
        throw Error.notHTTPResponse(response: urlResponse)
      }
      return (data, httpResponse)
    } catch {
      if error.isNoConnectionError {
        throw Error.noConnection
      } else {
        throw Error.requestFailed(error: error)
      }
    }
  }
  
  public func bytes(request: Request, hostURL: URL) async throws -> (AsyncBytes, HTTPResponse) {
    let request = try await interceptRequest(request)
    let urlRequest = try urlRequestBuilder.build(with: request, baseURL: hostURL)
    if #available(macOS 12.0, iOS 15.0, watchOS 8.0, *) {
      let (asyncBytes, response) = try await httpTransport.bytes(request: urlRequest)
      guard let httpResponse = HTTPResponse(urlResponse: response) else {
        throw Error.notHTTPResponse(response: response)
      }
      return (asyncBytes, httpResponse)
    } else {
      let bytesAccumulator = BytesAccumulator()
      let task: HTTPTransportTask = httpTransport.send(request: urlRequest)
      return try await withTaskCancellationHandler {
        try await withCheckedThrowingContinuation { continuation in
          httpTransport.addTaskHandler(task: task) { result in
            switch result {
            case .success(let event):
              switch event {
              case .response(let response):
                continuation.resume(returning: (AsyncBytes(bytesProvider: bytesAccumulator, task: task), response))
              case .data(let data):
                Task {
                  await bytesAccumulator.addData(data)
                }
              case .complete(let error):
                Task {
                  if let error = error {
                    await bytesAccumulator.setResult(result: .failure(error))
                  } else {
                    await bytesAccumulator.setResult(result: .success(()))
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
}

private extension NetworkClient {
  func interceptRequest(_ request: Request) async throws -> Request {
    guard !requestInterceptors.isEmpty else { return request }
    var request = request
    try await requestInterceptors.asyncForEach { interceptor in
      request = try await interceptor.intercept(request: request)
    }
    return request
  }
}

extension Sequence {
    func asyncForEach(
        _ operation: (Element) async throws -> Void
    ) async rethrows {
        for element in self {
            try await operation(element)
        }
    }
}
