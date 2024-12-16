//
// GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForward.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForward: Codable, JSONEncodable, Hashable {

    public var toKeyBlock: Bool
    public var from: BlockRaw
    public var to: BlockRaw
    public var destProof: String
    public var configProof: String
    public var signatures: GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignatures

    public init(toKeyBlock: Bool, from: BlockRaw, to: BlockRaw, destProof: String, configProof: String, signatures: GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignatures) {
        self.toKeyBlock = toKeyBlock
        self.from = from
        self.to = to
        self.destProof = destProof
        self.configProof = configProof
        self.signatures = signatures
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case toKeyBlock = "to_key_block"
        case from
        case to
        case destProof = "dest_proof"
        case configProof = "config_proof"
        case signatures
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(toKeyBlock, forKey: .toKeyBlock)
        try container.encode(from, forKey: .from)
        try container.encode(to, forKey: .to)
        try container.encode(destProof, forKey: .destProof)
        try container.encode(configProof, forKey: .configProof)
        try container.encode(signatures, forKey: .signatures)
    }
}
