//
// AccStatusChange.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AccStatusChange: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case unchanged = "acst_unchanged"
    case frozen = "acst_frozen"
    case deleted = "acst_deleted"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
