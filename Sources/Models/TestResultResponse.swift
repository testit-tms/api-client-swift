//
// TestResultResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TestResultResponse: Codable, JSONEncodable, Hashable {

    public var id: UUID
    public var createdDate: Date
    public var modifiedDate: Date?
    public var createdById: UUID
    public var modifiedById: UUID?
    public var stepComments: [StepCommentApiModel]?
    public var failureClassIds: [UUID]
    @available(*, deprecated, message: "This property is deprecated.")
    public var outcome: TestResultOutcome?
    public var status: TestStatusApiResult?
    public var comment: String?
    public var links: [Link]?
    public var stepResults: [StepResultApiModel]?
    public var attachments: [AttachmentApiResult]?
    public var autoTestId: UUID?
    public var configurationId: UUID
    public var startedOn: Date?
    public var completedOn: Date?
    public var durationInMs: Int64?
    public var traces: String?
    public var failureType: String?
    public var message: String?
    public var runByUserId: UUID?
    public var stoppedByUserId: UUID?
    public var testPointId: UUID
    public var testRunId: UUID
    public var testPoint: TestPoint?
    public var autoTest: AutoTest?
    public var autoTestStepResults: [AutoTestStepResult]?
    public var setupResults: [AutoTestStepResult]?
    public var teardownResults: [AutoTestStepResult]?
    public var workItemVersionId: UUID
    public var workItemVersionNumber: Int?
    public var parameters: [String: String]?
    public var properties: [String: String]?

    public init(id: UUID, createdDate: Date, modifiedDate: Date? = nil, createdById: UUID, modifiedById: UUID? = nil, stepComments: [StepCommentApiModel]? = nil, failureClassIds: [UUID], outcome: TestResultOutcome? = nil, status: TestStatusApiResult? = nil, comment: String? = nil, links: [Link]? = nil, stepResults: [StepResultApiModel]? = nil, attachments: [AttachmentApiResult]? = nil, autoTestId: UUID? = nil, configurationId: UUID, startedOn: Date? = nil, completedOn: Date? = nil, durationInMs: Int64? = nil, traces: String? = nil, failureType: String? = nil, message: String? = nil, runByUserId: UUID? = nil, stoppedByUserId: UUID? = nil, testPointId: UUID, testRunId: UUID, testPoint: TestPoint? = nil, autoTest: AutoTest? = nil, autoTestStepResults: [AutoTestStepResult]? = nil, setupResults: [AutoTestStepResult]? = nil, teardownResults: [AutoTestStepResult]? = nil, workItemVersionId: UUID, workItemVersionNumber: Int? = nil, parameters: [String: String]? = nil, properties: [String: String]? = nil) {
        self.id = id
        self.createdDate = createdDate
        self.modifiedDate = modifiedDate
        self.createdById = createdById
        self.modifiedById = modifiedById
        self.stepComments = stepComments
        self.failureClassIds = failureClassIds
        self.outcome = outcome
        self.status = status
        self.comment = comment
        self.links = links
        self.stepResults = stepResults
        self.attachments = attachments
        self.autoTestId = autoTestId
        self.configurationId = configurationId
        self.startedOn = startedOn
        self.completedOn = completedOn
        self.durationInMs = durationInMs
        self.traces = traces
        self.failureType = failureType
        self.message = message
        self.runByUserId = runByUserId
        self.stoppedByUserId = stoppedByUserId
        self.testPointId = testPointId
        self.testRunId = testRunId
        self.testPoint = testPoint
        self.autoTest = autoTest
        self.autoTestStepResults = autoTestStepResults
        self.setupResults = setupResults
        self.teardownResults = teardownResults
        self.workItemVersionId = workItemVersionId
        self.workItemVersionNumber = workItemVersionNumber
        self.parameters = parameters
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdDate
        case modifiedDate
        case createdById
        case modifiedById
        case stepComments
        case failureClassIds
        case outcome
        case status
        case comment
        case links
        case stepResults
        case attachments
        case autoTestId
        case configurationId
        case startedOn
        case completedOn
        case durationInMs
        case traces
        case failureType
        case message
        case runByUserId
        case stoppedByUserId
        case testPointId
        case testRunId
        case testPoint
        case autoTest
        case autoTestStepResults
        case setupResults
        case teardownResults
        case workItemVersionId
        case workItemVersionNumber
        case parameters
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(modifiedDate, forKey: .modifiedDate)
        try container.encode(createdById, forKey: .createdById)
        try container.encodeIfPresent(modifiedById, forKey: .modifiedById)
        try container.encodeIfPresent(stepComments, forKey: .stepComments)
        try container.encode(failureClassIds, forKey: .failureClassIds)
        try container.encodeIfPresent(outcome, forKey: .outcome)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(stepResults, forKey: .stepResults)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(autoTestId, forKey: .autoTestId)
        try container.encode(configurationId, forKey: .configurationId)
        try container.encodeIfPresent(startedOn, forKey: .startedOn)
        try container.encodeIfPresent(completedOn, forKey: .completedOn)
        try container.encodeIfPresent(durationInMs, forKey: .durationInMs)
        try container.encodeIfPresent(traces, forKey: .traces)
        try container.encodeIfPresent(failureType, forKey: .failureType)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(runByUserId, forKey: .runByUserId)
        try container.encodeIfPresent(stoppedByUserId, forKey: .stoppedByUserId)
        try container.encode(testPointId, forKey: .testPointId)
        try container.encode(testRunId, forKey: .testRunId)
        try container.encodeIfPresent(testPoint, forKey: .testPoint)
        try container.encodeIfPresent(autoTest, forKey: .autoTest)
        try container.encodeIfPresent(autoTestStepResults, forKey: .autoTestStepResults)
        try container.encodeIfPresent(setupResults, forKey: .setupResults)
        try container.encodeIfPresent(teardownResults, forKey: .teardownResults)
        try container.encode(workItemVersionId, forKey: .workItemVersionId)
        try container.encodeIfPresent(workItemVersionNumber, forKey: .workItemVersionNumber)
        try container.encodeIfPresent(parameters, forKey: .parameters)
        try container.encodeIfPresent(properties, forKey: .properties)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension TestResultResponse: Identifiable {}
