//
// PeriodViewModelChangedFieldViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PeriodViewModelChangedFieldViewModel: Codable, JSONEncodable, Hashable {

    public var oldValue: PeriodViewModel?
    public var newValue: PeriodViewModel?

    public init(oldValue: PeriodViewModel? = nil, newValue: PeriodViewModel? = nil) {
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
        try container.encodeIfPresent(oldValue, forKey: .oldValue)
        try container.encodeIfPresent(newValue, forKey: .newValue)
    }
}

