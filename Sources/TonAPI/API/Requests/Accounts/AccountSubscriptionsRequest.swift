//
//  AccountSubscriptionsRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountSubscriptionsRequest: APIRequest {
  typealias Entity = Subscriptions
  var path: String {
    Paths.v2.accounts.accountId(accountId).subscriptions.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  private let accountId: String
  
  init(accountId: String) {
    self.accountId = accountId
  }
}
