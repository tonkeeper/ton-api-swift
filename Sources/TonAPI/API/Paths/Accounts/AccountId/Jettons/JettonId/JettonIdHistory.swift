//
//  JettonIdHistory.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId.Jettons.JettonId {
  struct History {
    let path: String
  }
  
  var history: History {
    History(path: "\(path)/history")
  }
}

