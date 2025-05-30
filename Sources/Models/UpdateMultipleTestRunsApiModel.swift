//
// UpdateMultipleTestRunsApiModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateMultipleTestRunsApiModel: Codable, JSONEncodable, Hashable {

    /** Test run selection model */
    public var selectModel: TestRunSelectApiModel
    /** Test run description */
    public var description: String?
    /** Set of attachment ids */
    public var attachmentUpdateScheme: UpdateMultipleAttachmentsApiModel?
    /** Set of links */
    public var linkUpdateScheme: UpdateMultipleLinksApiModel?

    public init(selectModel: TestRunSelectApiModel, description: String? = nil, attachmentUpdateScheme: UpdateMultipleAttachmentsApiModel? = nil, linkUpdateScheme: UpdateMultipleLinksApiModel? = nil) {
        self.selectModel = selectModel
        self.description = description
        self.attachmentUpdateScheme = attachmentUpdateScheme
        self.linkUpdateScheme = linkUpdateScheme
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case selectModel
        case description
        case attachmentUpdateScheme
        case linkUpdateScheme
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(selectModel, forKey: .selectModel)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(attachmentUpdateScheme, forKey: .attachmentUpdateScheme)
        try container.encodeIfPresent(linkUpdateScheme, forKey: .linkUpdateScheme)
    }
}

