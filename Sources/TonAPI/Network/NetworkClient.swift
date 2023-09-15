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
  
  public func send(streamRequest: Request, hostURL: URL) -> AsyncThrowingStream<HTTPTransportEvent, Swift.Error> {
    return AsyncThrowingStream { [weak self] continuation in
      guard let self = self else { return }
      Task {
        let request = try await self.interceptRequest(streamRequest)
        let urlRequest = try self.urlRequestBuilder.build(with: request, baseURL: hostURL)
        let task = self.httpTransport.send(request: urlRequest) { result in
          switch result {
          case .complete(let completion):
            if let error = completion.error {
              if error.isNoConnectionError {
                continuation.finish(throwing: Error.noConnection)
              } else {
                continuation.finish(throwing: Error.requestFailed(error: error))
              }
              
              return
            }
            continuation.yield(.complete(completion))
            continuation.finish(throwing: completion.error)
          default:
            continuation.yield(result)
          }
        }
        
        continuation.onTermination = { [weak self] termination in
          switch termination {
          case .finished(let error):
            continuation.yield(.complete(.init(response: task.httpResponse(), error: error)))
            continuation.finish(throwing: error)
          case .cancelled:
            continuation.yield(.complete(.init(response: task.httpResponse(), error: nil)))
            continuation.finish()
          @unknown default:
            return
          }
          self?.httpTransport.cancelTask(task)
        }
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
