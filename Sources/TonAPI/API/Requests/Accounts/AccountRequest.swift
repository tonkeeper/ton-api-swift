//
//  AccountRequest.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

public struct AccountRequest: APIRequestAttributed {
  public typealias Entity = Account
  var path: String {
    Paths.v2.accounts.accountId(accountId).path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let accountId: String
  
  public init(accountId: String) {
    self.accountId = accountId
  }
}
