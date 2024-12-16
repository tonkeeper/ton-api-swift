//
// BlockchainConfig18.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The prices for data storage. */
public struct BlockchainConfig18: Codable, JSONEncodable, Hashable {

    public var storagePrices: [BlockchainConfig18StoragePricesInner]

    public init(storagePrices: [BlockchainConfig18StoragePricesInner]) {
        self.storagePrices = storagePrices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case storagePrices = "storage_prices"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(storagePrices, forKey: .storagePrices)
    }
}
