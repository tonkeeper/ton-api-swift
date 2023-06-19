//
//  Paths.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

enum Paths {
  case v2
  
  var path: String {
    switch self {
    case .v2: return "/v2"
    }
  }
}
