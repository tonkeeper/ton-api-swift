//
//  ResolveDNSRequest.swift
//  
//
//  Created by Grigory on 1.8.23..
//

import Foundation

public struct ResolveDNSRequest: APIRequestAttributed {
  public typealias Entity = DNSRecord
  var path: String {
    Paths.v2.dns.domainName(domainName).resolve.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let domainName: String
  
  public init(domainName: String) {
    self.domainName = domainName
  }
}
