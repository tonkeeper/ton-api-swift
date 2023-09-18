//
//  File.swift
//
//
//  Created by Grigory on 15.9.23..
//

import Foundation

protocol BytesProvider {
  mutating func next() async throws -> UInt8?
}

@available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
extension URLSession.AsyncBytes.Iterator: BytesProvider {}

public final class AsyncBytes: AsyncSequence {
  public typealias AsyncIterator = Iterator
  public typealias Element = UInt8
  
  var bytesProvider: BytesProvider
  let task: HTTPTransportTask
  
  init(bytesProvider: BytesProvider, task: HTTPTransportTask) {
    self.bytesProvider = bytesProvider
    self.task = task
  }
  
  @available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
  init(_ asyncBytes: URLSession.AsyncBytes, task: HTTPTransportTask) {
      self.task = task
      self.bytesProvider = asyncBytes.makeAsyncIterator()
  }
  
  public struct Iterator: AsyncIteratorProtocol {
    
    public typealias Element = UInt8
    
    var bytesProvider: BytesProvider
    
    public mutating func next() async throws -> UInt8? {
      try await bytesProvider.next()
    }
  }
  
  public func makeAsyncIterator() -> Iterator {
    Iterator(bytesProvider: bytesProvider)
  }
}

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
