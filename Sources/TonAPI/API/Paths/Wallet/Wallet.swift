//
//  Wallet.swift
//
//
//  Created by Grigory on 25.7.23..
//

import Foundation

extension Paths {
  struct Wallet {
    let path: String
  }
  
  var wallet: Wallet {
      Wallet(path: "\(path)/wallet")
  }
}
