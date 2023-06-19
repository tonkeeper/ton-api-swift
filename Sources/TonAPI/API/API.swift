//
//  API.swift
//
//
//  Created by Grigory on 17.6.23..
//

import Foundation

final class API {
  
  enum Version {
    case v2
  }
  
  let transport: NetworkTransport
  let baseURL: URL
  let version: Version
  
  init(transport: NetworkTransport,
       baseURL: URL,
       version: Version) {
    self.transport = transport
    self.baseURL = baseURL
    self.version = version
  }
  
  func send<Entity: Codable>(request: APIRequest) async throws -> APIResponse<Entity> {
    // TBD: make request with transport
    // TBD: decode response to Entity
    // TBD: create APIResponse and return
    let model = try JSONDecoder().decode(Entity.self, from: Data())
    return APIResponse(response: Response(statusCode: 0, headers: [], body: Data()), entity: model)
  }
}
