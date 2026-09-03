//
//  StreamURLSessionTransportTests.swift
//

@testable import StreamURLSessionTransport
import XCTest

final class StreamURLSessionTransportTests: XCTestCase {
  private func makeTransport() -> StreamURLSessionTransport {
    let configuration = URLSessionConfiguration.ephemeral
    configuration.protocolClasses = [StubURLProtocol.self]
    return StreamURLSessionTransport(urlSession: URLSession(configuration: configuration))
  }

  /// Cancelling the surrounding `Task` finishes the response stream with `nil` rather than an error:
  /// `AsyncThrowingStream`'s own cancellation handler resumes the pending continuation immediately,
  /// long before ours can round-trip through the loader and let the delegate finish the stream. That
  /// `nil` must not be read as "the response never arrived".
  func testCancellationBeforeResponseThrowsCancellationError() async {
    let transport = makeTransport()
    let request = URLRequest(url: StubURLProtocol.never)

    let task = Task { try await transport.send(request: request) }
    task.cancel()

    do {
      _ = try await task.value
      XCTFail("Expected the cancelled request to throw")
    } catch is CancellationError {
      // Expected.
    } catch {
      XCTFail("Expected CancellationError, got \(error)")
    }
  }

  func testResponseIsDeliveredAndBodyKeepsItsByteOrder() async throws {
    let transport = makeTransport()
    let (bytes, response) = try await transport.send(request: URLRequest(url: StubURLProtocol.chunked))

    XCTAssertEqual(response.statusCode, 200)

    var received = [UInt8]()
    for try await chunk in bytes {
      received.append(contentsOf: chunk)
    }
    // Where the loader splits the body is its own business, so only the byte order is asserted.
    XCTAssertEqual(received, Array(StubURLProtocol.payload))
  }

  /// A non-HTTP response is refused with `.cancel`, which used to leave the awaiting caller with no
  /// resumption on any path and hang it for good.
  func testNonHTTPResponseThrowsInsteadOfHanging() async {
    let transport = makeTransport()

    do {
      _ = try await transport.send(request: URLRequest(url: StubURLProtocol.nonHTTP))
      XCTFail("Expected a non-HTTP response to throw")
    } catch URLSessionTransportError.notHTTPResponse {
      // Expected.
    } catch {
      XCTFail("Expected notHTTPResponse, got \(error)")
    }
  }

  /// A failure that arrives after the response has been delivered must reach the caller through the
  /// body stream only, leaving the already-handed-over response alone — the delegate relies on
  /// `finish` after `finish` being a no-op for that, which is the one thing standing in for a lock.
  ///
  /// Driven through the delegate rather than a stubbed loader: what a `URLProtocol` failure does to
  /// a response it has already queued is CFNetwork's business, and it does not deliver the pair in
  /// this order at all.
  func testCompletionAfterAResponseTerminatesOnlyTheBodyStream() async throws {
    var responseContinuation: AsyncThrowingStream<HTTPURLResponse, Error>.Continuation!
    let responses = AsyncThrowingStream<HTTPURLResponse, Error> { responseContinuation = $0 }
    var bytesContinuation: AsyncBytes.Continuation!
    let bytes = AsyncBytes { bytesContinuation = $0 }

    let session = URLSession(configuration: .ephemeral)
    let dataTask = session.dataTask(with: URLRequest(url: StubURLProtocol.chunked))
    let delegate = StreamTaskDelegate(response: responseContinuation, bytes: bytesContinuation)

    let httpResponse = HTTPURLResponse(
      url: StubURLProtocol.chunked,
      statusCode: 200,
      httpVersion: "HTTP/1.1",
      headerFields: nil
    )!
    delegate.urlSession(session, dataTask: dataTask, didReceive: httpResponse) { _ in }
    delegate.urlSession(session, dataTask: dataTask, didReceive: Data([1, 2, 3]))
    delegate.urlSession(session, task: dataTask, didCompleteWithError: URLError(.networkConnectionLost))

    var iterator = responses.makeAsyncIterator()
    let deliveredResponse = try await iterator.next()
    XCTAssertEqual(deliveredResponse?.statusCode, 200)

    var received = [UInt8]()
    do {
      for try await chunk in bytes {
        received.append(contentsOf: chunk)
      }
      XCTFail("Expected the body stream to throw")
    } catch let error as URLError {
      XCTAssertEqual(error.code, .networkConnectionLost)
    }
    XCTAssertEqual(received, [1, 2, 3])
  }
}
