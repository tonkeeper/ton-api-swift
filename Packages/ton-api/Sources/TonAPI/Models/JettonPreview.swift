//
// JettonPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JettonPreview: Codable, JSONEncodable, Hashable {

    public var address: String
    public var name: String
    public var symbol: String
    public var decimals: Int
    public var image: String
    public var verification: JettonVerificationType
    public var customPayloadApiUri: String?
    public var score: Int?

    public init(address: String, name: String, symbol: String, decimals: Int, image: String, verification: JettonVerificationType, customPayloadApiUri: String? = nil, score: Int? = nil) {
        self.address = address
        self.name = name
        self.symbol = symbol
        self.decimals = decimals
        self.image = image
        self.verification = verification
        self.customPayloadApiUri = customPayloadApiUri
        self.score = score
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case name
        case symbol
        case decimals
        case image
        case verification
        case customPayloadApiUri = "custom_payload_api_uri"
        case score
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(name, forKey: .name)
        try container.encode(symbol, forKey: .symbol)
        try container.encode(decimals, forKey: .decimals)
        try container.encode(image, forKey: .image)
        try container.encode(verification, forKey: .verification)
        try container.encodeIfPresent(customPayloadApiUri, forKey: .customPayloadApiUri)
        try container.encodeIfPresent(score, forKey: .score)
    }
}
