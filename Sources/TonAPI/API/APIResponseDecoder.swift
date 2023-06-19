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
  
  func decode<Entity: Decodable>(response: Response) throws -> APIResponse<Entity> {
    switch response.statusCode {
    case 200..<300:
      return try decodeEntity(response: response)
    default:
      throw decodeError(response: response)
    }
  }
  
  private func decodeEntity<Entity: Decodable>(response: Response) throws -> APIResponse<Entity> {
    do {
      let entity = try jsonDecoder.decode(Entity.self, from: response.body)
      return .init(response: response, entity: entity)
    } catch {
      throw APIResponseError.invalidResponse(response)
    }
  }
  
  private func decodeError(response: Response) -> APIResponseError {
    let apiError: APIError
    do {
      apiError = try jsonDecoder.decode(APIError.self, from: response.body)
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
