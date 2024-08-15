//
// InscriptionMintAction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InscriptionMintAction: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case ton20 = "ton20"
        case gram20 = "gram20"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var recipient: AccountAddress
    /** amount in minimal particles */
    public var amount: String
    public var type: ModelType
    public var ticker: String
    public var decimals: Int

    public init(recipient: AccountAddress, amount: String, type: ModelType, ticker: String, decimals: Int) {
        self.recipient = recipient
        self.amount = amount
        self.type = type
        self.ticker = ticker
        self.decimals = decimals
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recipient
        case amount
        case type
        case ticker
        case decimals
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recipient, forKey: .recipient)
        try container.encode(amount, forKey: .amount)
        try container.encode(type, forKey: .type)
        try container.encode(ticker, forKey: .ticker)
        try container.encode(decimals, forKey: .decimals)
    }
}

