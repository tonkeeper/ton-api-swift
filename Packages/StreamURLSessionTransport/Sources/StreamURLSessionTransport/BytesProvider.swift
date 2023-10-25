//
//  BytesProvider.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

protocol BytesProvider {
  mutating func next() async throws -> UInt8?
}

@available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
extension URLSession.AsyncBytes.Iterator: BytesProvider {}
