//
//  AccountIdPublicKey.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct PublicKey {
    let path: String
  }
  
  var publicKey: PublicKey {
    PublicKey(path: "\(path)/publickey")
  }
}
