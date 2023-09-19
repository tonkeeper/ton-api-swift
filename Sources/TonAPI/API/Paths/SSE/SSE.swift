//
//  SSE.swift
//  
//
//  Created by Grigory on 18.9.23..
//

import Foundation

extension Paths {
  struct SSE {
    let path: String
  }
  
  var sse: SSE {
    SSE(path: "\(path)/sse")
  }
}

extension Paths.SSE {
  struct Accounts {
    let path: String
  }
  
  var accounts: Accounts {
    Accounts(path: "\(path)/accounts")
  }
}

extension Paths.SSE.Accounts {
  struct Transactions {
    let path: String
  }
  
  var transactions: Transactions {
    Transactions(path: "\(path)/transactions")
  }
}
