//
// ReducedBlock.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReducedBlock: Codable, JSONEncodable, Hashable {

    public var workchainId: Int
    public var shard: String
    public var seqno: Int
    public var masterRef: String?
    public var txQuantity: Int
    public var utime: Int64
    public var shardsBlocks: [String]
    public var parent: [String]

    public init(workchainId: Int, shard: String, seqno: Int, masterRef: String? = nil, txQuantity: Int, utime: Int64, shardsBlocks: [String], parent: [String]) {
        self.workchainId = workchainId
        self.shard = shard
        self.seqno = seqno
        self.masterRef = masterRef
        self.txQuantity = txQuantity
        self.utime = utime
        self.shardsBlocks = shardsBlocks
        self.parent = parent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case workchainId = "workchain_id"
        case shard
        case seqno
        case masterRef = "master_ref"
        case txQuantity = "tx_quantity"
        case utime
        case shardsBlocks = "shards_blocks"
        case parent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(workchainId, forKey: .workchainId)
        try container.encode(shard, forKey: .shard)
        try container.encode(seqno, forKey: .seqno)
        try container.encodeIfPresent(masterRef, forKey: .masterRef)
        try container.encode(txQuantity, forKey: .txQuantity)
        try container.encode(utime, forKey: .utime)
        try container.encode(shardsBlocks, forKey: .shardsBlocks)
        try container.encode(parent, forKey: .parent)
    }
}
