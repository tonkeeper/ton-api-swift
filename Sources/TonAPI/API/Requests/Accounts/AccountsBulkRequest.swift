//
//  AccountsBulkRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountsBulkRequest: APIRequest {
  var path: String {
    Paths.v2.accounts.bulk.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  var bodyParameters: HTTPParameters {
    [.accountIds: accountIds]
  }
  
  let accountIds: [String]
  
  init(accountIds: [String]) {
    self.accountIds = accountIds
  }
}
