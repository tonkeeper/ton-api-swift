//
//  AccountJettonsRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountJettonsRequest: APIRequest {
  var path: String {
    Paths.v2.accounts.accountId(accountId).jettons.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  private let accountId: String
  
  init(accountId: String) {
    self.accountId = accountId
  }
}
