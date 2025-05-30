//
// TestPointChangeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TestPointChangeViewModel: Codable, JSONEncodable, Hashable {

    public var userId: UUID
    public var userName: String?
    public var testPointCount: Int64

    public init(userId: UUID, userName: String? = nil, testPointCount: Int64) {
        self.userId = userId
        self.userName = userName
        self.testPointCount = testPointCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case userName
        case testPointCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encode(testPointCount, forKey: .testPointCount)
    }
}

