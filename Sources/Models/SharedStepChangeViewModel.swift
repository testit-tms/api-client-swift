//
// SharedStepChangeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SharedStepChangeViewModel: Codable, JSONEncodable, Hashable {

    public var id: UUID
    public var globalId: Int64
    public var name: String
    public var steps: [WorkItemStepChangeViewModel]

    public init(id: UUID, globalId: Int64, name: String, steps: [WorkItemStepChangeViewModel]) {
        self.id = id
        self.globalId = globalId
        self.name = name
        self.steps = steps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case globalId
        case name
        case steps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(globalId, forKey: .globalId)
        try container.encode(name, forKey: .name)
        try container.encode(steps, forKey: .steps)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension SharedStepChangeViewModel: Identifiable {}
