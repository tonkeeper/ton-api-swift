//
// GetRawShardBlockProof200ResponseLinksInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawShardBlockProof200ResponseLinksInner: Codable, JSONEncodable, Hashable {

    public var id: BlockRaw
    public var proof: String

    public init(id: BlockRaw, proof: String) {
        self.id = id
        self.proof = proof
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case proof
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(proof, forKey: .proof)
    }
}

