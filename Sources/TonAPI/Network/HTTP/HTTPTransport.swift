//
//  HTTPTransport.swift
//
//
//  Created by Grigory on 14.9.23..
//

import Foundation

public enum HTTPTransportEvent {
  case response(HTTPResponse)
  case data(Data)
  case complete(Swift.Error?)
}

public protocol HTTPTransport {
  func send(request: URLRequest) async throws -> (Data, URLResponse)
  func send(request: URLRequest) -> HTTPTransportTask
  func addTaskHandler(task: HTTPTransportTask,
                      handler: @escaping (Result<HTTPTransportEvent, Swift.Error>) -> Void)
  @available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
  func bytes(request: URLRequest) async throws -> (AsyncBytes, URLResponse)
}

public final class URLSessionHTTPTransport: NSObject, HTTPTransport {
  
  private let rootQueue = DispatchQueue(label: "urlSessionHTTPTransport.rootQueue")
  private var taskHandlers = [URLSessionTask: (Result<HTTPTransportEvent, Swift.Error>) -> Void]()

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
  
  public func send(request: URLRequest) -> HTTPTransportTask {
    let task = session.dataTask(with: request)
    return HTTPTransportTask(identifier: task.taskIdentifier, httpResponse: { .init(urlResponse: task.response) }, task: task)
  }
  
  public func addTaskHandler(task: HTTPTransportTask, handler: @escaping (Result<HTTPTransportEvent, Swift.Error>) -> Void) {
    guard let sessionTask = task.task else { return }
    rootQueue.async {
      self.taskHandlers[sessionTask] = handler
    }
  }
  
  @available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
  public func bytes(request: URLRequest) async throws -> (AsyncBytes, URLResponse) {
    let (asyncBytes, response) = try await session.bytes(for: request)
    let task = HTTPTransportTask(identifier: asyncBytes.task.taskIdentifier, httpResponse: { .init(urlResponse: response) }, task: asyncBytes.task)
    return (AsyncBytes(asyncBytes, task: task), response)
  }
}

extension URLSessionHTTPTransport: URLSessionTaskDelegate {
  public func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didCompleteWithError error: Swift.Error?) {
    guard let handler = taskHandlers[task] else { return }
    if task.response == nil, let error = error {
      handler(.failure(error))
      return
    }
    
    handler(.success(.complete(error)))
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
    handler(.success(.response(httpResponse)))
    completionHandler(.allow)
  }
  
  public func urlSession(_ session: URLSession, 
                  dataTask: URLSessionDataTask,
                  didReceive data: Data) {
    guard let handler = taskHandlers[dataTask] else { return }
    handler(.success(.data(data)))
  }
}
