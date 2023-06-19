//
//  APIRequestParametersTests.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import XCTest
@testable import TonAPI

final class APIRequestParametersTests: XCTestCase {
  
  let baseURL = URL(string: "https://tonapi.io")!
  let requestBuilder = URLRequestBuilder()
  
  func testAccountRequest() throws {
    // GIVEN
    let accountId = "0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621"
    let resultURLString = "\(baseURL.absoluteString)/v2/accounts/0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621"
    
    // WHEN
    let apiRequest = AccountRequest(accountId: accountId)
    let urlRequest = try requestBuilder.build(with: apiRequest.request, baseURL: baseURL)
    
    // THEN
    XCTAssertEqual(urlRequest.url!.absoluteString, resultURLString)
  }
  
  func testAccountNFTsRequest() throws {
    // GIVEN
    let accountId = "0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621"
    let collection = "0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621"
    let limit = 100
    let offset = 0
    let isIndirectOwnership = false
    let resultURLString = "\(baseURL.absoluteString)/v2/accounts/0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621/nfts?collection=0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621&limit=100&offset=0&indirect_ownership=false"
    
    // WHEN
    let apiRequest = AccountNFTsRequest(accountId: accountId,
                                        collection: collection,
                                        limit: limit,
                                        offset: offset,
                                        isIndirectOwnership: isIndirectOwnership)
    let urlRequest = try requestBuilder.build(with: apiRequest.request, baseURL: baseURL)
    
    // THEN
    XCTAssertEqual(urlRequest.url!.absoluteString, resultURLString)
  }

  func testAccountDomainRequest() throws {
    // GIVEN
    let accountId = "0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621"
    let resultURLString = "\(baseURL.absoluteString)/v2/accounts/0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621/dns/backresolve"
    
    // WHEN
    let apiRequest = AccountDomainRequest(accountId: accountId)
    let urlRequest = try requestBuilder.build(with: apiRequest.request, baseURL: baseURL)
    
    // THEN
    XCTAssertEqual(urlRequest.url!.absoluteString, resultURLString)
  }
  
  func testAccountBulkRequest() throws {
    // GIVEN
    let accountIds = [
      "0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621",
      "0:97264395BD65A255A429B11326C84128BDDDDDDDDDDDDDDDDDDAAAAAAAAAAAAA"
    ]
    let bodyString = """
    {"account_ids":["0:97264395BD65A255A429B11326C84128B7D70FFED7949ABAE3036D506BA38621","0:97264395BD65A255A429B11326C84128BDDDDDDDDDDDDDDDDDDAAAAAAAAAAAAA"]}
    """
    
    // WHEN
    let apiRequest = AccountsBulkRequest(accountIds: accountIds)
    let urlRequest = try requestBuilder.build(with: apiRequest.request, baseURL: baseURL)
    
    // THEN
    XCTAssertEqual(urlRequest.httpBody, bodyString.data(using: .utf8))
  }
}
