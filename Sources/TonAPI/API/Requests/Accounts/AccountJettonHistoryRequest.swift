//
//  AccountJettonHistoryRequest.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountJettonHistoryRequest: APIRequest {
  typealias Entity = AccountEvents
  var path: String {
    Paths.v2.accounts.accountId(accountId).jettons.jettonId(jettonId).history.path
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
  
  private let accountId: String
  private let jettonId: String
  private let beforeLt: Int64?
  private let limit: Int
  private let startDate: Int64?
  private let endDate: Int64?
  
  init(accountId: String,
       jettonId: String,
       beforeLt: Int64?,
       limit: Int,
       startDate: Int64?,
       endDate: Int64?) {
    self.accountId = accountId
    self.jettonId = jettonId
    self.beforeLt = beforeLt
    self.limit = limit
    self.startDate = startDate
    self.endDate = endDate
  }
}
