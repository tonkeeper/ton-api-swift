//
//  WalletEmulate.swift
//
//
//  Created by Grigory on 25.7.23..
//

import Foundation

extension Paths.Wallet {
  struct Emulate {
    let path: String
  }
  
  var emulate: Emulate {
      Emulate(path: "\(path)/emulate")
  }
}
