//
//  DNSInfoRequest.swift
//  
//
//  Created by Grigory on 3.9.23..
//

import Foundation

public struct DNSInfoRequest: APIRequestAttributed {
  public typealias Entity = DomainInfo
  var path: String {
    Paths.v2.dns.domainName(domainName).path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let domainName: String
  
  public init(domainName: String) {
    self.domainName = domainName
  }
}

