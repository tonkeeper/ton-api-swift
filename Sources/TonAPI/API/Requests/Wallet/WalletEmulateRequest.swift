//
//  WalletEmulateRequest.swift
//
//
//  Created by Grigory on 25.7.23..
//

import Foundation

public struct WalletEmulateRequest: APIRequestAttributed {
    public typealias Entity = MessageConsequences
  
  var path: String {
    Paths.v2.wallet.emulate.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  var bodyParameters: HTTPParameters {
    [.boc: boc]
  }
  
  let boc: String
  
  public init(boc: String) {
    self.boc = boc
  }
}
