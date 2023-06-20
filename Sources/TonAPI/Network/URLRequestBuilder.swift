//
//  URLRequestBuilder.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct URLRequestBuilder {
  enum Error: Swift.Error {
    case invalidURL
  }
    
  public init() {}
  
  public func build(
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
    
    try? encodeJSON(parameters: request.bodyParameter, urlRequest: &urlRequest)
    
    return urlRequest
  }
}

private extension URLRequestBuilder {
  func encodeJSON(parameters: HTTPParameters, urlRequest: inout URLRequest) throws {
    guard !parameters.isEmpty else { return }
    let body = try JSONSerialization.data(withJSONObject: parameters, options: [.sortedKeys, .withoutEscapingSlashes])
    urlRequest.httpBody = body
    setJSONContentType(urlRequest: &urlRequest)
  }
  
  func setJSONContentType(urlRequest: inout URLRequest) {
    guard urlRequest.value(forHTTPHeaderField: .contentType) == nil else { return }
    urlRequest.setValue(.applicationJSON, forHTTPHeaderField: .contentType)
  }
}

private extension String {
    static let contentType = "Content-Type"
    static let applicationJSON = "application/json"
}
