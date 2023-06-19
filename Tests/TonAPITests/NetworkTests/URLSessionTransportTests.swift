//
//  URLSessionTransportTests.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import XCTest
@testable import TonAPI

final class URLSessionTransportTests: XCTestCase {
  let baseURL = URL(string: "https://tonapi.io")!
  let requestBuilder = URLRequestBuilder()
  let responseBuilder = ResponseBuilder()
  
  let mockURLSession = MockURLSession()
  
  func testURLSessionUseInterceptorsToUpdateRequest() async throws {
    let interceptorOne = MockRequestInterceptor()
    interceptorOne.additionalHeaders = [
      .init(name: "InterceptorOneName", value: "InterceptorOneValue")
    ]
    
    let interceptorTwo = AsyncMockRequestInterceptor()
    interceptorTwo.additionalHeaders = [
      .init(name: "InterceptorTwoName", value: "InterceptorTwoValue")
    ]
    
    let urlSessionTransport = URLSessionTransport(
      urlSession: mockURLSession,
      baseURL: baseURL,
      urlRequestBuilder: requestBuilder,
      responseBuilder: responseBuilder,
      requestInterceptors: [interceptorOne, interceptorTwo]
    )
    
    let emptyRequest = Request(
      path: "",
      method: .GET,
      headers: [],
      queryItems: [],
      bodyParameter: [:]
    )
    
    _ = try await urlSessionTransport.send(request: emptyRequest, baseURL: baseURL)
    
    let resultHeaders = [
      "InterceptorOneName":"InterceptorOneValue",
      "InterceptorTwoName":"InterceptorTwoValue"
    ]
    
    XCTAssertEqual(mockURLSession.inputRequest?.allHTTPHeaderFields,
                   resultHeaders)
  }
}
