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

/** Collection of possible status types */
public enum TestStatusType: String, Codable, CaseIterable {
    case pending = "Pending"
    case inProgress = "InProgress"
    case succeeded = "Succeeded"
    case failed = "Failed"
    case incomplete = "Incomplete"
}
