//
// EmulateMessageToWalletRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EmulateMessageToWalletRequest: Codable, JSONEncodable, Hashable {

    public var boc: String
    /** additional per account configuration */
    public var params: [EmulateMessageToWalletRequestParamsInner]?

    public init(boc: String, params: [EmulateMessageToWalletRequestParamsInner]? = nil) {
        self.boc = boc
        self.params = params
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case boc
        case params
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(boc, forKey: .boc)
        try container.encodeIfPresent(params, forKey: .params)
    }
}

