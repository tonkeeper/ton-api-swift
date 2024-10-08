//
// ValueFlowJettonsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ValueFlowJettonsInner: Codable, JSONEncodable, Hashable {

    public var account: AccountAddress
    public var jetton: JettonPreview
    public var quantity: Int64

    public init(account: AccountAddress, jetton: JettonPreview, quantity: Int64) {
        self.account = account
        self.jetton = jetton
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case jetton
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(account, forKey: .account)
        try container.encode(jetton, forKey: .jetton)
        try container.encode(quantity, forKey: .quantity)
    }
}

