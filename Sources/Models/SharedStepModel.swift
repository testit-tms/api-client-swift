//
// SharedStepModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SharedStepModel: Codable, JSONEncodable, Hashable {

    public var versionId: UUID
    public var globalId: Int64
    public var name: String
    @available(*, deprecated, message: "This property is deprecated.")
    public var steps: [StepModel]
    public var isDeleted: Bool

    public init(versionId: UUID, globalId: Int64, name: String, steps: [StepModel], isDeleted: Bool) {
        self.versionId = versionId
        self.globalId = globalId
        self.name = name
        self.steps = steps
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case versionId
        case globalId
        case name
        case steps
        case isDeleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(versionId, forKey: .versionId)
        try container.encode(globalId, forKey: .globalId)
        try container.encode(name, forKey: .name)
        try container.encode(steps, forKey: .steps)
        try container.encode(isDeleted, forKey: .isDeleted)
    }
}

