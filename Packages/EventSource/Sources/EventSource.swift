//
//  EventSource.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

public struct EventSource {
  public struct Event {
    let id: String?
    let event: String?
    let data: String?
  }
  
  public static func eventSource<Sequence: AsyncSequence>(_ closure: () async throws -> (Sequence))
  async throws -> (AsyncThrowingStream<Event, Swift.Error>
  ) where Sequence.Element == ArraySlice<UInt8> {
    let sequence = try await closure()
    try Task.checkCancellation()
    let parser = EventParser()
    let stream = AsyncThrowingStream<Event, Swift.Error> { continuation in
      Task {
        do {
          for try await bytes in sequence {
            parser.append(bytes: Array(bytes))
            let events = parser.extractEvents()
            events.forEach { continuation.yield($0) }
          }
          continuation.finish()
        } catch {
          continuation.finish(throwing: error)
        }
      }
    }
    return stream
  }
}
