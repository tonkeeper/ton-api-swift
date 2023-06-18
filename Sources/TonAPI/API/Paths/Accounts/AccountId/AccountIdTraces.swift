//
//  AccountIdTraces.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct Traces {
    let path: String
  }
  
  var traces: Traces {
    Traces(path: "\(path)/traces")
  }
}
