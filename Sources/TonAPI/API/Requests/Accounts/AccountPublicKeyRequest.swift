//
//  AccountPublicKeyRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountPublicKeyRequest: APIRequest {
  typealias Entity = Account
  var path: String {
    Paths.v2.accounts.accountId(accountId).publicKey.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  private let accountId: String
  
  init(accountId: String) {
    self.accountId = accountId
  }
}
