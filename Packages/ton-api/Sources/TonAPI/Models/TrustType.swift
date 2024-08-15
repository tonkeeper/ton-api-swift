//
// TrustType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TrustType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case whitelist = "whitelist"
    case graylist = "graylist"
    case blacklist = "blacklist"
    case _none = "none"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
