//
//  Request.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct Request {
  let path: String
  let method: HTTPMethod
  var headers: [HTTPHeader]
  let queryItems: [URLQueryItem]
  let bodyParameter: HTTPParameters
    
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
