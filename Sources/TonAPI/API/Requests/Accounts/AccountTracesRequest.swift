//
//  AccountTracesRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountTracesRequest: APIRequestAttributed {
  public typealias Entity = TraceIds
  var path: String {
    Paths.v2.accounts.accountId(accountId).traces.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    var items = [URLQueryItem]()
    if let limit = limit {
      items.append(.init(name: .limit, value: String(limit)))
    }
    return items
  }
  
  public let accountId: String
  public let limit: Int32?
  
  public init(accountId: String,
       limit: Int32?) {
    self.accountId = accountId
    self.limit = limit
  }
}
