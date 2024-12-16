//
// JettonInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JettonInfo: Codable, JSONEncodable, Hashable {

    public var mintable: Bool
    public var totalSupply: String
    public var admin: AccountAddress?
    public var metadata: JettonMetadata
    public var preview: String
    public var verification: JettonVerificationType
    public var holdersCount: Int
    public var score: Int?

    public init(mintable: Bool, totalSupply: String, admin: AccountAddress? = nil, metadata: JettonMetadata, preview: String, verification: JettonVerificationType, holdersCount: Int, score: Int? = nil) {
        self.mintable = mintable
        self.totalSupply = totalSupply
        self.admin = admin
        self.metadata = metadata
        self.preview = preview
        self.verification = verification
        self.holdersCount = holdersCount
        self.score = score
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mintable
        case totalSupply = "total_supply"
        case admin
        case metadata
        case preview
        case verification
        case holdersCount = "holders_count"
        case score
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mintable, forKey: .mintable)
        try container.encode(totalSupply, forKey: .totalSupply)
        try container.encodeIfPresent(admin, forKey: .admin)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(preview, forKey: .preview)
        try container.encode(verification, forKey: .verification)
        try container.encode(holdersCount, forKey: .holdersCount)
        try container.encodeIfPresent(score, forKey: .score)
    }
}

