//
//  AccountsSearch.swift
//
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts {
  struct Search {
    let path: String
  }
  
  var search: Search {
    Search(path: "\(path)/search")
  }
}
