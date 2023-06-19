//
//  APIResponseError.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import Foundation

enum APIResponseError: Swift.Error, Equatable {
  case badRequest(error: APIError)
  case unauthorized(error: APIError)
  case notFound(error: APIError)
  case internalServerError(error: APIError)
  case undocumented(error: APIError)
  case invalidResponse(_ response: Response)
}
