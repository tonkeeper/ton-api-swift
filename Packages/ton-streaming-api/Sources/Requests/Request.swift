import Foundation

public protocol Request {
  var path: String { get }
  var queryItems: [URLQueryItem] { get }
}
