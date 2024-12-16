//
// Risk.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Risk specifies assets that could be lost if a message would be sent to a malicious smart contract. It makes sense to understand the risk BEFORE sending a message to the blockchain. */
public struct Risk: Codable, JSONEncodable, Hashable {

    /** transfer all the remaining balance of the wallet. */
    public var transferAllRemainingBalance: Bool
    public var ton: Int64
    public var jettons: [JettonQuantity]
    public var nfts: [NftItem]

    public init(transferAllRemainingBalance: Bool, ton: Int64, jettons: [JettonQuantity], nfts: [NftItem]) {
        self.transferAllRemainingBalance = transferAllRemainingBalance
        self.ton = ton
        self.jettons = jettons
        self.nfts = nfts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transferAllRemainingBalance = "transfer_all_remaining_balance"
        case ton
        case jettons
        case nfts
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transferAllRemainingBalance, forKey: .transferAllRemainingBalance)
        try container.encode(ton, forKey: .ton)
        try container.encode(jettons, forKey: .jettons)
        try container.encode(nfts, forKey: .nfts)
    }
}
