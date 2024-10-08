//
// ValueFlow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ValueFlow: Codable, JSONEncodable, Hashable {

    public var account: AccountAddress
    public var ton: Int64
    public var fees: Int64
    public var jettons: [ValueFlowJettonsInner]?

    public init(account: AccountAddress, ton: Int64, fees: Int64, jettons: [ValueFlowJettonsInner]? = nil) {
        self.account = account
        self.ton = ton
        self.fees = fees
        self.jettons = jettons
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case ton
        case fees
        case jettons
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(account, forKey: .account)
        try container.encode(ton, forKey: .ton)
        try container.encode(fees, forKey: .fees)
        try container.encodeIfPresent(jettons, forKey: .jettons)
    }
}

