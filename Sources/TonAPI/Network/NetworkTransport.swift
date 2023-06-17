//
//  NetworkTransport.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

protocol NetworkTransport {
  func send(
    request: Request,
    baseURL: URL
  ) async throws -> Response
}
