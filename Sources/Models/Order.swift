//
// Order.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Order: Codable, JSONEncodable, Hashable {

    public var field: String
    public var direction: ListSortDirection

    public init(field: String, direction: ListSortDirection) {
        self.field = field
        self.direction = direction
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case direction
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(field, forKey: .field)
        try container.encode(direction, forKey: .direction)
    }
}

