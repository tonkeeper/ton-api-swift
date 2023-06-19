//
//  AccountSearchRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountSearchRequest: APIRequest {
  typealias Entity = DomainNames
  var path: String {
    Paths.v2.accounts.search.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    [.init(name: .name, value: name)]
  }
  
  private let name: String
  
  init(name: String) {
    self.name = name
  }
}
