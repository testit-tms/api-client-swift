//
// NotificationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationModel: Codable, JSONEncodable, Hashable {

    public var id: UUID
    public var createdDate: Date?
    public var isRead: Bool
    public var entityId: UUID
    public var notificationType: NotificationTypeModel
    public var projectGlobalId: Int64?
    public var projectName: String?
    public var testPlanGlobalId: Int64
    public var testPlanName: String
    public var workitemGlobalId: Int64?
    public var comment: String
    public var workItemName: String
    public var attributeName: String?
    public var createdById: UUID

    public init(id: UUID, createdDate: Date? = nil, isRead: Bool, entityId: UUID, notificationType: NotificationTypeModel, projectGlobalId: Int64? = nil, projectName: String? = nil, testPlanGlobalId: Int64, testPlanName: String, workitemGlobalId: Int64? = nil, comment: String, workItemName: String, attributeName: String? = nil, createdById: UUID) {
        self.id = id
        self.createdDate = createdDate
        self.isRead = isRead
        self.entityId = entityId
        self.notificationType = notificationType
        self.projectGlobalId = projectGlobalId
        self.projectName = projectName
        self.testPlanGlobalId = testPlanGlobalId
        self.testPlanName = testPlanName
        self.workitemGlobalId = workitemGlobalId
        self.comment = comment
        self.workItemName = workItemName
        self.attributeName = attributeName
        self.createdById = createdById
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdDate
        case isRead
        case entityId
        case notificationType
        case projectGlobalId
        case projectName
        case testPlanGlobalId
        case testPlanName
        case workitemGlobalId
        case comment
        case workItemName
        case attributeName
        case createdById
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(createdDate, forKey: .createdDate)
        try container.encode(isRead, forKey: .isRead)
        try container.encode(entityId, forKey: .entityId)
        try container.encode(notificationType, forKey: .notificationType)
        try container.encodeIfPresent(projectGlobalId, forKey: .projectGlobalId)
        try container.encodeIfPresent(projectName, forKey: .projectName)
        try container.encode(testPlanGlobalId, forKey: .testPlanGlobalId)
        try container.encode(testPlanName, forKey: .testPlanName)
        try container.encodeIfPresent(workitemGlobalId, forKey: .workitemGlobalId)
        try container.encode(comment, forKey: .comment)
        try container.encode(workItemName, forKey: .workItemName)
        try container.encodeIfPresent(attributeName, forKey: .attributeName)
        try container.encode(createdById, forKey: .createdById)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension NotificationModel: Identifiable {}
