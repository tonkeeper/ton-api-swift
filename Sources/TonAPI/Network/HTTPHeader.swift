//
//  HTTPHeader.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

struct HTTPHeader {
  let name: String
  let value: String
  
  init(name: String,
       value: String) {
    self.name = name
    self.value = value
  }
}
