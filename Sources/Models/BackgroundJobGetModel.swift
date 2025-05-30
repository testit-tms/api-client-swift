//
// BackgroundJobGetModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BackgroundJobGetModel: Codable, JSONEncodable, Hashable {

    public var id: UUID
    public var jobId: String
    public var jobType: BackgroundJobType
    public var state: BackgroundJobState
    public var isDeleted: Bool
    public var progress: Int64
    public var createdDate: Date
    public var startDate: Date?
    public var endDate: Date?
    public var error: String?
    public var attachments: [BackgroundJobAttachmentModel]

    public init(id: UUID, jobId: String, jobType: BackgroundJobType, state: BackgroundJobState, isDeleted: Bool, progress: Int64, createdDate: Date, startDate: Date? = nil, endDate: Date? = nil, error: String? = nil, attachments: [BackgroundJobAttachmentModel]) {
        self.id = id
        self.jobId = jobId
        self.jobType = jobType
        self.state = state
        self.isDeleted = isDeleted
        self.progress = progress
        self.createdDate = createdDate
        self.startDate = startDate
        self.endDate = endDate
        self.error = error
        self.attachments = attachments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case jobId
        case jobType
        case state
        case isDeleted
        case progress
        case createdDate
        case startDate
        case endDate
        case error
        case attachments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(jobId, forKey: .jobId)
        try container.encode(jobType, forKey: .jobType)
        try container.encode(state, forKey: .state)
        try container.encode(isDeleted, forKey: .isDeleted)
        try container.encode(progress, forKey: .progress)
        try container.encode(createdDate, forKey: .createdDate)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encode(attachments, forKey: .attachments)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension BackgroundJobGetModel: Identifiable {}
