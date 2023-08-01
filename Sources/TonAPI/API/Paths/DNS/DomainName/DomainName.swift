//
//  DomainName.swift
//  
//
//  Created by Grigory on 1.8.23..
//

import Foundation

extension Paths.DNS {
  struct DomainName {
    let path: String
  }
  
  func domainName(_ domainName: String) -> DomainName {
    DomainName(path: "\(path)/\(domainName)")
  }
}
