//
//  HTTPResponse.swift
//  
//
//  Created by Grigory on 15.9.23..
//

import Foundation

public struct HTTPResponse: Equatable {
  public let statusCode: Int
  public let headers: [HTTPHeader]
}

extension HTTPResponse {
  init?(urlResponse: URLResponse?) {
    guard let httpURLResponse = urlResponse as? HTTPURLResponse else { return nil }
    self.statusCode = httpURLResponse.statusCode
    self.headers = httpURLResponse.allHeaderFields
      .compactMap { name, value -> (String, String)? in
        guard let name = name as? String,
              let value = value as? String else { return nil }
        return (name, value)
      }
      .map { HTTPHeader(name: $0, value: $1) }
  }
}
