//
//  URLSessionProtocol.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

protocol URLSessionProtocol {
  func data(for request: URLRequest, delegate: URLSessionTaskDelegate?) async throws -> (Data, URLResponse)
}

extension URLSessionProtocol {
  func data(for request: URLRequest) async throws -> (Data, URLResponse) {
    try await self.data(for: request, delegate: nil)
  }
}

extension URLSession: URLSessionProtocol {}
