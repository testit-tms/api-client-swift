//
// WorkItemGroupModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WorkItemGroupModel: Codable, JSONEncodable, Hashable {

    public var key: AnyCodable?
    public var size: Int
    public var workItems: [WorkItemShortModel]

    public init(key: AnyCodable? = nil, size: Int, workItems: [WorkItemShortModel]) {
        self.key = key
        self.size = size
        self.workItems = workItems
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case size
        case workItems
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encode(size, forKey: .size)
        try container.encode(workItems, forKey: .workItems)
    }
}

