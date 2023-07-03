//
//  Rates.swift
//
//
//  Created by Grigory on 2.7.23..
//

import Foundation

extension Paths {
  struct Rates {
    let path: String
  }
  
  var rates: Rates {
      Rates(path: "\(path)/rates")
  }
}

