//
//  AccountEventRequest.swift
//
//
//  Created by Grigory on 21.9.23..
//

import Foundation

public struct AccountEventRequest: APIRequestAttributed {
  public typealias Entity = AccountEvent
  var path: String {
    Paths.v2.accounts.accountId(accountId).events.eventId(eventId).path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public let accountId: String
  public let eventId: String
  
  public init(accountId: String,
              eventId: String) {
    self.accountId = accountId
    self.eventId = eventId
  }
}
