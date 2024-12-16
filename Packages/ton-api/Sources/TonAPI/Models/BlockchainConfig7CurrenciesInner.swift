//
// BlockchainConfig7CurrenciesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainConfig7CurrenciesInner: Codable, JSONEncodable, Hashable {

    public var currencyId: Int64
    public var amount: String

    public init(currencyId: Int64, amount: String) {
        self.currencyId = currencyId
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyId = "currency_id"
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(currencyId, forKey: .currencyId)
        try container.encode(amount, forKey: .amount)
    }
}
