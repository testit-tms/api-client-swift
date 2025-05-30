//
// TestPointResultApiResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TestPointResultApiResult: Codable, JSONEncodable, Hashable {

    public var testPointId: UUID?
    @available(*, deprecated, message: "This property is deprecated.")
    public var aggregatedOutcome: String?
    public var aggregatedStatus: TestStatusApiResult?
    public var workItemGlobalId: Int64?
    public var workItemName: String?
    public var configurationName: String?
    public var testResults: [TestResultShortApiResult]

    public init(testPointId: UUID? = nil, aggregatedOutcome: String? = nil, aggregatedStatus: TestStatusApiResult? = nil, workItemGlobalId: Int64? = nil, workItemName: String? = nil, configurationName: String? = nil, testResults: [TestResultShortApiResult]) {
        self.testPointId = testPointId
        self.aggregatedOutcome = aggregatedOutcome
        self.aggregatedStatus = aggregatedStatus
        self.workItemGlobalId = workItemGlobalId
        self.workItemName = workItemName
        self.configurationName = configurationName
        self.testResults = testResults
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case testPointId
        case aggregatedOutcome
        case aggregatedStatus
        case workItemGlobalId
        case workItemName
        case configurationName
        case testResults
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(testPointId, forKey: .testPointId)
        try container.encodeIfPresent(aggregatedOutcome, forKey: .aggregatedOutcome)
        try container.encodeIfPresent(aggregatedStatus, forKey: .aggregatedStatus)
        try container.encodeIfPresent(workItemGlobalId, forKey: .workItemGlobalId)
        try container.encodeIfPresent(workItemName, forKey: .workItemName)
        try container.encodeIfPresent(configurationName, forKey: .configurationName)
        try container.encode(testResults, forKey: .testResults)
    }
}

