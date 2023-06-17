//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

final class URLSessionTransport: NetworkTransport {
  
  enum Error: Swift.Error {
    case requestFailed(error: Swift.Error)
    case notHTTPResponse(response: URLResponse)
  }
  
  private let urlSession: URLSession
  private let baseURL: URL
  private let urlRequestBuilder: URLRequestBuilder
  private let responseBuilder: ResponseBuilder
  
  init(urlSession: URLSession,
       baseURL: URL,
       urlRequestBuilder: URLRequestBuilder,
       responseBuilder: ResponseBuilder) {
    self.urlSession = urlSession
    self.baseURL = baseURL
    self.urlRequestBuilder = urlRequestBuilder
    self.responseBuilder = responseBuilder
  }
  
  // MARK: - NetworkTransport
  
  func send(
    request: Request, baseURL: URL
  ) async throws -> Response {
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
