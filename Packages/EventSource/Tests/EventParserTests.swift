import XCTest
@testable import EventSource

/// `extractEvents` is called after every append and keeps a scan offset so a buffer is not
/// rescanned from the start. These cover the cases that offset can get wrong: a delimeter split
/// across appends, and the offset surviving an extraction that shortens the buffer.
final class EventParserTests: XCTestCase {
  private func feed(_ parser: inout EventParser, _ text: String) -> [EventSource.Event] {
    parser.append(bytes: Array(text.utf8))
    return parser.extractEvents()
  }

  func testEventIsExtractedFromSingleAppend() {
    var parser = EventParser()
    let events = feed(&parser, "event: message\ndata: hello\n\n")
    XCTAssertEqual(events.count, 1)
    XCTAssertEqual(events.first?.event, "message")
    XCTAssertEqual(events.first?.data, "hello")
  }

  func testEventIsExtractedWhenAppendedByteByByte() {
    var parser = EventParser()
    let text = "id: 7\nevent: message\ndata: hello\n\n"
    var collected = [EventSource.Event]()
    for byte in Array(text.utf8) {
      parser.append(byte: byte)
      collected.append(contentsOf: parser.extractEvents())
    }
    XCTAssertEqual(collected.count, 1)
    XCTAssertEqual(collected.first?.id, "7")
    XCTAssertEqual(collected.first?.data, "hello")
  }

  func testDelimeterSplitAcrossAppendsIsFound() {
    var parser = EventParser()
    XCTAssertTrue(feed(&parser, "data: hello\r\n").isEmpty)
    let events = feed(&parser, "\r\n")
    XCTAssertEqual(events.count, 1)
    XCTAssertEqual(events.first?.data, "hello")
  }

  func testDelimeterSplitOneByteBeforeItsEndIsFound() {
    var parser = EventParser()
    XCTAssertTrue(feed(&parser, "data: hello\r\n\r").isEmpty)
    let events = feed(&parser, "\n")
    XCTAssertEqual(events.count, 1)
    XCTAssertEqual(events.first?.data, "hello")
  }

  func testEventAfterAnExtractionIsStillFound() {
    var parser = EventParser()
    XCTAssertEqual(feed(&parser, "data: first\n\n").count, 1)
    XCTAssertTrue(feed(&parser, "data: sec").isEmpty)
    let events = feed(&parser, "ond\n\n")
    XCTAssertEqual(events.count, 1)
    XCTAssertEqual(events.first?.data, "second")
  }

  func testMultipleEventsInOneAppend() {
    var parser = EventParser()
    let events = feed(&parser, "data: one\n\ndata: two\n\ndata: three\n\n")
    XCTAssertEqual(events.compactMap(\.data), ["one", "two", "three"])
  }

  func testEarliestDelimeterWinsOverALaterOtherKind() {
    var parser = EventParser()
    let events = feed(&parser, "data: one\n\ndata: two\r\n\r\n")
    XCTAssertEqual(events.compactMap(\.data), ["one", "two"])
  }

  func testTrailingPartialEventIsNotEmitted() {
    var parser = EventParser()
    XCTAssertTrue(feed(&parser, "data: hello\n").isEmpty)
  }
}
