//
//  DefaultURLRequestBuilderTests.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import XCTest
@testable import TonAPI

final class URLRequestBuilderTests: XCTestCase {
  
  let requestBuilder = URLRequestBuilder()
  let baseURL = URL(string: "https://tonapi.io/")!
  
  func testBuildGetURLRequestOnlyWithBaseURL() throws {
    let request = Request(
      path: "",
      method: .GET,
      headers: [],
      queryItems: [],
      bodyParameter: [:]
    )
  
    let urlRequest = try requestBuilder.build(with: request, baseURL: baseURL)
    XCTAssertEqual(urlRequest.url, baseURL.absoluteURL)
    XCTAssertEqual(urlRequest.httpMethod, "GET")
    XCTAssertEqual(urlRequest.allHTTPHeaderFields, [:])
    XCTAssertNil(urlRequest.httpBody)
  }
  
  func testBuildGetURLRequestWithQueryItems() throws {
    let request = Request(
      path: "",
      method: .GET,
      headers: [],
      queryItems: [.init(name: "id", value: "1"), .init(name: "id", value: "2")],
      bodyParameter: [:]
    )
    
    let urlString = "\(baseURL.absoluteString)?id=1&id=2"

    let urlRequest = try requestBuilder.build(with: request, baseURL: baseURL)
    XCTAssertEqual(urlRequest.url?.absoluteString, urlString)
    XCTAssertEqual(urlRequest.httpMethod, "GET")
    XCTAssertEqual(urlRequest.allHTTPHeaderFields, [:])
    XCTAssertNil(urlRequest.httpBody)
  }
  
  func testBuildGetURLRequestWithHeaders() throws {
    let request = Request(
      path: "",
      method: .GET,
      headers: [.init(name: "Bearer", value: "Hello"), .init(name: "Accept-Content", value: "application/json")],
      queryItems: [],
      bodyParameter: [:]
    )
    
    let headers = ["Bearer":"Hello", "Accept-Content":"application/json"]

    let urlRequest = try requestBuilder.build(with: request, baseURL: baseURL)
    XCTAssertEqual(urlRequest.url, baseURL.absoluteURL)
    XCTAssertEqual(urlRequest.httpMethod, "GET")
    XCTAssertEqual(urlRequest.allHTTPHeaderFields, headers)
    XCTAssertNil(urlRequest.httpBody)
  }
  
  func testBuildGetURLRequestWithBody() throws {
    let bodyString = "{\"appName\":\"TonAPI\"}"
    let bodyData = bodyString.data(using: .utf8)
    
    let request = Request(
      path: "",
      method: .GET,
      headers: [],
      queryItems: [],
      bodyParameter: ["appName": "TonAPI"]
    )
    
    let urlRequest = try requestBuilder.build(with: request, baseURL: baseURL)
    XCTAssertEqual(urlRequest.url, baseURL.absoluteURL)
    XCTAssertEqual(urlRequest.httpMethod, "GET")
    XCTAssertEqual(urlRequest.allHTTPHeaderFields, ["Content-Type":"application/json"])
    XCTAssertEqual(urlRequest.httpBody, bodyData)
  }
  
  func testBuildGetURLRequestWithQueyItemsAndHeadersAndBody() throws {
    let bodyString = "{\"appName\":\"TonAPI\"}"
    let bodyData = bodyString.data(using: .utf8)
    
    let request = Request(
      path: "",
      method: .GET,
      headers: [.init(name: "Bearer", value: "Hello")],
      queryItems: [.init(name: "id", value: "1"), .init(name: "id", value: "2")],
      bodyParameter: ["appName": "TonAPI"]
    )
    
    let urlString = "\(baseURL.absoluteString)?id=1&id=2"
    let headers = ["Bearer":"Hello", "Content-Type":"application/json"]
    
    let urlRequest = try requestBuilder.build(with: request, baseURL: baseURL)
    XCTAssertEqual(urlRequest.url?.absoluteString, urlString)
    XCTAssertEqual(urlRequest.httpMethod, "GET")
    XCTAssertEqual(urlRequest.allHTTPHeaderFields, headers)
    XCTAssertEqual(urlRequest.httpBody, bodyData)
  }
  
  func testBuildPostURLRequestWithBodyParameters() throws {
    // GIVEN
    let bodyString = """
    {"boc":"te6ccgECBQEAARUAAkWIAWTtae+KgtbrX26Bep8JSq8lFLfGOoyGR/xwdjfvpvEaHg"}
    """
    let bodyData = bodyString.data(using: .utf8)
    let bodyParameters = ["boc":"te6ccgECBQEAARUAAkWIAWTtae+KgtbrX26Bep8JSq8lFLfGOoyGR/xwdjfvpvEaHg"]
    let request = Request(
      path: "",
      method: .POST,
      headers: [],
      queryItems: [],
      bodyParameter: bodyParameters
    )
    
    // WHEN
    let urlRequest = try requestBuilder.build(with: request, baseURL: baseURL)
    
    // THEN
    XCTAssertEqual(urlRequest.httpBody, bodyData)
  }
}
