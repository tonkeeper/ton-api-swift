//
//  AccountsPathsTests.swift
//
//
//  Created by Grigory on 18.6.23..
//

import XCTest
@testable import TonAPI

final class AccountsPathsTests: XCTestCase {
  func testAcccountsPath() {
    let accountsPath = Paths.v2.accounts
    XCTAssertEqual(accountsPath.path, "/v2/accounts")
  }
  
  func testAccountsAccountIdPath() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2.accounts.accountId(accountsId)
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)")
  }
  
  func testAccountsAccountIdPublicKeyPath() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2.accounts.accountId(accountsId).publicKey
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/publickey")
  }
  
  func testAccountsAccountIdJettonsPath() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2.accounts.accountId(accountsId).jettons
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/jettons")
  }
  
  func testAccountsAccountIdJettonsHistoryPath() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2.accounts.accountId(accountsId).jettons.history
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/jettons/history")
  }
  
  func testAccountsAccountIdJettonsJettonIdPath() {
    let accountsId = "MyAccountId"
    let jettonId = "MyJettonId"
    let accountsPath = Paths.v2.accounts.accountId(accountsId).jettons.jettonId(jettonId)
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/jettons/\(jettonId)")
  }
  
  func testAccountsAccountIdJettonsJettonIdHistoryPath() {
    let accountsId = "MyAccountId"
    let jettonId = "MyJettonId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .jettons.jettonId(jettonId)
      .history
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/jettons/\(jettonId)/history")
  }
  
  func testAccountsAccountIdNFTs() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .nfts
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/nfts")
  }
  
  func testAccountsAccountIdEvents() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .events
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/events")
  }
  
  func testAccountsAccountIdTraces() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .traces
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/traces")
  }
  
  func testAccountsAccountIdSubscriptions() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .subscriptions
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/subscriptions")
  }
  
  func testAccountsSearchPath() {
    let accountsPath = Paths.v2.accounts.search
    XCTAssertEqual(accountsPath.path, "/v2/accounts/search")
  }
  
  func testAccountsBulkPath() {
    let accountsPath = Paths.v2.accounts.bulk
    XCTAssertEqual(accountsPath.path, "/v2/accounts/_bulk")
  }
  
  func testAccountsAccountIdDNS() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .dns
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/dns")
  }
  
  func testAccountsAccountIdDNSBackresolve() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .dns.backresolve
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/dns/backresolve")
  }
  
  func testAccountsAccountIdDNSExpiring() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .dns.expiring
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/dns/expiring")
  }
  
  func testAccountsAccountIdReindex() {
    let accountsId = "MyAccountId"
    let accountsPath = Paths.v2
      .accounts.accountId(accountsId)
      .reindex
    XCTAssertEqual(accountsPath.path, "/v2/accounts/\(accountsId)/reindex")
  }
}
