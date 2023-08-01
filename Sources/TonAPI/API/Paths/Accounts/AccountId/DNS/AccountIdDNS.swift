//
//  DNS.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct DNS {
    let path: String
  }
  
  var dns: DNS {
    DNS(path: "\(path)/dns")
  }
}
