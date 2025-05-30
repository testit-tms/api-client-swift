//
// Int64ChangedFieldViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Int64ChangedFieldViewModel: Codable, JSONEncodable, Hashable {

    public var oldValue: Int64
    public var newValue: Int64

    public init(oldValue: Int64, newValue: Int64) {
        self.oldValue = oldValue
        self.newValue = newValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case oldValue
        case newValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(oldValue, forKey: .oldValue)
        try container.encode(newValue, forKey: .newValue)
    }
}

