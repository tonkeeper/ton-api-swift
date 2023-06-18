//
//  AccountIdSubscriptions.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct Subscriptions {
    let path: String
  }
  
  var subscriptions: Subscriptions {
    Subscriptions(path: "\(path)/subscriptions")
  }
}
