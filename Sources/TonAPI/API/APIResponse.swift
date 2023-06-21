//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct APIResponse<Entity: Decodable> {
  public let response: Response
  public let entity: Entity
    
  public init(response: Response,
              entity: Entity) {
    self.response = response
    self.entity = entity
  }
}
