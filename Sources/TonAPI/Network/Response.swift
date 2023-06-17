//
//  Response.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

struct Response {
  let statusCode: Int
  let headers: [HTTPHeader]
  let body: Data
  
  init(statusCode: Int,
       headers: [HTTPHeader],
       body: Data) {
    self.statusCode = statusCode
    self.headers = headers
    self.body = body
  }
}
