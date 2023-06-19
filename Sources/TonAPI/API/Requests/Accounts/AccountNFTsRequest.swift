//
//  AccountNFTsRequest.swift
//
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct AccountNFTsRequest: APIRequestAttributed {
  public typealias Entity = NFTItems
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

  public let accountId: String
  public let collection: String?
  public let limit: Int?
  public let offset: Int?
  public let isIndirectOwnership: Bool?
  
  public init(accountId: String,
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
