//
//  Endpoint.swift
//
//
//  Created by Grigory on 17.6.23..
//

import Foundation

protocol APIRequest<Entity> {
  associatedtype Entity
  var path: String { get }
  var httpMethod: HTTPMethod { get }
  var headers: [HTTPHeader] { get }
  var queryItems: [URLQueryItem] { get }
  var bodyParameters: HTTPParameters { get }
  var request: Request { get }
}

extension APIRequest {
  var headers: [HTTPHeader] {
    []
  }
  
  var queryItems: [URLQueryItem] {
    []
  }
  
  var bodyParameters: HTTPParameters {
    [:]
  }
  
  var request: Request {
    .init(path: path,
          method: httpMethod,
          headers: headers,
          queryItems: queryItems,
          bodyParameter: bodyParameters)
  }
}
