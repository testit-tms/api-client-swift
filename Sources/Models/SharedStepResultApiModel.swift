//
// SharedStepResultApiModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SharedStepResultApiModel: Codable, JSONEncodable, Hashable {

    public var stepId: UUID
    public var outcome: String

    public init(stepId: UUID, outcome: String) {
        self.stepId = stepId
        self.outcome = outcome
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stepId
        case outcome
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(stepId, forKey: .stepId)
        try container.encode(outcome, forKey: .outcome)
    }
}

