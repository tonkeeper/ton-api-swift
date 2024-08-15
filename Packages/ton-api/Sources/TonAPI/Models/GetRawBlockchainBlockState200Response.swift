//
// GetRawBlockchainBlockState200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawBlockchainBlockState200Response: Codable, JSONEncodable, Hashable {

    public var id: BlockRaw
    public var rootHash: String
    public var fileHash: String
    public var data: String

    public init(id: BlockRaw, rootHash: String, fileHash: String, data: String) {
        self.id = id
        self.rootHash = rootHash
        self.fileHash = fileHash
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rootHash = "root_hash"
        case fileHash = "file_hash"
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(rootHash, forKey: .rootHash)
        try container.encode(fileHash, forKey: .fileHash)
        try container.encode(data, forKey: .data)
    }
}

