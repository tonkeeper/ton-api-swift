//
//  NoConnectionError.swift
//
//
//  Created by Grigory on 17.8.23..
//

import Foundation

public extension Swift.Error {
  var isNoConnectionError: Bool {
    guard let transportError = self as? URLSessionTransport.Error else {
      return (self as NSError).code == URLError.Code.notConnectedToInternet.rawValue
    }
    return transportError.isNoConnectionError
  }
}

public extension Swift.Error where Self == URLSessionTransport.Error {
  var isNoConnectionError: Bool {
    switch self {
    case .noConnection: return true
    default: return false
    }
  }
}
