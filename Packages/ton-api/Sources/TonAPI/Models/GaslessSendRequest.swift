//
// GaslessSendRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GaslessSendRequest: Codable, JSONEncodable, Hashable {

    /** hex encoded public key */
    public var walletPublicKey: String
    public var boc: String

    public init(walletPublicKey: String, boc: String) {
        self.walletPublicKey = walletPublicKey
        self.boc = boc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case walletPublicKey = "wallet_public_key"
        case boc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(walletPublicKey, forKey: .walletPublicKey)
        try container.encode(boc, forKey: .boc)
    }
}

