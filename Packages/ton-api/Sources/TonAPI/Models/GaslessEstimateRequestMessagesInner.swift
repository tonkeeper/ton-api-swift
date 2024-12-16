//
// GaslessEstimateRequestMessagesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GaslessEstimateRequestMessagesInner: Codable, JSONEncodable, Hashable {

    public var boc: String

    public init(boc: String) {
        self.boc = boc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case boc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(boc, forKey: .boc)
    }
}
