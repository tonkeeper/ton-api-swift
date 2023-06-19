//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation
@testable import TonAPI

final class AsyncMockRequestInterceptor: RequestInterceptor {
  
  var additionalHeaders = [HTTPHeader]()
  
  func intercept(request: Request) async throws -> Request {
    var request = request
    let headers = await getHeaders()
    request.headers.append(contentsOf: headers)
    return request
  }
  
  func getHeaders() async  -> [HTTPHeader] {
    sleep(2)
    return additionalHeaders
  }
}
