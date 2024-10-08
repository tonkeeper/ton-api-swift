//
// Multisigs.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Multisigs: Codable, JSONEncodable, Hashable {

    public var multisigs: [Multisig]

    public init(multisigs: [Multisig]) {
        self.multisigs = multisigs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case multisigs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(multisigs, forKey: .multisigs)
    }
}

