//
//  Jettons.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct Jettons {
    let path: String
  }
  
  var jettons: Jettons {
    Jettons(path: "\(path)/jettons")
  }
}
