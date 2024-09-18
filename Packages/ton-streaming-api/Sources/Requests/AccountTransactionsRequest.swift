import Foundation

public struct AccountTransactionsRequest {
  private let account: String
  
  init(account: String) {
    self.account = account
  }
  
  var path: String {
    "/sse/transactions"
  }
  
  var queryItems: [URLQueryItem] {
    [URLQueryItem(name: "account",
                  value: account)]
  }
}
