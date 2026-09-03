//
//  StubURLProtocol.swift
//

import Foundation

/// Drives the transport without a network. What the "server" does is encoded in the request URL, so
/// nothing is shared between tests and they can run in any order.
final class StubURLProtocol: URLProtocol {
  private static let host = "stub.invalid"

  static let never = url("never")
  static let chunked = url("chunked")
  static let nonHTTP = url("non-http")

  static let payload = Data("0123456789abcdef".utf8)
  private static let chunkSize = 4

  private static func url(_ path: String) -> URL {
    URL(string: "http://\(host)/\(path)")!
  }

  override class func canInit(with request: URLRequest) -> Bool {
    request.url?.host == host
  }

  override class func canonicalRequest(for request: URLRequest) -> URLRequest {
    request
  }

  override func startLoading() {
    guard let url = request.url else { return }
    switch url {
    case Self.never:
      // Never responds, so the caller stays suspended until something cancels it.
      break
    case Self.nonHTTP:
      client?.urlProtocol(
        self,
        didReceive: URLResponse(url: url, mimeType: nil, expectedContentLength: -1, textEncodingName: nil),
        cacheStoragePolicy: .notAllowed
      )
    case Self.chunked:
      sendHTTPResponse(for: url)
      sendPayloadChunks()
      client?.urlProtocolDidFinishLoading(self)
    default:
      client?.urlProtocol(self, didFailWithError: URLError(.unsupportedURL))
    }
  }

  override func stopLoading() {}

  private func sendHTTPResponse(for url: URL) {
    let response = HTTPURLResponse(url: url, statusCode: 200, httpVersion: "HTTP/1.1", headerFields: nil)!
    client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
  }

  private func sendPayloadChunks() {
    var offset = Self.payload.startIndex
    while offset < Self.payload.endIndex {
      let end = min(Self.payload.index(offset, offsetBy: Self.chunkSize), Self.payload.endIndex)
      client?.urlProtocol(self, didLoad: Self.payload[offset ..< end])
      offset = end
    }
  }
}
