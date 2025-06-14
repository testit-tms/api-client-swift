//
// CreateParameterApiModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateParameterApiModel: Codable, JSONEncodable, Hashable {

    public static let nameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public static let valueRule = StringRule(minLength: 0, maxLength: 1500, pattern: nil)
    /** Key of the parameter */
    public var name: String
    /** Value of the parameter */
    public var value: String

    public init(name: String, value: String) {
        self.name = name
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(value, forKey: .value)
    }
}

