//
//  URLSessionHandler.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

public enum URLSessionHandlerEvent {
  case response(HTTPURLResponse)
  case data(Data)
  case complete(Swift.Error?)
}

final class URLSessionHandler: NSObject, @unchecked Sendable {
  private let rootQueue = DispatchQueue(label: "urlSessionHTTPTransport.rootQueue")
  private var taskHandlers = [URLSessionTask: (Result<URLSessionHandlerEvent, Swift.Error>) -> Void]()
  
  private lazy var session: URLSession = {
    let operationQueue = OperationQueue()
    operationQueue.maxConcurrentOperationCount = 1
    operationQueue.underlyingQueue = rootQueue
    return URLSession(
      configuration: urlSessionConfiguration,
      delegate: self,
      delegateQueue: operationQueue
    )
  }()
  private let urlSessionConfiguration: URLSessionConfiguration
  
  init(urlSessionConfiguration: URLSessionConfiguration) {
    self.urlSessionConfiguration = urlSessionConfiguration
  }
  
  func send(request: URLRequest) -> URLSessionTask {
    return session.dataTask(with: request)
  }
  
  func addTaskHandler(task: URLSessionTask,
                      handler: @escaping (Result<URLSessionHandlerEvent, Swift.Error>) -> Void) {
    rootQueue.async {
      self.taskHandlers[task] = handler
    }
  }
  
  @available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
  func bytes(request: URLRequest) async throws -> (AsyncBytes, URLResponse) {
    let (asyncBytes, response) = try await session.bytes(for: request)
    return (AsyncBytes(asyncBytes, task: asyncBytes.task), response)
  }
}

extension URLSessionHandler: URLSessionTaskDelegate {
  func urlSession(_ session: URLSession,
                  task: URLSessionTask,
                  didCompleteWithError error: Swift.Error?) {
    guard let handler = taskHandlers[task] else { return }
    if task.response == nil,
       let error = error {
      handler(.failure(error))
      return
    }
    
    handler(.success(.complete(error)))
  }
}

extension URLSessionHandler: URLSessionDataDelegate {
  func urlSession(_ session: URLSession,
                  dataTask: URLSessionDataTask,
                  didReceive response: URLResponse,
                  completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
    guard let handler = taskHandlers[dataTask],
          let httpResponse = response as? HTTPURLResponse else {
      completionHandler(.cancel)
      return
    }
    handler(.success(.response(httpResponse)))
    completionHandler(.allow)
  }
  
  func urlSession(_ session: URLSession,
                  dataTask: URLSessionDataTask,
                  didReceive data: Data) {
    guard let handler = taskHandlers[dataTask] else { return }
    handler(.success(.data(data)))
  }
}
