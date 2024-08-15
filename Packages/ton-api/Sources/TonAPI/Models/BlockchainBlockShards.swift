//
// BlockchainBlockShards.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainBlockShards: Codable, JSONEncodable, Hashable {

    public var shards: [BlockchainBlockShardsShardsInner]

    public init(shards: [BlockchainBlockShardsShardsInner]) {
        self.shards = shards
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case shards
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(shards, forKey: .shards)
    }
}

