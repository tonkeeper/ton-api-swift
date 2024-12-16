//
// JettonBalance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JettonBalance: Codable, JSONEncodable, Hashable {

    public var balance: String
    public var price: TokenRates?
    public var walletAddress: AccountAddress
    public var jetton: JettonPreview
    public var extensions: [String]?
    public var lock: JettonBalanceLock?

    public init(balance: String, price: TokenRates? = nil, walletAddress: AccountAddress, jetton: JettonPreview, extensions: [String]? = nil, lock: JettonBalanceLock? = nil) {
        self.balance = balance
        self.price = price
        self.walletAddress = walletAddress
        self.jetton = jetton
        self.extensions = extensions
        self.lock = lock
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case balance
        case price
        case walletAddress = "wallet_address"
        case jetton
        case extensions
        case lock
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(balance, forKey: .balance)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encode(walletAddress, forKey: .walletAddress)
        try container.encode(jetton, forKey: .jetton)
        try container.encodeIfPresent(extensions, forKey: .extensions)
        try container.encodeIfPresent(lock, forKey: .lock)
    }
}
