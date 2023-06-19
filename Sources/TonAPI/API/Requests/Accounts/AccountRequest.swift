//
//  AccountRequest.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

struct AccountRequest: APIRequest {
  typealias Entity = Account
  var path: String {
    Paths.v2.accounts.accountId(accountId).path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  private let accountId: String
  
  init(accountId: String) {
    self.accountId = accountId
  }
}
