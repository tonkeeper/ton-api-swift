//
// TokenRates.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TokenRates: Codable, JSONEncodable, Hashable {

    public var prices: [String: Double]?
    public var diff24h: [String: String]?
    public var diff7d: [String: String]?
    public var diff30d: [String: String]?

    public init(prices: [String: Double]? = nil, diff24h: [String: String]? = nil, diff7d: [String: String]? = nil, diff30d: [String: String]? = nil) {
        self.prices = prices
        self.diff24h = diff24h
        self.diff7d = diff7d
        self.diff30d = diff30d
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case prices
        case diff24h = "diff_24h"
        case diff7d = "diff_7d"
        case diff30d = "diff_30d"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(prices, forKey: .prices)
        try container.encodeIfPresent(diff24h, forKey: .diff24h)
        try container.encodeIfPresent(diff7d, forKey: .diff7d)
        try container.encodeIfPresent(diff30d, forKey: .diff30d)
    }
}

