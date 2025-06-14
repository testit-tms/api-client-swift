//
// ParameterGroupApiResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ParameterGroupApiResult: Codable, JSONEncodable, Hashable {

    public var parameterKeyId: UUID
    public var name: String
    public var values: [String: String]

    public init(parameterKeyId: UUID, name: String, values: [String: String]) {
        self.parameterKeyId = parameterKeyId
        self.name = name
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parameterKeyId
        case name
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(parameterKeyId, forKey: .parameterKeyId)
        try container.encode(name, forKey: .name)
        try container.encode(values, forKey: .values)
    }
}

