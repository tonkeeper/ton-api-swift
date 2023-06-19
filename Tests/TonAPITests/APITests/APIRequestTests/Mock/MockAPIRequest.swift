//
//  MockAPIRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation
@testable import TonAPI

struct MockAPIRequest<T>: APIRequestAttributed {
  typealias Entity = T
  let path: String
  let httpMethod: HTTPMethod
  let headers: [HTTPHeader]
  let queryItems: [URLQueryItem]
  let bodyParameters: HTTPParameters
}
