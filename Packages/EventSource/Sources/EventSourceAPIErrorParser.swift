//
//  EventSourceAPIErrorParser.swift
//  
//
//  Created by Grigory Serebryanyy on 27.10.2023.
//

import Foundation

public protocol EventSourceErrorParser {
  mutating
  func append(byte: UInt8)
  mutating
  func append(bytes: [UInt8])
  mutating
  func extractError() throws
}

public struct EventSourceDecodableErrorParser<Error: Swift.Error & Decodable>: EventSourceErrorParser {
  private var buffer = Data()
  private let jsonDecoder = JSONDecoder()
    
  public init() {}
  
  mutating
  public func append(byte: UInt8) {
    buffer.append(byte)
  }
  
  mutating
  public func append(bytes: [UInt8]) {
    buffer.append(contentsOf: bytes)
  }
  
  mutating
  public func extractError() throws  {
      guard let error = try? jsonDecoder.decode(Error.self, from: buffer) else {
          return
      }
      throw error
  }
}
