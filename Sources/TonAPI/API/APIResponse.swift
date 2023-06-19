//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

struct APIResponse<Entity: Codable> {
  let response: Response
  let entity: Entity
}
