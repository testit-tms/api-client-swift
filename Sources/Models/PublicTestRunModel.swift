//
// PublicTestRunModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PublicTestRunModel: Codable, JSONEncodable, Hashable {

    public var testRunId: UUID
    public var testPlanId: UUID?
    public var testPlanGlobalId: Int64
    public var name: String
    public var productName: String?
    public var build: String?
    public var configurations: [ConfigurationModel]
    public var autoTests: [AutoTestModel]
    public var testPoints: [PublicTestPointModel]
    @available(*, deprecated, message: "This property is deprecated.")
    public var status: String
    public var statusModel: TestStatusModel
    public var customParameters: [String: String]?
    public var testRunDescription: String?

    public init(testRunId: UUID, testPlanId: UUID? = nil, testPlanGlobalId: Int64, name: String, productName: String? = nil, build: String? = nil, configurations: [ConfigurationModel], autoTests: [AutoTestModel], testPoints: [PublicTestPointModel], status: String, statusModel: TestStatusModel, customParameters: [String: String]? = nil, testRunDescription: String? = nil) {
        self.testRunId = testRunId
        self.testPlanId = testPlanId
        self.testPlanGlobalId = testPlanGlobalId
        self.name = name
        self.productName = productName
        self.build = build
        self.configurations = configurations
        self.autoTests = autoTests
        self.testPoints = testPoints
        self.status = status
        self.statusModel = statusModel
        self.customParameters = customParameters
        self.testRunDescription = testRunDescription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case testRunId
        case testPlanId
        case testPlanGlobalId
        case name
        case productName
        case build
        case configurations
        case autoTests
        case testPoints
        case status
        case statusModel
        case customParameters
        case testRunDescription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(testRunId, forKey: .testRunId)
        try container.encodeIfPresent(testPlanId, forKey: .testPlanId)
        try container.encode(testPlanGlobalId, forKey: .testPlanGlobalId)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(productName, forKey: .productName)
        try container.encodeIfPresent(build, forKey: .build)
        try container.encode(configurations, forKey: .configurations)
        try container.encode(autoTests, forKey: .autoTests)
        try container.encode(testPoints, forKey: .testPoints)
        try container.encode(status, forKey: .status)
        try container.encode(statusModel, forKey: .statusModel)
        try container.encodeIfPresent(customParameters, forKey: .customParameters)
        try container.encodeIfPresent(testRunDescription, forKey: .testRunDescription)
    }
}

