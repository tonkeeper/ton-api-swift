//
// GetRawMasterchainInfoExt200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawMasterchainInfoExt200Response: Codable, JSONEncodable, Hashable {

    public var mode: Int
    public var version: Int
    public var capabilities: Int64
    public var last: BlockRaw
    public var lastUtime: Int
    public var now: Int
    public var stateRootHash: String
    public var _init: InitStateRaw

    public init(mode: Int, version: Int, capabilities: Int64, last: BlockRaw, lastUtime: Int, now: Int, stateRootHash: String, _init: InitStateRaw) {
        self.mode = mode
        self.version = version
        self.capabilities = capabilities
        self.last = last
        self.lastUtime = lastUtime
        self.now = now
        self.stateRootHash = stateRootHash
        self._init = _init
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mode
        case version
        case capabilities
        case last
        case lastUtime = "last_utime"
        case now
        case stateRootHash = "state_root_hash"
        case _init = "init"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mode, forKey: .mode)
        try container.encode(version, forKey: .version)
        try container.encode(capabilities, forKey: .capabilities)
        try container.encode(last, forKey: .last)
        try container.encode(lastUtime, forKey: .lastUtime)
        try container.encode(now, forKey: .now)
        try container.encode(stateRootHash, forKey: .stateRootHash)
        try container.encode(_init, forKey: ._init)
    }
}
