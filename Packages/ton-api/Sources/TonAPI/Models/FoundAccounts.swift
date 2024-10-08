//
// FoundAccounts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FoundAccounts: Codable, JSONEncodable, Hashable {

    public var addresses: [FoundAccountsAddressesInner]

    public init(addresses: [FoundAccountsAddressesInner]) {
        self.addresses = addresses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case addresses
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(addresses, forKey: .addresses)
    }
}

