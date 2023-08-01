//
//  DNSPathsTests.swift
//  
//
//  Created by Grigory on 1.8.23..
//

import XCTest

import XCTest
@testable import TonAPI

final class DNSPathsTests: XCTestCase {
  func testDNSPath() {
    let dnsPath = Paths.v2.dns
    XCTAssertEqual(dnsPath.path, "/v2/dns")
  }
  
  func testDomainNamePath() {
    let domainName = "somedomain.ton"
    let path = Paths.v2.dns.domainName(domainName)
    XCTAssertEqual(path.path, "/v2/dns/\(domainName)")
  }
  
  func testDomainNameResolvePath() {
    let domainName = "somedomain.ton"
    let path = Paths.v2.dns.domainName(domainName).resolve
    XCTAssertEqual(path.path, "/v2/dns/\(domainName)/resolve")
  }
}
