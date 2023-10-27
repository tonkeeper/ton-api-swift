//
//  EventSource.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

public protocol APIError: Swift.Error & Decodable {}

public struct EventSource {
  public struct Event {
    let id: String?
    let event: String?
    let data: String?
  }
  
  public static func eventSource<Sequence: AsyncSequence>(
    _ closure: () async throws -> Sequence,
    errorParser: EventSourceErrorParser? = nil
  ) async throws -> (AsyncThrowingStream<Event, Swift.Error>)
  where Sequence.Element == ArraySlice<UInt8> {
    let sequence = try await closure()
    try Task.checkCancellation()
    return AsyncThrowingStream<Event, Swift.Error> { continuation in
      Task {
        var parser = EventParser()
        var errorParser = errorParser
        do {
          for try await bytes in sequence {
            errorParser?.append(bytes: Array(bytes))
            try errorParser?.extractError()
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
  }
  
  public static func eventSource<Sequence: AsyncSequence, Entity: Decodable>(
    _ closure: () async throws -> Sequence,
    errorParser: EventSourceErrorParser? = nil
  ) async throws -> (AsyncThrowingStream<Entity, Swift.Error>)
  where Sequence.Element == ArraySlice<UInt8> {
    let eventStream = try await eventSource(
      closure,
      errorParser: errorParser
    )
    return AsyncThrowingStream<Entity, Swift.Error> { continuation in
      Task {
        let decoder = EventSourceMessageDecoder(jsonDecoder: JSONDecoder())
        do {
          for try await event in eventStream {
            switch (event.event, event.data) {
            case ("message", .some(let dataString)):
              guard let model: Entity = try? decoder.decodeEventData(dataString) else {
                continue
              }
              continuation.yield(model)
            default: continue
            }
          }
          continuation.finish()
        } catch let error {
          continuation.finish(throwing: error)
        }
      }
    }
  }
}


