//
//  BytesAccumulator.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

actor BytesAccumulator: BytesProvider {
  var dataBuffers = [Data]()
  var currentOffset: Int = 0
  var result: Result<Void, Swift.Error>? = nil {
    didSet {
      if let continuation = continuation {
        switch result {
        case .none:                 return
        case .success:              continuation.resume(returning: nil)
        case .failure(let error):   continuation.resume(throwing: error)
        }
      }
      continuation = nil
    }
  }
  
  var continuation: CheckedContinuation<UInt8?, Swift.Error>?

  func setResult(result: Result<Void, Swift.Error>?) {
    self.result = result
  }
  
  func addData(_ data: Data) {
    guard !data.isEmpty else { return }
    dataBuffers.append(data)
    
    if let continuation = continuation {
      let nextByte = data[currentOffset]
      currentOffset += 1
      if currentOffset >= data.count {
        currentOffset = 0
        dataBuffers.removeFirst()
      }
      continuation.resume(returning: nextByte)
      self.continuation = nil
    }
  }
  
  @usableFromInline
  func next() async throws -> UInt8? {
    if let first = dataBuffers.first {
      let byte = first[currentOffset]
      currentOffset += 1
      if currentOffset >= first.count {
          currentOffset = 0
        dataBuffers.removeFirst()
      }
      return byte
    }
    
    if let result = result {
      switch result {
      case .success: return nil
      case .failure(let error): throw error
      }
    } else {
      return try await withCheckedThrowingContinuation { continuation in
        self.continuation = continuation
      }
    }
  }
}
