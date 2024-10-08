//
// JettonTransferPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JettonTransferPayload: Codable, JSONEncodable, Hashable {

    /** hex-encoded BoC */
    public var customPayload: String?
    /** hex-encoded BoC */
    public var stateInit: String?

    public init(customPayload: String? = nil, stateInit: String? = nil) {
        self.customPayload = customPayload
        self.stateInit = stateInit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customPayload = "custom_payload"
        case stateInit = "state_init"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(customPayload, forKey: .customPayload)
        try container.encodeIfPresent(stateInit, forKey: .stateInit)
    }
}

