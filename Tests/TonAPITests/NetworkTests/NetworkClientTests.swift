//
//  NetworkClientTests.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import XCTest
@testable import TonAPI

final class NetworkClientTests: XCTestCase {
  let baseURL = URL(string: "https://tonapi.io")!
  let requestBuilder = URLRequestBuilder()
  
  let mockTransport = MockHTTPTransport()
  
  func testURLSessionUseInterceptorsToUpdateRequest() async throws {
    let interceptorOne = MockRequestInterceptor()
    interceptorOne.additionalHeaders = [
      .init(name: "InterceptorOneName", value: "InterceptorOneValue")
    ]
    
    let interceptorTwo = AsyncMockRequestInterceptor()
    interceptorTwo.additionalHeaders = [
      .init(name: "InterceptorTwoName", value: "InterceptorTwoValue")
    ]
    
    let networkClient = NetworkClient(
      httpTransport: mockTransport,
      urlRequestBuilder: requestBuilder,
      requestInterceptors: [interceptorOne, interceptorTwo]
    )
    
    let emptyRequest = Request(
      path: "",
      method: .GET,
      headers: [],
      queryItems: [],
      bodyParameter: [:]
    )
    
    _ = try await networkClient.send(request: emptyRequest, hostURL: baseURL)
    
    let resultHeaders = [
      "InterceptorOneName":"InterceptorOneValue",
      "InterceptorTwoName":"InterceptorTwoValue"
    ]
    
    XCTAssertEqual(mockTransport.inputRequest?.allHTTPHeaderFields,
                   resultHeaders)
  }
}
