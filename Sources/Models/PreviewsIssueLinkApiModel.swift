//
// PreviewsIssueLinkApiModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PreviewsIssueLinkApiModel: Codable, JSONEncodable, Hashable {

    public static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let urlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var title: String
    public var url: String

    public init(title: String, url: String) {
        self.title = title
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(url, forKey: .url)
    }
}

