//
//  BytesProvider.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

protocol BytesProvider {
  mutating func next() async throws -> [UInt8]?
}
