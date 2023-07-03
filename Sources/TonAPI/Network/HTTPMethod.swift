//
//  HTTPMethod.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public enum HTTPMethod: String {
  case GET
  case PUT
  case POST
  
  var name: String {
    rawValue
  }
}