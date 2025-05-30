//
// ParameterModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ParameterModel: Codable, JSONEncodable, Hashable {

    public static let valueRule = StringRule(minLength: 0, maxLength: 1500, pattern: nil)
    public static let nameRule = StringRule(minLength: 0, maxLength: 255, pattern: nil)
    public var createdDate: Date
    public var modifiedDate: Date?
    public var createdById: UUID
    public var modifiedById: UUID?
    public var isDeleted: Bool
    public var parameterKeyId: UUID
    public var id: UUID
    /** Value of the parameter */
    public var value: String
    /** Key of the parameter */
    public var name: String

    public init(createdDate: Date, modifiedDate: Date? = nil, createdById: UUID, modifiedById: UUID? = nil, isDeleted: Bool, parameterKeyId: UUID, id: UUID, value: String, name: String) {
        self.createdDate = createdDate
        self.modifiedDate = modifiedDate
        self.createdById = createdById
        self.modifiedById = modifiedById
        self.isDeleted = isDeleted
        self.parameterKeyId = parameterKeyId
        self.id = id
        self.value = value
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdDate
        case modifiedDate
        case createdById
        case modifiedById
        case isDeleted
        case parameterKeyId
        case id
        case value
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(modifiedDate, forKey: .modifiedDate)
        try container.encode(createdById, forKey: .createdById)
        try container.encodeIfPresent(modifiedById, forKey: .modifiedById)
        try container.encode(isDeleted, forKey: .isDeleted)
        try container.encode(parameterKeyId, forKey: .parameterKeyId)
        try container.encode(id, forKey: .id)
        try container.encode(value, forKey: .value)
        try container.encode(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ParameterModel: Identifiable {}
