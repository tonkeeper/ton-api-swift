//
//  Request.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct Request {
  public let uuid = UUID()
  public let path: String
  public let method: HTTPMethod
  public var headers: [HTTPHeader]
  public let queryItems: [URLQueryItem]
  public let bodyParameter: HTTPParameters
  
  public init(path: String,
              method: HTTPMethod,
              headers: [HTTPHeader],
              queryItems: [URLQueryItem],
              bodyParameter: HTTPParameters) {
    self.path = path
    self.method = method
    self.headers = headers
    self.queryItems = queryItems
    self.bodyParameter = bodyParameter
  }
}
