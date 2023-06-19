//
//  Request.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

struct Request {
  let path: String
  let method: HTTPMethod
  var headers: [HTTPHeader]
  let queryItems: [URLQueryItem]
  let bodyParameter: HTTPParameters
}
