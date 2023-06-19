//
//  AccountIdReindex.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct Reindex {
    let path: String
  }
  
  var reindex: Reindex {
    Reindex(path: "\(path)/reindex")
  }
}
