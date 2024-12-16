//
// BlockchainRawAccount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainRawAccount: Codable, JSONEncodable, Hashable {

    public var address: String
    public var balance: Int64
    public var extraBalance: [String: String]?
    public var code: String?
    public var data: String?
    public var lastTransactionLt: Int64
    public var lastTransactionHash: String?
    public var frozenHash: String?
    public var status: AccountStatus
    public var storage: AccountStorageInfo
    public var libraries: [BlockchainRawAccountLibrariesInner]?

    public init(address: String, balance: Int64, extraBalance: [String: String]? = nil, code: String? = nil, data: String? = nil, lastTransactionLt: Int64, lastTransactionHash: String? = nil, frozenHash: String? = nil, status: AccountStatus, storage: AccountStorageInfo, libraries: [BlockchainRawAccountLibrariesInner]? = nil) {
        self.address = address
        self.balance = balance
        self.extraBalance = extraBalance
        self.code = code
        self.data = data
        self.lastTransactionLt = lastTransactionLt
        self.lastTransactionHash = lastTransactionHash
        self.frozenHash = frozenHash
        self.status = status
        self.storage = storage
        self.libraries = libraries
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case balance
        case extraBalance = "extra_balance"
        case code
        case data
        case lastTransactionLt = "last_transaction_lt"
        case lastTransactionHash = "last_transaction_hash"
        case frozenHash = "frozen_hash"
        case status
        case storage
        case libraries
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(balance, forKey: .balance)
        try container.encodeIfPresent(extraBalance, forKey: .extraBalance)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encode(lastTransactionLt, forKey: .lastTransactionLt)
        try container.encodeIfPresent(lastTransactionHash, forKey: .lastTransactionHash)
        try container.encodeIfPresent(frozenHash, forKey: .frozenHash)
        try container.encode(status, forKey: .status)
        try container.encode(storage, forKey: .storage)
        try container.encodeIfPresent(libraries, forKey: .libraries)
    }
}
