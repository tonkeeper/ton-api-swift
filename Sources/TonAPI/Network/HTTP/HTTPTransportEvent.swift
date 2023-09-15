//
//  HTTPTransportEvent.swift
//  
//
//  Created by Grigory on 15.9.23..
//

import Foundation

public enum HTTPTransportEvent {
  case recieveResponse(HTTPResponse)
  case data(Data)
  case complete(Completion)
  
  public struct Completion {
    let response: HTTPResponse?
    let error: Swift.Error?
  }
}
