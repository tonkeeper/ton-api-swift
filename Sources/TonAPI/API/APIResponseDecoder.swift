//
//  File.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

public struct APIResponseDecoder {
  let jsonDecoder: JSONDecoder
  
  public init(jsonDecoder: JSONDecoder) {
    self.jsonDecoder = jsonDecoder
  }
  
  func decode(response: HTTPResponse, data: Data) throws -> APIResponse<EmptyResponse> {
    switch response.statusCode {
    case 200..<300:
      return try decodeEntity(response: response)
    default:
      throw decodeError(response: response, data: data)
    }
  }
  
  func decode<Entity: Decodable>(response: HTTPResponse, data: Data) throws -> APIResponse<Entity> {
    switch response.statusCode {
    case 200..<300:
      return try decodeEntity(response: response, data: data)
    default:
      throw decodeError(response: response, data: data)
    }
  }
  
  private func decodeEntity<Entity: Decodable>(response: HTTPResponse, data: Data) throws -> APIResponse<Entity> {
    do {
        let entity = try jsonDecoder.decode(Entity.self, from: data)
      return .init(response: response, entity: entity)
    } catch {
      throw APIResponseError.invalidResponse(response)
    }
  }
  
  private func decodeEntity(response: HTTPResponse) throws -> APIResponse<EmptyResponse> {
    return .init(response: response, entity: EmptyResponse())
  }
  
  private func decodeError(response: HTTPResponse, data: Data) -> APIResponseError {
    let apiError: APIError
    do {
      apiError = try jsonDecoder.decode(APIError.self, from: data)
    } catch {
      apiError = APIError(error: "Invalid error body format")
    }
    
    switch response.statusCode {
    case 400:
      return .badRequest(error: apiError)
    case 401:
      return .unauthorized(error: apiError)
    case 404:
      return .notFound(error: apiError)
    case 500:
      return .internalServerError(error: apiError)
    default:
      return .undocumented(error: apiError)
    }
  }
}
