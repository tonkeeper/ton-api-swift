import Foundation

public struct AccountsTransactionsRequest: Request {
  private let accounts: [String]
  
  init(accounts: [String]) {
    self.accounts = accounts
  }
  
  public var path: String {
    "/v2/sse/accounts/transactions"
  }
  
  public var queryItems: [URLQueryItem] {
    let value = accounts.joined(separator: ",")
    return [URLQueryItem(name: "accounts",
                         value: value)]
  }
}
