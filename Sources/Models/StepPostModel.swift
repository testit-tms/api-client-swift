//
// StepPostModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StepPostModel: Codable, JSONEncodable, Hashable {

    public var action: String?
    public var expected: String?
    public var testData: String?
    public var comments: String?
    public var workItemId: UUID?

    public init(action: String? = nil, expected: String? = nil, testData: String? = nil, comments: String? = nil, workItemId: UUID? = nil) {
        self.action = action
        self.expected = expected
        self.testData = testData
        self.comments = comments
        self.workItemId = workItemId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case expected
        case testData
        case comments
        case workItemId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(expected, forKey: .expected)
        try container.encodeIfPresent(testData, forKey: .testData)
        try container.encodeIfPresent(comments, forKey: .comments)
        try container.encodeIfPresent(workItemId, forKey: .workItemId)
    }
}

