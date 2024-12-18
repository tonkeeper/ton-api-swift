//
// DecodedMessageExtInMsgDecodedWalletV5.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DecodedMessageExtInMsgDecodedWalletV5: Codable, JSONEncodable, Hashable {

    public var validUntil: Int64
    public var rawMessages: [DecodedRawMessage]

    public init(validUntil: Int64, rawMessages: [DecodedRawMessage]) {
        self.validUntil = validUntil
        self.rawMessages = rawMessages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case validUntil = "valid_until"
        case rawMessages = "raw_messages"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(validUntil, forKey: .validUntil)
        try container.encode(rawMessages, forKey: .rawMessages)
    }
}

