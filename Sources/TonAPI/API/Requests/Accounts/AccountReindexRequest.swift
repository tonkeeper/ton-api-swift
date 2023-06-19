//
//  AccountReindexRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountReindexRequest: APIRequestAttributed {
  public typealias Entity = Data
  var path: String {
    Paths.v2.accounts.accountId(accountId).reindex.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  public let accountId: String
  
  public init(accountId: String) {
    self.accountId = accountId
  }
}
