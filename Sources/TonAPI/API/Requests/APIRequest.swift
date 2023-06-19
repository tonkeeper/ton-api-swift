//
//  Endpoint.swift
//
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public protocol APIRequest<Entity> {
  associatedtype Entity
  var request: Request { get }
}

protocol APIRequestAttributed: APIRequest  {
  var path: String { get }
  var httpMethod: HTTPMethod { get }
  var headers: [HTTPHeader] { get }
  var queryItems: [URLQueryItem] { get }
  var bodyParameters: HTTPParameters { get }
  
}

extension APIRequestAttributed {
  var headers: [HTTPHeader] {
    []
  }
  
  var queryItems: [URLQueryItem] {
    []
  }
  
  var bodyParameters: HTTPParameters {
    [:]
  }
  
  public var request: Request {
    .init(path: path,
          method: httpMethod,
          headers: headers,
          queryItems: queryItems,
          bodyParameter: bodyParameters)
  }
}
