//
// LabelShortModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LabelShortModel: Codable, JSONEncodable, Hashable {

    public static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** Global ID of the label */
    public var globalId: Int64
    /** Name of the label */
    public var name: String

    public init(globalId: Int64, name: String) {
        self.globalId = globalId
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case globalId
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(globalId, forKey: .globalId)
        try container.encode(name, forKey: .name)
    }
}

