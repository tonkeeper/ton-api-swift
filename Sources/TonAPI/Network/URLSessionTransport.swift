//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

final class URLSessionTransport: NetworkTransport {
  
  private let urlSession: URLSession
  
  init(urlSession: URLSession) {
    self.urlSession = urlSession
  }
  
  // MARK: - NetworkTransport
  
  func send(
    request: Request, baseURL: URL
  ) async throws -> Response {
    // TBD: Build URLRequest
    // TBD: Send request via URLSession
    // TBD: Create response and return
    Response(statusCode: 0, headers: [], body: Data())
  }
}
