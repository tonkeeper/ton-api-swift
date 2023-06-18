//
//  AccountsAccountId.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts {
  struct AccountId {
    let path: String
  }
  
  func accountId(_ accountId: String) -> AccountId {
    AccountId(path: "\(path)/\(accountId)")
  }
}
