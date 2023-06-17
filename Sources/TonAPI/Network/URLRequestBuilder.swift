//
//  URLRequestBuilder.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

struct URLRequestBuilder {
  enum Error: Swift.Error {
    case invalidURL
  }
  
  func build(
    with request: Request,
    baseURL: URL
  ) throws -> URLRequest {
    guard var components = URLComponents(string: baseURL.absoluteString) else {
      throw Error.invalidURL
    }
    components.path += request.path
    if !request.queryItems.isEmpty {
      components.queryItems = request.queryItems
    }
    guard let url = components.url else {
      throw Error.invalidURL
    }
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = request.method.name
    request.headers.forEach {
      urlRequest.addValue($0.value, forHTTPHeaderField: $0.name)
    }
    urlRequest.httpBody = request.body
    return urlRequest
  }
}
