//
//  ResponseBuilderTests.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import XCTest
@testable import TonAPI

final class ResponseBuilderTests: XCTestCase {
  let responseBuilder = ResponseBuilder()

  func testBuildResponse() {
    let headers = ["HeaderName1": "HeaderValue1", "HeaderName2": "HeaderValue2"]
    let statusCode = 200
    let body = "{\"error\": \"Some error text\"}".data(using: .utf8)!
    let httpResponse = HTTPURLResponse(
      url: URL(string: "https://tonapi.io")!,
      statusCode: statusCode,
      httpVersion: nil,
      headerFields: headers
    )!
    
    let resultHeaders: [HTTPHeader] = [
      .init(name: "HeaderName1", value: "HeaderValue1"),
      .init(name: "HeaderName2", value: "HeaderValue2")
    ]
      .sorted(by: { $0.name < $1.name })
    
    let response = responseBuilder.build(with: httpResponse, body: body)
    XCTAssertEqual(response.statusCode, statusCode)
    XCTAssertEqual(response.headers.sorted(by: {$0.name < $1.name }), resultHeaders)
    XCTAssertEqual(response.body, body)
  }
}
