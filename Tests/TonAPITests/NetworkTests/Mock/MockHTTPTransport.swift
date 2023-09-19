//
//  MockURLSession.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation
@testable import TonAPI

final class MockHTTPTransport: HTTPTransport {
  
  var mockData: Data = {
    return "".data(using: .utf8)!
  }()
  var mockURLResponse: URLResponse = {
    return HTTPURLResponse(url: URL(string: "https://tonapi.io")!, mimeType: nil, expectedContentLength: 0, textEncodingName: nil)
  }()
  var inputRequest: URLRequest?
  
  func send(request: URLRequest) async throws -> (Data, URLResponse) {
    inputRequest = request
    return (mockData, mockURLResponse)
  }
  
  func send(request: URLRequest, handler: @escaping (HTTPTransportEvent) -> Void) -> HTTPTransportTask {
    HTTPTransportTask(identifier: 1, httpResponse: { return nil })
  }
  
  func cancelTask(_ task: HTTPTransportTask) {}
}
