//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

struct APIError: Codable, Equatable {
  let error: String
  
  init(error: String) {
    self.error = error
  }
  
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.error = try values.decode(String.self, forKey: "error")
  }
  
  func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encode(error, forKey: "error")
  }
}

