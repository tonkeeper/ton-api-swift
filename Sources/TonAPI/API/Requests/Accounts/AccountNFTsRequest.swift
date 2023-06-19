//
//  AccountNFTsRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

struct AccountNFTsRequest: APIRequest {
  var path: String {
    Paths.v2.accounts.accountId(accountId).nfts.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    var items = [URLQueryItem]()
    if let collection = collection {
      items.append(.init(name: .collection, value: collection))
    }
    if let limit = limit {
      items.append(.init(name: .limit, value: String(limit)))
    }
    if let offset = offset {
        items.append(.init(name: .offset, value: String(offset)))
    }
    if let isIndirectOwnership = isIndirectOwnership {
          items.append(.init(name: .isIndirectOwnership, value: String(isIndirectOwnership)))
    }
    return items
  }

  private let accountId: String
  private let collection: String?
  private let limit: Int?
  private let offset: Int?
  private let isIndirectOwnership: Bool?
  
  init(accountId: String,
       collection: String?,
       limit: Int?,
       offset: Int?,
       isIndirectOwnership: Bool?) {
    self.accountId = accountId
    self.collection = collection
    self.limit = limit
    self.offset = offset
    self.isIndirectOwnership = isIndirectOwnership
  }
}
