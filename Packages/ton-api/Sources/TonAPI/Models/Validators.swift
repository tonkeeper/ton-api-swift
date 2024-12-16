//
// Validators.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Validators: Codable, JSONEncodable, Hashable {

    public var electAt: Int64
    public var electClose: Int64
    public var minStake: Int64
    public var totalStake: Int64
    public var validators: [Validator]

    public init(electAt: Int64, electClose: Int64, minStake: Int64, totalStake: Int64, validators: [Validator]) {
        self.electAt = electAt
        self.electClose = electClose
        self.minStake = minStake
        self.totalStake = totalStake
        self.validators = validators
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case electAt = "elect_at"
        case electClose = "elect_close"
        case minStake = "min_stake"
        case totalStake = "total_stake"
        case validators
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(electAt, forKey: .electAt)
        try container.encode(electClose, forKey: .electClose)
        try container.encode(minStake, forKey: .minStake)
        try container.encode(totalStake, forKey: .totalStake)
        try container.encode(validators, forKey: .validators)
    }
}
