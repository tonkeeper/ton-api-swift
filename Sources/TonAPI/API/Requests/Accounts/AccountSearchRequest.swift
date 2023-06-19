//
//  AccountSearchRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountSearchRequest: APIRequestAttributed {
  public typealias Entity = DomainNames
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
  
  public init(name: String) {
    self.name = name
  }
}
