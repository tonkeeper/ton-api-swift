//
//  AccountIdNFTs.swift
//  
//
//  Created by Grigory on 18.6.23..
//

import Foundation

extension Paths.Accounts.AccountId {
  struct NFTs {
    let path: String
  }
  
  var nfts: NFTs {
    NFTs(path: "\(path)/nfts")
  }
}
