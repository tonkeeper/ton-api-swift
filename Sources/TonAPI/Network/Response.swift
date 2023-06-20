//
//  Response.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct Response: Equatable {
  let statusCode: Int
  let headers: [HTTPHeader]
  let body: Data
  
  public init(statusCode: Int,
              headers: [HTTPHeader],
              body: Data) {
    self.statusCode = statusCode
    self.headers = headers
    self.body = body
  }
}
