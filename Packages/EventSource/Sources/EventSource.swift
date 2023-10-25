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
    
  public static func eventSource<Sequence: AsyncSequence, Entity: Decodable>(_ closure: () async throws -> (Sequence))
  async throws -> (AsyncThrowingStream<Entity, Swift.Error>
  ) where Sequence.Element == ArraySlice<UInt8> {
    let eventStream = try await eventSource(closure)
    let decoder = StreamingAPIDecoder(jsonDecoder: JSONDecoder())
    let stream = AsyncThrowingStream<Entity, Swift.Error> { continuation in
      Task {
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
      }
    }
    return stream
  }
}

public struct StreamingAPIDecoder {
  enum Error: Swift.Error {
    case failedToDecode
  }
  
  let jsonDecoder: JSONDecoder
  
  public init(jsonDecoder: JSONDecoder) {
    self.jsonDecoder = jsonDecoder
  }
  
  func decodeEventData<Model: Decodable>(_ dataString: String) throws -> Model {
    guard let data = dataString.data(using: .utf8) else {
      throw Error.failedToDecode
    }
    
    return try jsonDecoder.decode(Model.self, from: data)
  }
}
