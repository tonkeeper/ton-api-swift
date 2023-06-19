//
//  APIRequestTests.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import XCTest
@testable import TonAPI

final class APIRequestTests: XCTestCase {
  func testAPIRequestToRequestCorrectConvert() {
    
    // GIVEN
    let path = "/test/path"
    let httpMethod = HTTPMethod.PUT
    let headers: [HTTPHeader] = [
      .init(name: "FirstHeaderName", value: "FirstHeaderValue"),
      .init(name: "SecondHeaderName", value: "SecondHeaderValue")
    ]
    let queryItems: [URLQueryItem] = [
      .init(name: "firstQueryItemKey", value: "firstQueryItemValue")
    ]
    
    let bodyParameters: HTTPParameters = [:]
    
    let apiRequest = MockAPIRequest<String>(
      path: path,
      httpMethod: httpMethod,
      headers: headers,
      queryItems: queryItems,
      bodyParameters: bodyParameters
    )
    
    // WHEN
    let request = apiRequest.request
    
    // THEN
    XCTAssertEqual(request.path, path)
    XCTAssertEqual(request.method, httpMethod)
    XCTAssertEqual(request.headers, headers)
    XCTAssertEqual(request.queryItems, queryItems)
    XCTAssertTrue(request.bodyParameter.isEmpty)
  }
}
