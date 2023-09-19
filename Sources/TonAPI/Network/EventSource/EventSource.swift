//
//  EventSource.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public final class EventSource {
  public struct Event {
    let id: String?
    let event: String?
    let data: String?
  }
  
  private let networkClient: NetworkClient
  
  public init(networkClient: NetworkClient) {
    self.networkClient = networkClient
  }
  
  public func eventStream(request: Request, hostURL: URL) async throws -> (AsyncThrowingStream<Event, Swift.Error>, HTTPResponse) {
    let parser = EventSourceParser()
    let (asyncBytes, response) = try await networkClient.bytes(request: request, hostURL: hostURL)
    try Task.checkCancellation()
    let stream = AsyncThrowingStream<Event, Swift.Error> { continuation in
      let task = Task {
        do {
          for try await byte in asyncBytes {
            parser.append(byte: byte)
            let events = parser.extractEvents()
            events.forEach { continuation.yield($0) }
          }
          continuation.finish()
        } catch {
          continuation.finish(throwing: error)
        }
      }
      
      continuation.onTermination = { status in
        task.cancel()
      }
    }
    return (stream, response)
  }
}
