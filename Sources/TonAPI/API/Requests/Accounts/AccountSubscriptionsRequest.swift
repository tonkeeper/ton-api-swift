//
//  AccountSubscriptionsRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountSubscriptionsRequest: APIRequestAttributed {
  public typealias Entity = Subscriptions
  var path: String {
    Paths.v2.accounts.accountId(accountId).subscriptions.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let accountId: String
  
  public init(accountId: String) {
    self.accountId = accountId
  }
}
