//
//  StreamingAPIDecoder.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public struct StreamingAPIDecoder {
  
  enum Error: Swift.Error {
    case failedToDecode
  }
  
  let jsonDecoder: JSONDecoder
  
  public init(jsonDecoder: JSONDecoder) {
    self.jsonDecoder = jsonDecoder
  }
  
  func decodeEventData<Model: Codable>(_ dataString: String) throws -> Model {
    guard let data = dataString.data(using: .utf8) else {
      throw Error.failedToDecode
    }
    
    return try jsonDecoder.decode(Model.self, from: data)
  }
}
