//
// GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignaturesSignaturesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignaturesSignaturesInner: Codable, JSONEncodable, Hashable {

    public var nodeIdShort: String
    public var signature: String

    public init(nodeIdShort: String, signature: String) {
        self.nodeIdShort = nodeIdShort
        self.signature = signature
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nodeIdShort = "node_id_short"
        case signature
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(nodeIdShort, forKey: .nodeIdShort)
        try container.encode(signature, forKey: .signature)
    }
}
