//
// GetRawShardInfo200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawShardInfo200Response: Codable, JSONEncodable, Hashable {

    public var id: BlockRaw
    public var shardblk: BlockRaw
    public var shardProof: String
    public var shardDescr: String

    public init(id: BlockRaw, shardblk: BlockRaw, shardProof: String, shardDescr: String) {
        self.id = id
        self.shardblk = shardblk
        self.shardProof = shardProof
        self.shardDescr = shardDescr
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case shardblk
        case shardProof = "shard_proof"
        case shardDescr = "shard_descr"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(shardblk, forKey: .shardblk)
        try container.encode(shardProof, forKey: .shardProof)
        try container.encode(shardDescr, forKey: .shardDescr)
    }
}

