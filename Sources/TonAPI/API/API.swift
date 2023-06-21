//
//  API.swift
//
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public protocol API {
  func send<Entity: Codable, Request: APIRequest<Entity>>(request: Request) async throws -> APIResponse<Entity>
}

public final class DefaultAPI: API {
  let transport: NetworkTransport
  let baseURL: URL
  let responseDecoder: APIResponseDecoder
  
  public init(transport: NetworkTransport,
              baseURL: URL,
              responseDecoder: APIResponseDecoder) {
    self.transport = transport
    self.baseURL = baseURL
    self.responseDecoder = responseDecoder
  }
  
  public func send<Entity: Codable, Request: APIRequest<Entity>>(request: Request) async throws -> APIResponse<Entity> {
    let response = try await transport.send(
      request: request.request,
      baseURL: baseURL
    )
    
    let apiResponse: APIResponse<Entity> = try responseDecoder.decode(response: response)
    return apiResponse
  }
}
