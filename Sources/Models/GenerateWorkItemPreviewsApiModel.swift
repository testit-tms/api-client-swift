//
// GenerateWorkItemPreviewsApiModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GenerateWorkItemPreviewsApiModel: Codable, JSONEncodable, Hashable {

    public static let taskKeyRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var externalServiceId: UUID
    public var taskKey: String
    public var sectionId: UUID

    public init(externalServiceId: UUID, taskKey: String, sectionId: UUID) {
        self.externalServiceId = externalServiceId
        self.taskKey = taskKey
        self.sectionId = sectionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case externalServiceId
        case taskKey
        case sectionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(externalServiceId, forKey: .externalServiceId)
        try container.encode(taskKey, forKey: .taskKey)
        try container.encode(sectionId, forKey: .sectionId)
    }
}

