//
// BlockValueFlow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockValueFlow: Codable, JSONEncodable, Hashable {

    public var fromPrevBlk: BlockCurrencyCollection
    public var toNextBlk: BlockCurrencyCollection
    public var imported: BlockCurrencyCollection
    public var exported: BlockCurrencyCollection
    public var feesCollected: BlockCurrencyCollection
    public var burned: BlockCurrencyCollection?
    public var feesImported: BlockCurrencyCollection
    public var recovered: BlockCurrencyCollection
    public var created: BlockCurrencyCollection
    public var minted: BlockCurrencyCollection

    public init(fromPrevBlk: BlockCurrencyCollection, toNextBlk: BlockCurrencyCollection, imported: BlockCurrencyCollection, exported: BlockCurrencyCollection, feesCollected: BlockCurrencyCollection, burned: BlockCurrencyCollection? = nil, feesImported: BlockCurrencyCollection, recovered: BlockCurrencyCollection, created: BlockCurrencyCollection, minted: BlockCurrencyCollection) {
        self.fromPrevBlk = fromPrevBlk
        self.toNextBlk = toNextBlk
        self.imported = imported
        self.exported = exported
        self.feesCollected = feesCollected
        self.burned = burned
        self.feesImported = feesImported
        self.recovered = recovered
        self.created = created
        self.minted = minted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fromPrevBlk = "from_prev_blk"
        case toNextBlk = "to_next_blk"
        case imported
        case exported
        case feesCollected = "fees_collected"
        case burned
        case feesImported = "fees_imported"
        case recovered
        case created
        case minted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fromPrevBlk, forKey: .fromPrevBlk)
        try container.encode(toNextBlk, forKey: .toNextBlk)
        try container.encode(imported, forKey: .imported)
        try container.encode(exported, forKey: .exported)
        try container.encode(feesCollected, forKey: .feesCollected)
        try container.encodeIfPresent(burned, forKey: .burned)
        try container.encode(feesImported, forKey: .feesImported)
        try container.encode(recovered, forKey: .recovered)
        try container.encode(created, forKey: .created)
        try container.encode(minted, forKey: .minted)
    }
}

