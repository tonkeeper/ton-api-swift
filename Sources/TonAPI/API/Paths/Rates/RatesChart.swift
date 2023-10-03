//
//  RatesChart.swift
//  
//
//  Created by Grigory on 3.10.23..
//

import Foundation

extension Paths.Rates {
  struct Chart {
    let path: String
  }
  
  var chart: Chart {
      Chart(path: "\(path)/chart")
  }
}
