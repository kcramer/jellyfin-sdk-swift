//
// CollectionCreationResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CollectionCreationResult: Codable, Hashable {

    public var id: UUID?

    public init(id: UUID? = nil) {
        self.id = id
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
    }



}
