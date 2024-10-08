//
// AccountStorageInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountStorageInfo: Codable, JSONEncodable, Hashable {

    public var usedCells: Int64
    public var usedBits: Int64
    public var usedPublicCells: Int64
    /** time of the last payment */
    public var lastPaid: Int64
    public var duePayment: Int64

    public init(usedCells: Int64, usedBits: Int64, usedPublicCells: Int64, lastPaid: Int64, duePayment: Int64) {
        self.usedCells = usedCells
        self.usedBits = usedBits
        self.usedPublicCells = usedPublicCells
        self.lastPaid = lastPaid
        self.duePayment = duePayment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case usedCells = "used_cells"
        case usedBits = "used_bits"
        case usedPublicCells = "used_public_cells"
        case lastPaid = "last_paid"
        case duePayment = "due_payment"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(usedCells, forKey: .usedCells)
        try container.encode(usedBits, forKey: .usedBits)
        try container.encode(usedPublicCells, forKey: .usedPublicCells)
        try container.encode(lastPaid, forKey: .lastPaid)
        try container.encode(duePayment, forKey: .duePayment)
    }
}

