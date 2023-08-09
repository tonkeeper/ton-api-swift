//
//  NFTsBulk.swift
//  
//
//  Created by Grigory on 9.8.23..
//

import Foundation

extension Paths.NFTs {
  struct Bulk {
    let path: String
  }
  
  var bulk: Bulk {
    Bulk(path: "\(path)/_bulk")
  }
}
