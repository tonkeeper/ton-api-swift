//
//  DNS.swift
//  
//
//  Created by Grigory on 1.8.23..
//

import Foundation

extension Paths {
  struct DNS {
    let path: String
  }
  
  var dns: DNS {
    DNS(path: "\(path)/dns")
  }
}
