//
// BouncePhaseType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum BouncePhaseType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case trPhaseBounceNegfunds = "TrPhaseBounceNegfunds"
    case trPhaseBounceNofunds = "TrPhaseBounceNofunds"
    case trPhaseBounceOk = "TrPhaseBounceOk"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}
