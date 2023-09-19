//
//  StreamingAPIRequest.swift
//
//
//  Created by Grigory on 18.9.23..
//

import Foundation

public protocol StreamingAPIRequest<Entity> {
  associatedtype Entity
  var request: Request { get }
}
