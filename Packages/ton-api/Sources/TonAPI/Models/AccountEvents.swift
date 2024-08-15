//
// AccountEvents.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountEvents: Codable, JSONEncodable, Hashable {

    public var events: [AccountEvent]
    public var nextFrom: Int64

    public init(events: [AccountEvent], nextFrom: Int64) {
        self.events = events
        self.nextFrom = nextFrom
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case events
        case nextFrom = "next_from"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(events, forKey: .events)
        try container.encode(nextFrom, forKey: .nextFrom)
    }
}

