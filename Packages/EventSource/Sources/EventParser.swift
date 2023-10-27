//
//  EventParser.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

struct EventParser {
  private let newlineCharacters = ["\r\n", "\n", "\r"]
  private lazy var eventsDelimeters: [Data] = {
    newlineCharacters.map { "\($0)\($0)".data(using: .utf8)! }
  }()
  private var buffer = Data()
  
  mutating func append(byte: UInt8) {
    buffer.append(byte)
  }
  
  mutating func append(bytes: [UInt8]) {
    buffer.append(contentsOf: bytes)
  }
  
  mutating func extractEvents() -> [EventSource.Event] {
    var eventsChunks = [Data]()
    while let firstEventDelimeterRange = firstEventDeliemeterRange() {
      let eventChunkRange = buffer.startIndex..<firstEventDelimeterRange.lowerBound
      let eventChunk = buffer[eventChunkRange]
      eventsChunks.append(eventChunk)
      buffer.removeSubrange(buffer.startIndex..<firstEventDelimeterRange.upperBound)
    }
    return eventsChunks.compactMap { parseEvent($0) }
  }
  
  mutating func firstEventDeliemeterRange() -> Range<Data.Index>? {
    for eventDelimeter in eventsDelimeters {
      guard let range = buffer.range(of: eventDelimeter) else {
        continue
      }
      return range
    }
    return nil
  }
  
  func parseEvent(_ chunk: Data) -> EventSource.Event? {
    guard let string = String(data: chunk, encoding: .utf8) else { return nil }
    guard !string.hasPrefix(":") && !string.isEmpty else { return nil }
    
    var event: String?
    var id: String?
    var data: String?
    let lines = string.components(separatedBy: CharacterSet.newlines)
    for line in lines {
      let (key, value) = parseEventLine(line)
      guard let key = key else { continue }
      switch key {
      case "event":
        event = value
      case "id":
        id = value
      case "data":
        data = value
      default:
        continue
      }
    }
    return EventSource.Event(id: id, event: event, data: data)
  }
  
  func parseEventLine(_ line: String) -> (String?, String?) {
    let split = line.split(separator: ":", maxSplits: 1, omittingEmptySubsequences: false)
    guard split.count > 1 else { return (nil, nil) }
    let key = String(split[0])
    var value = String(split[1])
    if value.hasPrefix(" ") { value = String(value.dropFirst()) }
    return (key, value)
  }
}

