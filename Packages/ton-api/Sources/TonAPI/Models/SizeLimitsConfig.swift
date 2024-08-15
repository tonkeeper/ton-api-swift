//
// SizeLimitsConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SizeLimitsConfig: Codable, JSONEncodable, Hashable {

    public var maxMsgBits: Int64
    public var maxMsgCells: Int64
    public var maxLibraryCells: Int64
    public var maxVmDataDepth: Int
    public var maxExtMsgSize: Int64
    public var maxExtMsgDepth: Int
    public var maxAccStateCells: Int64?
    public var maxAccStateBits: Int64?

    public init(maxMsgBits: Int64, maxMsgCells: Int64, maxLibraryCells: Int64, maxVmDataDepth: Int, maxExtMsgSize: Int64, maxExtMsgDepth: Int, maxAccStateCells: Int64? = nil, maxAccStateBits: Int64? = nil) {
        self.maxMsgBits = maxMsgBits
        self.maxMsgCells = maxMsgCells
        self.maxLibraryCells = maxLibraryCells
        self.maxVmDataDepth = maxVmDataDepth
        self.maxExtMsgSize = maxExtMsgSize
        self.maxExtMsgDepth = maxExtMsgDepth
        self.maxAccStateCells = maxAccStateCells
        self.maxAccStateBits = maxAccStateBits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxMsgBits = "max_msg_bits"
        case maxMsgCells = "max_msg_cells"
        case maxLibraryCells = "max_library_cells"
        case maxVmDataDepth = "max_vm_data_depth"
        case maxExtMsgSize = "max_ext_msg_size"
        case maxExtMsgDepth = "max_ext_msg_depth"
        case maxAccStateCells = "max_acc_state_cells"
        case maxAccStateBits = "max_acc_state_bits"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(maxMsgBits, forKey: .maxMsgBits)
        try container.encode(maxMsgCells, forKey: .maxMsgCells)
        try container.encode(maxLibraryCells, forKey: .maxLibraryCells)
        try container.encode(maxVmDataDepth, forKey: .maxVmDataDepth)
        try container.encode(maxExtMsgSize, forKey: .maxExtMsgSize)
        try container.encode(maxExtMsgDepth, forKey: .maxExtMsgDepth)
        try container.encodeIfPresent(maxAccStateCells, forKey: .maxAccStateCells)
        try container.encodeIfPresent(maxAccStateBits, forKey: .maxAccStateBits)
    }
}

