//
// TestPlanTestPointsSearchApiResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TestPlanTestPointsSearchApiResult: Codable, JSONEncodable, Hashable {

    public var id: UUID
    public var created: AuditApiResult
    public var modified: AuditApiResult?
    @available(*, deprecated, message: "This property is deprecated.")
    public var status: String
    public var statusModel: TestStatusShortApiResult
    public var inProgress: Bool
    public var configuration: ConfigurationShortApiResult
    public var tester: UserNameApiResult?
    public var testSuite: TestPlanTestPointsTestSuiteSearchApiResult
    public var workItem: TestPlanTestPointsWorkItemSearchApiResult
    public var parameters: [ParameterShortApiResult]
    public var lastTestResult: LastTestResultApiResult?

    public init(id: UUID, created: AuditApiResult, modified: AuditApiResult? = nil, status: String, statusModel: TestStatusShortApiResult, inProgress: Bool, configuration: ConfigurationShortApiResult, tester: UserNameApiResult? = nil, testSuite: TestPlanTestPointsTestSuiteSearchApiResult, workItem: TestPlanTestPointsWorkItemSearchApiResult, parameters: [ParameterShortApiResult], lastTestResult: LastTestResultApiResult? = nil) {
        self.id = id
        self.created = created
        self.modified = modified
        self.status = status
        self.statusModel = statusModel
        self.inProgress = inProgress
        self.configuration = configuration
        self.tester = tester
        self.testSuite = testSuite
        self.workItem = workItem
        self.parameters = parameters
        self.lastTestResult = lastTestResult
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case created
        case modified
        case status
        case statusModel
        case inProgress
        case configuration
        case tester
        case testSuite
        case workItem
        case parameters
        case lastTestResult
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(created, forKey: .created)
        try container.encodeIfPresent(modified, forKey: .modified)
        try container.encode(status, forKey: .status)
        try container.encode(statusModel, forKey: .statusModel)
        try container.encode(inProgress, forKey: .inProgress)
        try container.encode(configuration, forKey: .configuration)
        try container.encodeIfPresent(tester, forKey: .tester)
        try container.encode(testSuite, forKey: .testSuite)
        try container.encode(workItem, forKey: .workItem)
        try container.encode(parameters, forKey: .parameters)
        try container.encodeIfPresent(lastTestResult, forKey: .lastTestResult)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TestPlanTestPointsSearchApiResult: Identifiable {}
