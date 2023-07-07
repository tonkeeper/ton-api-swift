//
//  BlockchainMessage.swift
//  
//
//  Created by Grigory on 7.7.23..
//

import Foundation

extension Paths.Blockchain {
  struct Message {
    let path: String
  }
  
  var message: Message {
      Message(path: "\(path)/message")
  }
}
