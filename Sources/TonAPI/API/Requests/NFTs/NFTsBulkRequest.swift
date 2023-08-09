//
//  NFTsBulkRequest.swift
//  
//
//  Created by Grigory on 9.8.23..
//

import Foundation

public struct NFTsBulkRequest: APIRequestAttributed {
    public typealias Entity = NFTItems
  
  var path: String {
    Paths.v2.nfts.bulk.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  var bodyParameters: HTTPParameters {
    [.accountIds: nftsAddresses]
  }
  
  let nftsAddresses: [String]
  
  public init(nftsAddresses: [String]) {
    self.nftsAddresses = nftsAddresses
  }
}
