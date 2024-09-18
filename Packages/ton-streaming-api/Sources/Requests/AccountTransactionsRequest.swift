import Foundation

public struct AccountTransactionsRequest: Request {
  private let account: String
  
  init(account: String) {
    self.account = account
  }
  
  public var path: String {
    "/sse/transactions"
  }
  
  public var queryItems: [URLQueryItem] {
    [URLQueryItem(name: "account",
                  value: account)]
  }
}
