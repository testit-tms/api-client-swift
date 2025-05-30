//
// TestPlanGroupByTestSuite.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TestPlanGroupByTestSuite: Codable, JSONEncodable, Hashable {

    public var testSuiteId: UUID
    public var testSuiteName: String
    public var value: Int64

    public init(testSuiteId: UUID, testSuiteName: String, value: Int64) {
        self.testSuiteId = testSuiteId
        self.testSuiteName = testSuiteName
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case testSuiteId
        case testSuiteName
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(testSuiteId, forKey: .testSuiteId)
        try container.encode(testSuiteName, forKey: .testSuiteName)
        try container.encode(value, forKey: .value)
    }
}

