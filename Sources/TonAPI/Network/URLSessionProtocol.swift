//
//  URLSessionProtocol.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public protocol URLSessionProtocol {
  func data(for request: URLRequest, delegate: URLSessionTaskDelegate?) async throws -> (Data, URLResponse)
}

public extension URLSessionProtocol {
  func data(for request: URLRequest) async throws -> (Data, URLResponse) {
    try await self.data(for: request, delegate: nil)
  }
}