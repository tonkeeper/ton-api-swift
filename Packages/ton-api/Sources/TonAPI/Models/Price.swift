//
// Price.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Price: Codable, JSONEncodable, Hashable {

    public var value: String
    public var tokenName: String

    public init(value: String, tokenName: String) {
        self.value = value
        self.tokenName = tokenName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
        case tokenName = "token_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(value, forKey: .value)
        try container.encode(tokenName, forKey: .tokenName)
    }
}

