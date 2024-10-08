//
// PoolInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PoolInfo: Codable, JSONEncodable, Hashable {

    public var address: String
    public var name: String
    public var totalAmount: Int64
    public var implementation: PoolImplementationType
    /** APY in percent */
    public var apy: Double
    public var minStake: Int64
    /** current nomination cycle beginning timestamp */
    public var cycleStart: Int64
    /** current nomination cycle ending timestamp */
    public var cycleEnd: Int64
    /** this pool has verified source code or managed by trusted company */
    public var verified: Bool
    /** current number of nominators */
    public var currentNominators: Int
    /** maximum number of nominators */
    public var maxNominators: Int
    /** for liquid staking master account of jetton */
    public var liquidJettonMaster: String?
    /** total stake of all nominators */
    public var nominatorsStake: Int64
    /** stake of validator */
    public var validatorStake: Int64
    public var cycleLength: Int64?

    public init(address: String, name: String, totalAmount: Int64, implementation: PoolImplementationType, apy: Double, minStake: Int64, cycleStart: Int64, cycleEnd: Int64, verified: Bool, currentNominators: Int, maxNominators: Int, liquidJettonMaster: String? = nil, nominatorsStake: Int64, validatorStake: Int64, cycleLength: Int64? = nil) {
        self.address = address
        self.name = name
        self.totalAmount = totalAmount
        self.implementation = implementation
        self.apy = apy
        self.minStake = minStake
        self.cycleStart = cycleStart
        self.cycleEnd = cycleEnd
        self.verified = verified
        self.currentNominators = currentNominators
        self.maxNominators = maxNominators
        self.liquidJettonMaster = liquidJettonMaster
        self.nominatorsStake = nominatorsStake
        self.validatorStake = validatorStake
        self.cycleLength = cycleLength
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case name
        case totalAmount = "total_amount"
        case implementation
        case apy
        case minStake = "min_stake"
        case cycleStart = "cycle_start"
        case cycleEnd = "cycle_end"
        case verified
        case currentNominators = "current_nominators"
        case maxNominators = "max_nominators"
        case liquidJettonMaster = "liquid_jetton_master"
        case nominatorsStake = "nominators_stake"
        case validatorStake = "validator_stake"
        case cycleLength = "cycle_length"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(name, forKey: .name)
        try container.encode(totalAmount, forKey: .totalAmount)
        try container.encode(implementation, forKey: .implementation)
        try container.encode(apy, forKey: .apy)
        try container.encode(minStake, forKey: .minStake)
        try container.encode(cycleStart, forKey: .cycleStart)
        try container.encode(cycleEnd, forKey: .cycleEnd)
        try container.encode(verified, forKey: .verified)
        try container.encode(currentNominators, forKey: .currentNominators)
        try container.encode(maxNominators, forKey: .maxNominators)
        try container.encodeIfPresent(liquidJettonMaster, forKey: .liquidJettonMaster)
        try container.encode(nominatorsStake, forKey: .nominatorsStake)
        try container.encode(validatorStake, forKey: .validatorStake)
        try container.encodeIfPresent(cycleLength, forKey: .cycleLength)
    }
}

