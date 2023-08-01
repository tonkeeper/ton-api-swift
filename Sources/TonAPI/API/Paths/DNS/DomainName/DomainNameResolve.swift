//
//  DomainNameResolve.swift
//  
//
//  Created by Grigory on 1.8.23..
//

import Foundation

extension Paths.DNS.DomainName {
  struct Resolve {
    let path: String
  }
  
  var resolve: Resolve {
    Resolve(path: "\(path)/resolve")
  }
}
