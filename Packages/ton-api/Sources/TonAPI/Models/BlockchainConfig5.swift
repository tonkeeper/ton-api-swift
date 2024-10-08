//
// BlockchainConfig5.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainConfig5: Codable, JSONEncodable, Hashable {

    public var blackholeAddr: String?
    public var feeBurnNom: Int64
    public var feeBurnDenom: Int64

    public init(blackholeAddr: String? = nil, feeBurnNom: Int64, feeBurnDenom: Int64) {
        self.blackholeAddr = blackholeAddr
        self.feeBurnNom = feeBurnNom
        self.feeBurnDenom = feeBurnDenom
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case blackholeAddr = "blackhole_addr"
        case feeBurnNom = "fee_burn_nom"
        case feeBurnDenom = "fee_burn_denom"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(blackholeAddr, forKey: .blackholeAddr)
        try container.encode(feeBurnNom, forKey: .feeBurnNom)
        try container.encode(feeBurnDenom, forKey: .feeBurnDenom)
    }
}

