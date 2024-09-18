import Foundation
import EventSource
import StreamURLSessionTransport

public struct StreamingAPI {
  public enum Error: Swift.Error {
    case incorrectUrl
  }
  
  private let transport: StreamURLSessionTransport
  
  private let host: URL
  private let tokenProvider: () async throws -> String
  
  public init(configuration: URLSessionConfiguration,
              host: URL,
              tokenProvider: @escaping () async throws -> String) {
    self.transport = StreamURLSessionTransport(urlSessionConfiguration: configuration)
    self.host = host
    self.tokenProvider = tokenProvider
  }
  
  public func accountTransactionsStream(account: String) async throws -> AsyncThrowingStream<[EventSource.Event], Swift.Error>{
    let request = AccountTransactionsRequest(account: account)
    
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
    
    let stream = try await EventSource.eventSource {
      let (bytes, _) = try await self.transport.send(request: urlRequest)
      return bytes
    }
    return stream
  }
}
