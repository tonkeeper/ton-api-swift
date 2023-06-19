//
//  AccountsBulkRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountsBulkRequest: APIRequestAttributed {
  public typealias Entity =  Accounts
  var path: String {
    Paths.v2.accounts.bulk.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  var bodyParameters: HTTPParameters {
    [.accountIds: accountIds]
  }
  
  public let accountIds: [String]
  
  public init(accountIds: [String]) {
    self.accountIds = accountIds
  }
}
