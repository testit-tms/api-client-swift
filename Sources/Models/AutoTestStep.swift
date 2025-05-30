//
// AutoTestStep.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AutoTestStep: Codable, JSONEncodable, Hashable {

    public static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** Step name. */
    public var title: String
    /** Detailed step description. It appears when the step is unfolded. */
    public var description: String?
    /** Includes a nested step inside another step. The maximum nesting level is 15. */
    public var steps: [AutoTestStep]?

    public init(title: String, description: String? = nil, steps: [AutoTestStep]? = nil) {
        self.title = title
        self.description = description
        self.steps = steps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case description
        case steps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(steps, forKey: .steps)
    }
}

