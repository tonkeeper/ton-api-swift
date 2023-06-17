//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation
@testable import TonAPI

final class MockRequestInterceptor: RequestInterceptor {
  
  var additionalHeaders = [HTTPHeader]()
  
  func intercept(request: Request) async throws -> Request {
    var request = request
    request.headers.append(contentsOf: additionalHeaders)
    return request
  }
}
