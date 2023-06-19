//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public final class URLSessionTransport: NetworkTransport {
  
  enum Error: Swift.Error {
    case requestFailed(error: Swift.Error)
    case notHTTPResponse(response: URLResponse)
  }
  
  private let urlSession: URLSessionProtocol
  private let baseURL: URL
  private let urlRequestBuilder: URLRequestBuilder
  private let responseBuilder: ResponseBuilder
  private let requestInterceptors: [RequestInterceptor]
  
  public init(urlSession: URLSessionProtocol,
              baseURL: URL,
              urlRequestBuilder: URLRequestBuilder,
              responseBuilder: ResponseBuilder,
              requestInterceptors: [RequestInterceptor]) {
    self.urlSession = urlSession
    self.baseURL = baseURL
    self.urlRequestBuilder = urlRequestBuilder
    self.responseBuilder = responseBuilder
    self.requestInterceptors = requestInterceptors
  }
  
  // MARK: - NetworkTransport
  
  public func send(
    request: Request, baseURL: URL
  ) async throws -> Response {
    let request = try await interceptRequest(request)
    let urlRequest = try urlRequestBuilder.build(with: request, baseURL: baseURL)
    
    do {
      let (data, urlResponse) = try await urlSession.data(for: urlRequest)
      guard let httpResponse = urlResponse as? HTTPURLResponse else {
        throw Error.notHTTPResponse(response: urlResponse)
      }
      let response = responseBuilder.build(with: httpResponse, body: data)
      return response
    } catch let error {
      throw Error.requestFailed(error: error)
    }
  }
}

private extension URLSessionTransport {
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
