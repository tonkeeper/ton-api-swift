//
//  Endpoint.swift
//
//
//  Created by Grigory on 17.6.23..
//

import Foundation

protocol APIRequest {
  var path: String { get }
  var httpMethod: HTTPMethod { get }
  var headers: [HTTPHeader] { get }
  var queryItems: [URLQueryItem] { get }
  var body: Data? { get }
  
  var request: Request { get }
}

extension APIRequest {
  var headers: [HTTPHeader] {
    []
  }
  
  var queryItems: [URLQueryItem] {
    []
  }
  
  var body: Data? {
    nil
  }
  
  var request: Request {
    .init(path: path,
          method: httpMethod,
          headers: headers,
          queryItems: queryItems,
          body: body)
  }
}
