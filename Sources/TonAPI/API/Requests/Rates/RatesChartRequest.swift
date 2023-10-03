//
//  RatesChartRequest.swift
//
//
//  Created by Grigory on 3.10.23..
//

import Foundation

public struct RatesChartRequest: APIRequestAttributed {
  public typealias Entity = RatesChartModel
  var path: String {
    Paths.v2.rates.chart.path
  }
  
  var httpMethod: HTTPMethod {
    .GET
  }
  
  var queryItems: [URLQueryItem] {
    return [.init(name: .token, value: token),
            .init(name: .currency, value: currency),
            .init(name: .startDate, value: String(Int(startDate.timeIntervalSince1970))),
            .init(name: .endDate, value: String(Int(endDate.timeIntervalSince1970)))]
  }
  
  public let token: String
  public let currency: String
  public let startDate: Date
  public let endDate: Date
  
  public init(token: String,
              currency: String,
              startDate: Date,
              endDate: Date) {
    self.token = token
    self.currency = currency
    self.startDate = startDate
    self.endDate = endDate
  }
}

