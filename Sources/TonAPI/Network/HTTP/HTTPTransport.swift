//
//  HTTPTransport.swift
//
//
//  Created by Grigory on 14.9.23..
//

import Foundation

public protocol HTTPTransport {
  func send(request: URLRequest) async throws -> (Data, URLResponse)
  func send(request: URLRequest,
            handler: @escaping (HTTPTransportEvent) -> Void) -> HTTPTransportTask
  func cancelTask(_ task: HTTPTransportTask)
}

public final class URLSessionHTTPTransport: NSObject, HTTPTransport {
  
  private let rootQueue = DispatchQueue(label: "urlSessionHTTPTransport.rootQueue")
  private var taskHandlers = [URLSessionTask: (HTTPTransportEvent) -> Void]()

  private lazy var session: URLSession = {
    let operationQueue = OperationQueue()
    operationQueue.maxConcurrentOperationCount = 1
    operationQueue.underlyingQueue = rootQueue
    return URLSession(configuration: urlSessionConfiguration, delegate: self, delegateQueue: operationQueue)
  }()
  private let urlSessionConfiguration: URLSessionConfiguration
  
  public init(urlSessionConfiguration: URLSessionConfiguration) {
    self.urlSessionConfiguration = urlSessionConfiguration
  }
  
  public func send(request: URLRequest) async throws -> (Data, URLResponse) {
    let (data, urlResponse) = try await session.data(for: request)
    return (data, urlResponse)
  }
  
  public func send(request: URLRequest,
                   handler: @escaping (HTTPTransportEvent) -> Void) -> HTTPTransportTask {
    let task = session.dataTask(with: request)
    
    rootQueue.async {
      self.taskHandlers[task] = handler
      task.resume()
    }
    return HTTPTransportTask(identifier: task.taskIdentifier, httpResponse: { .init(urlResponse: task.response) })
  }
  
  public func cancelTask(_ task: HTTPTransportTask) {
    Task {
      await session.allTasks
        .filter { $0.taskIdentifier == task.identifier }
        .forEach { $0.cancel() }
    }
  }
}

extension URLSessionHTTPTransport: URLSessionTaskDelegate {
  public func urlSession(_ session: URLSession,
                  task: URLSessionTask,
                  didCompleteWithError error: Swift.Error?) {
    guard let handler = taskHandlers[task] else { return }
    handler(.complete(.init(response: HTTPResponse(urlResponse: task.response), error: error)))
    taskHandlers[task] = nil
  }
}

extension URLSessionHTTPTransport: URLSessionDataDelegate {
  public func urlSession(_ session: URLSession,
                  dataTask: URLSessionDataTask,
                  didReceive response: URLResponse,
                  completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
    guard let handler = taskHandlers[dataTask], let httpResponse = HTTPResponse(urlResponse: response) else {
      completionHandler(.cancel)
      return
    }
    handler(.recieveResponse(httpResponse))
    completionHandler(.allow)
  }
  
  public func urlSession(_ session: URLSession, 
                  dataTask: URLSessionDataTask,
                  didReceive data: Data) {
    guard let handler = taskHandlers[dataTask] else { return }
    handler(.data(data))
  }
}
