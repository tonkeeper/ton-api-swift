//
// DecodedMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DecodedMessage: Codable, JSONEncodable, Hashable {

    public var destination: AccountAddress
    public var destinationWalletVersion: String
    public var extInMsgDecoded: DecodedMessageExtInMsgDecoded?

    public init(destination: AccountAddress, destinationWalletVersion: String, extInMsgDecoded: DecodedMessageExtInMsgDecoded? = nil) {
        self.destination = destination
        self.destinationWalletVersion = destinationWalletVersion
        self.extInMsgDecoded = extInMsgDecoded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destination
        case destinationWalletVersion = "destination_wallet_version"
        case extInMsgDecoded = "ext_in_msg_decoded"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(destination, forKey: .destination)
        try container.encode(destinationWalletVersion, forKey: .destinationWalletVersion)
        try container.encodeIfPresent(extInMsgDecoded, forKey: .extInMsgDecoded)
    }
}

