//
//  StreamingAPI.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public protocol StreamingAPI {
  func stream<Entity: Codable, Request: StreamingAPIRequest<Entity>>(request: Request)
  async throws -> (AsyncThrowingStream<Entity, Swift.Error>, HTTPResponse)
}

public final class DefaultStreamingAPI: StreamingAPI {
  enum Error: Swift.Error {
    case failed(statusCode: Int)
  }
  
  let eventSource: EventSource
  let baseURL: URL
  let decoder: StreamingAPIDecoder
  
  public init(eventSource: EventSource,
              baseURL: URL,
              decoder: StreamingAPIDecoder) {
    self.eventSource = eventSource
    self.baseURL = baseURL
    self.decoder = decoder
  }
  
  public func stream<Entity: Codable, Request: StreamingAPIRequest<Entity>>(request: Request)
  async throws -> (AsyncThrowingStream<Entity, Swift.Error>, HTTPResponse) {
    let (eventSourceStream, response) = try await eventSource.eventStream(request: request.request, hostURL: baseURL)
    try Task.checkCancellation()
    let stream = AsyncThrowingStream<Entity, Swift.Error> { continuation in
      let task = Task {
        do {
          try validateResponse(response)
          for try await event in eventSourceStream {
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

private extension DefaultStreamingAPI {
  func validateResponse(_ response: HTTPResponse) throws {
    guard (200..<300).contains(response.statusCode) else {
      throw Error.failed(statusCode: response.statusCode)
    }
  }
}


