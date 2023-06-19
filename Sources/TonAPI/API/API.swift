//
//  API.swift
//
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public final class API {
  
  public enum Version {
    case v2
  }
  
  let transport: NetworkTransport
  let baseURL: URL
  let version: Version
  let responseDecoder: APIResponseDecoder
  
  public init(transport: NetworkTransport,
              baseURL: URL,
              version: Version,
              responseDecoder: APIResponseDecoder) {
    self.transport = transport
    self.baseURL = baseURL
    self.version = version
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
