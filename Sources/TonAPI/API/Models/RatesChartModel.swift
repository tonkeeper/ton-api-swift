//
//  RatesChartModel.swift
//
//
//  Created by Grigory on 3.10.23..
//

import Foundation

public struct RatesChartModel: Codable {
  
  public struct Point: Codable {
    public let date: TimeInterval
    public let value: Double
  }
  
  public let points: [Point]
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)
    var pointsContainer = try container.nestedUnkeyedContainer(forKey: "points")
    var points = [Point]()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yy-MM-dd"
    while !pointsContainer.isAtEnd {
      var pointContainer = try pointsContainer.nestedUnkeyedContainer()
      while !pointContainer.isAtEnd {
        var date: TimeInterval = 0
        var value: Double = 0
        if pointContainer.currentIndex == 0 {
          let string = try pointContainer.decode(String.self)
          date = dateFormatter.date(from: string)?.timeIntervalSince1970 ?? 0
        }
        if pointContainer.currentIndex == 1 {
          value = try pointContainer.decode(Double.self)
        }
        
        let point = Point(date: date, value: value)
        points.append(point)
      }
    }
    self.points = points
  }
}
