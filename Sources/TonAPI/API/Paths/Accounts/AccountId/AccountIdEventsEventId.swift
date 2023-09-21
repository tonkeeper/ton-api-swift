//
//  AccountIdEventsEventId.swift
//
//
//  Created by Grigory on 21.9.23..
//

import Foundation

extension Paths.Accounts.AccountId.Events {
  struct EventId {
    let path: String
  }
  
  func eventId(_ eventId: String) -> EventId {
    EventId(path: "\(path)/\(eventId)")
  }
}
