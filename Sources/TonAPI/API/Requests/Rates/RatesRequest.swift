//
//  RatesRequest.swift
//
//
//  Created by Grigory on 2.7.23..
//

import Foundation

public struct RatesRequest: APIRequestAttributed {
  public typealias Entity = RatesModel
  var path: String {
    Paths.v2.rates.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    let tokensValue = tokens.joined(separator: ",")
    let currenciesValue = currencies.joined(separator: ",")
    return [.init(name: .tokens, value: tokensValue),
            .init(name: .currencies, value: currenciesValue)]
  }
  
  public let tokens: [String]
  public let currencies: [String]
  
  public init(tokens: [String],
              currencies: [String]) {
    self.tokens = tokens
    self.currencies = currencies
  }
}

