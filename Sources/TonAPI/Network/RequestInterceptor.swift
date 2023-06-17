//
//  RequestInterceptor.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

protocol RequestInterceptor {
  func intercept(request: Request) async throws -> Request
}
