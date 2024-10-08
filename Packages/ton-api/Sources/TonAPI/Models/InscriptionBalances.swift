//
// InscriptionBalances.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InscriptionBalances: Codable, JSONEncodable, Hashable {

    public var inscriptions: [InscriptionBalance]

    public init(inscriptions: [InscriptionBalance]) {
        self.inscriptions = inscriptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inscriptions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inscriptions, forKey: .inscriptions)
    }
}

