//
//  AccountDomainRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountDomainRequest: APIRequestAttributed {
  public typealias Entity = DomainNames
  var path: String {
    Paths.v2.accounts.accountId(accountId).dns.backresolve.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let accountId: String
  
  public init(accountId: String) {
    self.accountId = accountId
  }
}
