//
// DecodedMessageExtInMsgDecoded.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DecodedMessageExtInMsgDecoded: Codable, JSONEncodable, Hashable {

    public var walletV3: DecodedMessageExtInMsgDecodedWalletV3?
    public var walletV4: DecodedMessageExtInMsgDecodedWalletV4?
    public var walletHighloadV2: DecodedMessageExtInMsgDecodedWalletHighloadV2?

    public init(walletV3: DecodedMessageExtInMsgDecodedWalletV3? = nil, walletV4: DecodedMessageExtInMsgDecodedWalletV4? = nil, walletHighloadV2: DecodedMessageExtInMsgDecodedWalletHighloadV2? = nil) {
        self.walletV3 = walletV3
        self.walletV4 = walletV4
        self.walletHighloadV2 = walletHighloadV2
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case walletV3 = "wallet_v3"
        case walletV4 = "wallet_v4"
        case walletHighloadV2 = "wallet_highload_v2"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(walletV3, forKey: .walletV3)
        try container.encodeIfPresent(walletV4, forKey: .walletV4)
        try container.encodeIfPresent(walletHighloadV2, forKey: .walletHighloadV2)
    }
}

