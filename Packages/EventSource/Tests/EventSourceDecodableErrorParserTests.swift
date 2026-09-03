import XCTest
@testable import EventSource

private struct StubError: Swift.Error, Decodable, Equatable {
  let message: String
}

final class EventSourceDecodableErrorParserTests: XCTestCase {
  private let errorBody = #"{"message":"boom"}"#

  func testErrorBodyIsThrown() {
    var parser = EventSourceDecodableErrorParser<StubError>()
    parser.append(bytes: Array(errorBody.utf8))
    XCTAssertThrowsError(try parser.extractError()) { error in
      XCTAssertEqual(error as? StubError, StubError(message: "boom"))
    }
  }

  func testErrorBodySplitAcrossAppendsIsThrown() {
    var parser = EventSourceDecodableErrorParser<StubError>()
    let bytes = Array(errorBody.utf8)
    parser.append(bytes: Array(bytes[0 ..< 8]))
    XCTAssertNoThrow(try parser.extractError())
    parser.append(bytes: Array(bytes[8...]))
    XCTAssertThrowsError(try parser.extractError())
  }

  func testEventStreamBodyThrowsNothing() {
    var parser = EventSourceDecodableErrorParser<StubError>()
    parser.append(bytes: Array("data: {\"message\":\"boom\"}\n\n".utf8))
    XCTAssertNoThrow(try parser.extractError())
  }

  /// A stream that is not an error body must stop being buffered: the TonConnect bridge stays open
  /// for the whole session, so an uncapped buffer keeps every byte it ever delivered.
  func testBufferingStopsAtTheCap() {
    let limit = EventSourceDecodableErrorParser<StubError>.bufferLimit
    var parser = EventSourceDecodableErrorParser<StubError>()
    parser.append(bytes: Array(repeating: UInt8(ascii: "x"), count: limit - 1))
    XCTAssertFalse(parser.isBufferCapped)
    parser.append(byte: UInt8(ascii: "x"))
    XCTAssertTrue(parser.isBufferCapped)
  }

  func testCappedParserIgnoresFurtherBytes() {
    var parser = EventSourceDecodableErrorParser<StubError>()
    parser.append(bytes: Array(repeating: UInt8(ascii: "x"), count: EventSourceDecodableErrorParser<StubError>.bufferLimit))
    parser.append(bytes: Array(errorBody.utf8))
    XCTAssertTrue(parser.isBufferCapped)
    XCTAssertNoThrow(try parser.extractError())
  }

  /// The append that crosses the limit must keep its bytes: `extractError` runs right after it, and
  /// dropping them there would silently swallow an error body that ended exactly at the limit.
  func testErrorBodyCompletingAtTheCapIsStillThrown() {
    let padding = String(repeating: "a", count: EventSourceDecodableErrorParser<StubError>.bufferLimit)
    var parser = EventSourceDecodableErrorParser<StubError>()
    parser.append(bytes: Array(#"{"message":"\#(padding)"}"#.utf8))
    XCTAssertTrue(parser.isBufferCapped)
    XCTAssertThrowsError(try parser.extractError()) { error in
      XCTAssertEqual((error as? StubError)?.message, padding)
    }
  }

  func testCappedBufferIsReleasedOnTheNextAppend() {
    let padding = String(repeating: "a", count: EventSourceDecodableErrorParser<StubError>.bufferLimit)
    var parser = EventSourceDecodableErrorParser<StubError>()
    parser.append(bytes: Array(#"{"message":"\#(padding)"}"#.utf8))
    XCTAssertThrowsError(try parser.extractError())
    parser.append(byte: UInt8(ascii: "x"))
    XCTAssertNoThrow(try parser.extractError())
  }
}
