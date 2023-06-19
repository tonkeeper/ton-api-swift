//
//  NetworkTransport.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public protocol NetworkTransport {
  func send(
    request: Request,
    baseURL: URL
  ) async throws -> Response
}
