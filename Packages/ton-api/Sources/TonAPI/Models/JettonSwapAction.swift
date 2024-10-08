//
// JettonSwapAction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JettonSwapAction: Codable, JSONEncodable, Hashable {

    public enum Dex: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case stonfi = "stonfi"
        case dedust = "dedust"
        case megatonfi = "megatonfi"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var dex: Dex
    public var amountIn: String
    public var amountOut: String
    public var tonIn: Int64?
    public var tonOut: Int64?
    public var userWallet: AccountAddress
    public var router: AccountAddress
    public var jettonMasterIn: JettonPreview?
    public var jettonMasterOut: JettonPreview?

    public init(dex: Dex, amountIn: String, amountOut: String, tonIn: Int64? = nil, tonOut: Int64? = nil, userWallet: AccountAddress, router: AccountAddress, jettonMasterIn: JettonPreview? = nil, jettonMasterOut: JettonPreview? = nil) {
        self.dex = dex
        self.amountIn = amountIn
        self.amountOut = amountOut
        self.tonIn = tonIn
        self.tonOut = tonOut
        self.userWallet = userWallet
        self.router = router
        self.jettonMasterIn = jettonMasterIn
        self.jettonMasterOut = jettonMasterOut
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dex
        case amountIn = "amount_in"
        case amountOut = "amount_out"
        case tonIn = "ton_in"
        case tonOut = "ton_out"
        case userWallet = "user_wallet"
        case router
        case jettonMasterIn = "jetton_master_in"
        case jettonMasterOut = "jetton_master_out"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dex, forKey: .dex)
        try container.encode(amountIn, forKey: .amountIn)
        try container.encode(amountOut, forKey: .amountOut)
        try container.encodeIfPresent(tonIn, forKey: .tonIn)
        try container.encodeIfPresent(tonOut, forKey: .tonOut)
        try container.encode(userWallet, forKey: .userWallet)
        try container.encode(router, forKey: .router)
        try container.encodeIfPresent(jettonMasterIn, forKey: .jettonMasterIn)
        try container.encodeIfPresent(jettonMasterOut, forKey: .jettonMasterOut)
    }
}

