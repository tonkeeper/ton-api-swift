//
//  DNSExpiring.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId.DNS {
  struct Expiring {
    let path: String
  }
  
  var expiring: Expiring {
    Expiring(path: "\(path)/expiring")
  }
}
