//
//  StreamingTransaction.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public struct StreamingTransaction: Codable {
  let accountId: String
  let lt: Int64
  let txHash: String
  
  enum CodingKeys: String, CodingKey {
    case accountId = "account_id"
    case lt
    case txHash = "tx_hash"
  }
}
