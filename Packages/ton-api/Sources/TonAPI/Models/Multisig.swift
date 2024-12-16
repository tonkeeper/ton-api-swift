//
// Multisig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Multisig: Codable, JSONEncodable, Hashable {

    public var address: String
    public var seqno: Int64
    public var threshold: Int
    public var signers: [String]
    public var proposers: [String]
    public var orders: [MultisigOrder]

    public init(address: String, seqno: Int64, threshold: Int, signers: [String], proposers: [String], orders: [MultisigOrder]) {
        self.address = address
        self.seqno = seqno
        self.threshold = threshold
        self.signers = signers
        self.proposers = proposers
        self.orders = orders
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case seqno
        case threshold
        case signers
        case proposers
        case orders
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(seqno, forKey: .seqno)
        try container.encode(threshold, forKey: .threshold)
        try container.encode(signers, forKey: .signers)
        try container.encode(proposers, forKey: .proposers)
        try container.encode(orders, forKey: .orders)
    }
}
