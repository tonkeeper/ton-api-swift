//
//  HTTPTransportTask.swift
//  
//
//  Created by Grigory on 15.9.23..
//

import Foundation

public struct HTTPTransportTask: Hashable {
  public static func == (lhs: HTTPTransportTask, rhs: HTTPTransportTask) -> Bool {
    lhs.identifier == rhs.identifier
  }
  
  public func hash(into hasher: inout Hasher) {
    hasher.combine(identifier)
  }
  
  let identifier: Int
  let httpResponse: (() -> HTTPResponse?)
  var task: URLSessionTask?
  
  init(identifier: Int, 
       httpResponse: @escaping () -> HTTPResponse?,
       task: URLSessionTask? = nil) {
    self.identifier = identifier
    self.httpResponse = httpResponse
    self.task = task
  }
  
  func resume() {
    task?.resume()
  }
  
  func cancel() {
    task?.cancel()
  }
}
