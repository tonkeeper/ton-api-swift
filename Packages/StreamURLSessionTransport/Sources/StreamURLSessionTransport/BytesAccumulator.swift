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
  
  var continuation: CheckedContinuation<[UInt8]?, Swift.Error>?

  func setResult(result: Result<Void, Swift.Error>?) {
    self.result = result
  }
  
  func addData(_ data: Data) {
    guard !data.isEmpty else { return }
    if let continuation = continuation {
      continuation.resume(returning: [UInt8](data))
      self.continuation = nil
      return
    }
    
    dataBuffers.append(data)
  }
  
  @usableFromInline
  func next() async throws -> [UInt8]? {
    if let first = dataBuffers.first {
      dataBuffers.removeFirst()
      return [UInt8](first)
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
