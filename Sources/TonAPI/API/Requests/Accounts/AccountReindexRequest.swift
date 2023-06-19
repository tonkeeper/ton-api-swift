//
//  AccountReindexRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountReindexRequest: APIRequest {
  typealias Entity = Data
  var path: String {
    Paths.v2.accounts.accountId(accountId).reindex.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  private let accountId: String
  
  init(accountId: String) {
    self.accountId = accountId
  }
}
