//
//  AccountPublicKeyRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountPublicKeyRequest: APIRequestAttributed {
  public typealias Entity = Account
  var path: String {
    Paths.v2.accounts.accountId(accountId).publicKey.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let accountId: String
  
  public init(accountId: String) {
    self.accountId = accountId
  }
}
