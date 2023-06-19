//
//  AccountJettonsRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountJettonsRequest: APIRequestAttributed {
  public typealias Entity = JettonsBalances
  var path: String {
    Paths.v2.accounts.accountId(accountId).jettons.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let accountId: String
  
  public init(accountId: String) {
    self.accountId = accountId
  }
}
