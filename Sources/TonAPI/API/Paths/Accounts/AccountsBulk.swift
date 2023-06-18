//
//  AccountsBulk.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts {
  struct Bulk {
    let path: String
  }
  
  var bulk: Bulk {
    Bulk(path: "\(path)/_bulk")
  }
}
