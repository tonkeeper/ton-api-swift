//
//  DNSBackresolve.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId.DNS {
  struct Backresolve {
    let path: String
  }
  
  var backresolve: Backresolve {
    Backresolve(path: "\(path)/backresolve")
  }
}
