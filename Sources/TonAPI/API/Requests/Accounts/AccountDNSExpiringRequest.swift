//
//  AccountDNSExpiringRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountDNSExpiringRequest: APIRequestAttributed {
  public typealias Entity = DomainNames
  var path: String {
    Paths.v2.accounts.accountId(accountId).dns.expiring.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    var items = [URLQueryItem]()
    if let period = period {
      items.append(.init(name: .period, value: String(period)))
    }
    return items
  }
  
  public let accountId: String
  public let period: Int?
  
  public init(accountId: String,
              period: Int?) {
    self.accountId = accountId
    self.period = period
  }
}
