//
//  BlockchainMessage.swift
//  
//
//  Created by Grigory on 7.7.23..
//

import Foundation

extension Paths {
  struct Blockchain {
    let path: String
  }
  
  var blockchain: Blockchain {
      Blockchain(path: "\(path)/blockchain")
  }
}
