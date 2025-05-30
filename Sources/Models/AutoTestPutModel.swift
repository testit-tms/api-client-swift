//
// AutoTestPutModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AutoTestPutModel: Codable, JSONEncodable, Hashable {

    public static let workItemIdsForLinkWithAutoTestRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public static let externalIdRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** Used for search autotest. If value is null or equals Guid mask filled with zeros, search will be executed using ExternalId */
    public var id: UUID?
    public var workItemIdsForLinkWithAutoTest: Set<UUID>?
    /** External ID of the autotest */
    public var externalId: String
    /** Collection of the autotest links */
    public var links: [LinkPutModel]?
    /** Unique ID of the autotest project */
    public var projectId: UUID
    /** Name of the autotest */
    public var name: String
    /** Name of the autotest namespace */
    public var namespace: String?
    /** Name of the autotest class */
    public var classname: String?
    /** Collection of the autotest steps */
    public var steps: [AutoTestStepModel]?
    /** Collection of the autotest setup steps */
    public var setup: [AutoTestStepModel]?
    /** Collection of the autotest teardown steps */
    public var teardown: [AutoTestStepModel]?
    /** Name of the autotest in autotest's card */
    public var title: String?
    /** Description of the autotest in autotest's card */
    public var description: String?
    /** Collection of the autotest labels */
    public var labels: [LabelPostModel]?
    /** Indicates if the autotest is marked as flaky */
    public var isFlaky: Bool?
    /** External key of the autotest */
    public var externalKey: String?

    public init(id: UUID? = nil, workItemIdsForLinkWithAutoTest: Set<UUID>? = nil, externalId: String, links: [LinkPutModel]? = nil, projectId: UUID, name: String, namespace: String? = nil, classname: String? = nil, steps: [AutoTestStepModel]? = nil, setup: [AutoTestStepModel]? = nil, teardown: [AutoTestStepModel]? = nil, title: String? = nil, description: String? = nil, labels: [LabelPostModel]? = nil, isFlaky: Bool? = nil, externalKey: String? = nil) {
        self.id = id
        self.workItemIdsForLinkWithAutoTest = workItemIdsForLinkWithAutoTest
        self.externalId = externalId
        self.links = links
        self.projectId = projectId
        self.name = name
        self.namespace = namespace
        self.classname = classname
        self.steps = steps
        self.setup = setup
        self.teardown = teardown
        self.title = title
        self.description = description
        self.labels = labels
        self.isFlaky = isFlaky
        self.externalKey = externalKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case workItemIdsForLinkWithAutoTest
        case externalId
        case links
        case projectId
        case name
        case namespace
        case classname
        case steps
        case setup
        case teardown
        case title
        case description
        case labels
        case isFlaky
        case externalKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(workItemIdsForLinkWithAutoTest, forKey: .workItemIdsForLinkWithAutoTest)
        try container.encode(externalId, forKey: .externalId)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encode(projectId, forKey: .projectId)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(namespace, forKey: .namespace)
        try container.encodeIfPresent(classname, forKey: .classname)
        try container.encodeIfPresent(steps, forKey: .steps)
        try container.encodeIfPresent(setup, forKey: .setup)
        try container.encodeIfPresent(teardown, forKey: .teardown)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(labels, forKey: .labels)
        try container.encodeIfPresent(isFlaky, forKey: .isFlaky)
        try container.encodeIfPresent(externalKey, forKey: .externalKey)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension AutoTestPutModel: Identifiable {}
