//
//  JettonsHistory.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId.Jettons {
  struct JettonsHistory {
    let path: String
  }
  
  var history: JettonsHistory {
    JettonsHistory(path: "\(path)/history")
  }
}
