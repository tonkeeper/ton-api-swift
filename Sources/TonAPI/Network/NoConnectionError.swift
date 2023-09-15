//
//  NoConnectionError.swift
//
//
//  Created by Grigory on 17.8.23..
//

import Foundation

public extension Swift.Error {
  var isNoConnectionError: Bool {
    guard let transportError = self as? NetworkClient.Error else {
      return (self as NSError).code == URLError.Code.notConnectedToInternet.rawValue
    }
    return transportError.isNoConnectionError
  }
}

public extension Swift.Error where Self == NetworkClient.Error {
  var isNoConnectionError: Bool {
    switch self {
    case .noConnection: return true
    default: return false
    }
  }
}
