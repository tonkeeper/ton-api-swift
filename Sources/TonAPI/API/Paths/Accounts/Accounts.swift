//
//  Accounts.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths {
  struct Accounts {
    let path: String
  }
  
  var accounts: Accounts {
    Accounts(path: "\(path)/accounts")
  }
}

