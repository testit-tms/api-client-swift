//
// TestStatusType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TestStatusType: String, Codable, CaseIterable {
    case failed = "Failed"
    case inProgress = "InProgress"
    case incomplete = "Incomplete"
    case succeeded = "Succeeded"
    case pending = "Pending"
}
