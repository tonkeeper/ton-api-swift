//
//  AccountIdEvents.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct Events {
    let path: String
  }
  
  var events: Events {
    Events(path: "\(path)/events")
  }
}
