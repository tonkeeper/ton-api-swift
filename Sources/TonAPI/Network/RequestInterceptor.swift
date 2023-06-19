//
//  RequestInterceptor.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public protocol RequestInterceptor {
  func intercept(request: Request) async throws -> Request
}
