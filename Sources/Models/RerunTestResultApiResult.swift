//
// RerunTestResultApiResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RerunTestResultApiResult: Codable, JSONEncodable, Hashable {

    public var id: UUID
    public var outcome: String
    public var status: TestStatusApiResult
    public var runNumber: Int

    public init(id: UUID, outcome: String, status: TestStatusApiResult, runNumber: Int) {
        self.id = id
        self.outcome = outcome
        self.status = status
        self.runNumber = runNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case outcome
        case status
        case runNumber
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(outcome, forKey: .outcome)
        try container.encode(status, forKey: .status)
        try container.encode(runNumber, forKey: .runNumber)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension RerunTestResultApiResult: Identifiable {}
