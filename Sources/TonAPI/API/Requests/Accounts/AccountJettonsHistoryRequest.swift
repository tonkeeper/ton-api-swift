//
//  AccountJettonsHistoryRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountJettonsHistoryRequest: APIRequestAttributed {
  public typealias Entity = AccountEvent
  var path: String {
    Paths.v2.accounts.accountId(accountId).jettons.history.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    var items = [URLQueryItem]()
    if let beforeLt = beforeLt {
      items.append(.init(name: .beforeLt, value: String(beforeLt)))
    }
    items.append(.init(name: .limit, value: String(limit)))
    if let startDate = startDate {
      items.append(.init(name: .startDate, value: String(startDate)))
    }
    if let endDate = endDate {
      items.append(.init(name: .endDate, value: String(endDate)))
    }
    return items
  }
  
  public let accountId: String
  public let beforeLt: Int64?
  public let limit: Int
  public let startDate: Int64?
  public let endDate: Int64?
  
  public init(accountId: String,
              beforeLt: Int64?,
              limit: Int,
              startDate: Int64?,
              endDate: Int64?) {
    self.accountId = accountId
    self.beforeLt = beforeLt
    self.limit = limit
    self.startDate = startDate
    self.endDate = endDate
  }
}
