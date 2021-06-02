//
// ObjectGroupUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Class GroupUpdate. */
public struct ObjectGroupUpdate: Codable, Hashable {

    /** Gets the group identifier. */
    public var groupId: UUID?
    /** Gets the update type. */
    public var type: GroupUpdateType?
    /** Gets the update data. */
    public var data: AnyCodable?

    public init(groupId: UUID? = nil, type: GroupUpdateType? = nil, data: AnyCodable? = nil) {
        self.groupId = groupId
        self.type = type
        self.data = data
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupId = "GroupId"
        case type = "Type"
        case data = "Data"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(data, forKey: .data)
    }



}
