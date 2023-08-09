//
//  NFTs.swift
//  
//
//  Created by Grigory on 9.8.23..
//

import Foundation

extension Paths {
  struct NFTs {
    let path: String
  }
  
  var nfts: NFTs {
    NFTs(path: "\(path)/nfts")
  }
}

