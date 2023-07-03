//
//  ResponseBuilder.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct ResponseBuilder {
  public init() {}
    
  func build(with response: HTTPURLResponse, body: Data) -> Response {
    let headers = response.allHeaderFields
      .compactMap { name, value -> (String, String)? in
        guard let name = name as? String,
              let value = value as? String else { return nil }
        return (name, value)
      }
      .map { HTTPHeader(name: $0, value: $1) }
    return Response(statusCode: response.statusCode,
                    headers: headers,
                    body: body)
  }
}
