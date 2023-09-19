//
//  TransactionsStreamingRequest.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public struct TransactionsStreamingRequest: StreamingAPIRequest {
  public typealias Entity = StreamingTransaction
  
  var path: String {
    Paths.v2.sse.accounts.transactions.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  public var request: Request {
    let accountsQueryValue = accounts.joined(separator: ",")
    let queryItems = [URLQueryItem(name: .accounts, value: accountsQueryValue)]
    
    return Request(path: path,
                   method: httpMethod,
                   headers: [.init(name: "Accept", value: "text/event-stream")],
                   queryItems: queryItems,
                   bodyParameter: [:])
  }
  
  let accounts: [String]
  
  public init(accounts: [String]) {
    self.accounts = accounts
  }
}
