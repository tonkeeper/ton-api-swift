//
// BlockchainConfig31.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The configuration for the consensus protocol above catchain. */
public struct BlockchainConfig31: Codable, JSONEncodable, Hashable {

    public var fundamentalSmcAddr: [String]

    public init(fundamentalSmcAddr: [String]) {
        self.fundamentalSmcAddr = fundamentalSmcAddr
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fundamentalSmcAddr = "fundamental_smc_addr"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fundamentalSmcAddr, forKey: .fundamentalSmcAddr)
    }
}
