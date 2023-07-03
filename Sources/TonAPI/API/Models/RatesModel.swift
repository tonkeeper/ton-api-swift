//
//  RatesModel.swift
//  
//
//  Created by Grigory on 3.7.23..
//

import Foundation

public struct RatesModel: Codable {
  
  public let tokensRates: [TokenRate]
  
  public struct TokenRate: Codable {
    public let key: String
    public let rates: [Rate]
  }
  
  public struct Rate: Codable {
    public let code: String
    public let rate: Decimal
  }
  
  public struct Prices: Codable {
    public let rates: [Rate]
    
    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)
      let prices = try container.nestedContainer(keyedBy: StringCodingKey.self, forKey: "prices")
      rates = try prices.allKeys.map { key in
        let rate = try prices.decode(Decimal.self, forKey: key)
        return Rate(code: key.stringValue, rate: rate)
      }
    }
  }
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)
    let rates = try container.nestedContainer(keyedBy: StringCodingKey.self, forKey: "rates")
    self.tokensRates = try rates.allKeys.map { key in
      let prices = try rates.decode(Prices.self, forKey: key)
      let tokenRate = TokenRate(key: key.stringValue, rates: prices.rates)
      return tokenRate
    }
  }
}
