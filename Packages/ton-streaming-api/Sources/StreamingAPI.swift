import Foundation
import EventSource
import StreamURLSessionTransport

public struct StreamingAPI {
  public enum Error: Swift.Error {
    case incorrectUrl
  }
  
  private let transport: StreamURLSessionTransport
  
  private let hostProvider: () async throws -> URL
  private let tokenProvider: () async throws -> String
  
  public init(configuration: URLSessionConfiguration,
              hostProvider: @escaping () async throws -> URL,
              tokenProvider: @escaping () async throws -> String) {
    self.transport = StreamURLSessionTransport(urlSessionConfiguration: configuration)
    self.hostProvider = hostProvider
    self.tokenProvider = tokenProvider
  }
  
  public func accountTransactionsStream(account: String) async throws -> AsyncThrowingStream<[EventSource.Event], Swift.Error>{
    let request = AccountTransactionsRequest(account: account)
    let urlRequest = try await urlRequest(request: request)
    
    let stream = try await EventSource.eventSource {
      let (bytes, _) = try await self.transport.send(request: urlRequest)
      return bytes
    }
    return stream
  }
  
  public func accountsTransactionsStream(accounts: [String]) async throws -> AsyncThrowingStream<[EventSource.Event], Swift.Error>{
    let request = AccountsTransactionsRequest(accounts: accounts)
    let urlRequest = try await urlRequest(request: request)
    
    let stream = try await EventSource.eventSource {
      let (bytes, _) = try await self.transport.send(request: urlRequest)
      return bytes
    }
    return stream
  }
  
  private func urlRequest(request: Request) async throws -> URLRequest {
    let host = try await hostProvider()
    var urlComponents = URLComponents(url: host, resolvingAgainstBaseURL: true)
    urlComponents?.path = request.path
    urlComponents?.queryItems = request.queryItems
    
    guard let url = urlComponents?.url else {
      throw Error.incorrectUrl
    }

    var urlRequest = URLRequest(url: url)
    let token: String
    do {
      token = try await tokenProvider()
    } catch {
      token = ""
    }
    urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    
    return urlRequest
  }
}
