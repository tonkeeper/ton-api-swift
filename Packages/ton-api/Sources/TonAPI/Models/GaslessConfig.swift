//
// GaslessConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GaslessConfig: Codable, JSONEncodable, Hashable {

    /** sending excess to this address decreases the commission of a gasless transfer */
    public var relayAddress: String
    /** list of jettons, any of them can be used to pay for gas */
    public var gasJettons: [GaslessConfigGasJettonsInner]

    public init(relayAddress: String, gasJettons: [GaslessConfigGasJettonsInner]) {
        self.relayAddress = relayAddress
        self.gasJettons = gasJettons
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case relayAddress = "relay_address"
        case gasJettons = "gas_jettons"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(relayAddress, forKey: .relayAddress)
        try container.encode(gasJettons, forKey: .gasJettons)
    }
}

