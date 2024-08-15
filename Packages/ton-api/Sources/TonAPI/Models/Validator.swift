//
// Validator.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Validator: Codable, JSONEncodable, Hashable {

    public var address: String
    public var adnlAddress: String
    public var stake: Int64
    public var maxFactor: Int64

    public init(address: String, adnlAddress: String, stake: Int64, maxFactor: Int64) {
        self.address = address
        self.adnlAddress = adnlAddress
        self.stake = stake
        self.maxFactor = maxFactor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case adnlAddress = "adnl_address"
        case stake
        case maxFactor = "max_factor"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(adnlAddress, forKey: .adnlAddress)
        try container.encode(stake, forKey: .stake)
        try container.encode(maxFactor, forKey: .maxFactor)
    }
}

