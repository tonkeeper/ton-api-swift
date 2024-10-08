//
// Sale.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Sale: Codable, JSONEncodable, Hashable {

    public var address: String
    public var market: AccountAddress
    public var owner: AccountAddress?
    public var price: Price

    public init(address: String, market: AccountAddress, owner: AccountAddress? = nil, price: Price) {
        self.address = address
        self.market = market
        self.owner = owner
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case market
        case owner
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(market, forKey: .market)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encode(price, forKey: .price)
    }
}

