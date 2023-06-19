//
//  MockURLSession.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation
@testable import TonAPI

final class MockURLSession: URLSessionProtocol {
  
  var mockData: Data = {
    return "".data(using: .utf8)!
  }()
  var mockURLResponse: URLResponse = {
    return HTTPURLResponse(url: URL(string: "https://tonapi.io")!, mimeType: nil, expectedContentLength: 0, textEncodingName: nil)
  }()
  var inputRequest: URLRequest?
  
  func data(for request: URLRequest,
            delegate: URLSessionTaskDelegate?) async throws -> (Data, URLResponse) {
    inputRequest = request
    return (mockData, mockURLResponse)
  }
}
