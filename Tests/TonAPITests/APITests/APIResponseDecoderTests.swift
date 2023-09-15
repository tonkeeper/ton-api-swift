//
//  APIResponseDecoderTests.swift
//  
//
//  Created by Grigory on 19.6.23..
//

import XCTest
@testable import TonAPI


final class APIResponseDecoderTests: XCTestCase {

  let apiResponseDecoder = APIResponseDecoder(jsonDecoder: JSONDecoder())
  
  func testDecodeResponseWithCorrectEntity() throws {
    // GIVEN
    let account = Account(address: "0:da6b1b6663a0e4d18cc8574ccd9db5296e367dd9324706f3bbd9eb1cd2caf0bf",
                          balance: 123456789,
                          lastActivity: 123456789,
                          status: "active",
                          interfaces: ["nft_sale"],
                          name: "Ton foundation",
                          isScam: true,
                          icon: "https://ton.org/logo.png",
                          isMemoRequired: true,
                          getMethods: ["get_item_data"])
    let accountData = try JSONEncoder().encode(account)
    let statusCode = 200
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: accountData)
    }
    
    // WHEN
    // THEN
    XCTAssertNoThrow(try decode())
  }
  
  func testDecodeResponseWithIncorrectEntity() throws {
    // GIVEN
    let entityString = """
    {
      "address": "0:da6b1b6663a0e4d18cc8574ccd9db5296e367dd9324706f3bbd9eb1cd2caf0bf"
    }
    """
    let entityData = entityString.data(using: .utf8)!
    let statusCode = 200
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: entityData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.invalidResponse(response))
    }
  }
  
  func testDecodeResponseWithCorrectBadRequestError() throws {
    // GIVEN
    let apiError = APIError(error: "Bad request")
    let errorData = try JSONEncoder().encode(apiError)
    let statusCode = 400
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: errorData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.badRequest(error: apiError))
    }
  }
  
  func testDecodeResponseWithIncorrectBadRequestError() throws {
    // GIVEN
    let apiError = APIError(error: "Invalid error body format")
    let apiErrorString = """
    {"wrongkey": []}
    """
    let errorData = try JSONEncoder().encode(apiErrorString.data(using: .utf8))
    let statusCode = 400
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: errorData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.badRequest(error: apiError))
    }
  }
  
  func testDecodeResponseWithCorrectNotAuthorizedError() throws {
    // GIVEN
    let apiError = APIError(error: "Not authorized")
    let errorData = try JSONEncoder().encode(apiError)
    let statusCode = 401
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: errorData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.unauthorized(error: apiError))
    }
  }
  
  func testDecodeResponseWithCorrectNotFoundError() throws {
    // GIVEN
    let apiError = APIError(error: "Not found")
    let errorData = try JSONEncoder().encode(apiError)
    let statusCode = 404
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: errorData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.notFound(error: apiError))
    }
  }
  
  func testDecodeResponseWithCorrectInternalServerErrorError() throws {
    // GIVEN
    let apiError = APIError(error: "Internal server error")
    let errorData = try JSONEncoder().encode(apiError)
    let statusCode = 500
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: errorData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.internalServerError(error: apiError))
    }
  }
  
  func testDecodeResponseWithCorrectUndocumentedError() throws {
    // GIVEN
    let apiError = APIError(error: "Undocumented error")
    let errorData = try JSONEncoder().encode(apiError)
    let statusCode = 420
    let response = HTTPResponse(statusCode: statusCode, headers: [])
    
    func decode() throws {
      let _ : APIResponse<Account> = try self.apiResponseDecoder.decode(response: response, data: errorData)
    }
    
    // WHEN
    // THEN
    XCTAssertThrowsError(try decode(), "") { error in
      XCTAssertEqual(error as? APIResponseError, APIResponseError.undocumented(error: apiError))
    }
  }
}
