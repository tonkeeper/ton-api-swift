//
//  JettonId.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId.Jettons {
  struct JettonId {
    let path: String
  }
  
  func jettonId(_ jettonId: String) -> JettonId {
    JettonId(path: "\(path)/\(jettonId)")
  }
}
