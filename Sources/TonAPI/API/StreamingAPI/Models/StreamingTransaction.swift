//
//  StreamingTransaction.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public struct StreamingTransaction: Codable {
  public let accountId: String
  public let lt: Int64
  public let txHash: String
  
  enum CodingKeys: String, CodingKey {
    case accountId = "account_id"
    case lt
    case txHash = "tx_hash"
  }
}
