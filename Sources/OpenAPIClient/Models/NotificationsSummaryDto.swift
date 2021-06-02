//
// NotificationsSummaryDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** The notification summary DTO. */
public struct NotificationsSummaryDto: Codable, Hashable {

    /** Gets or sets the number of unread notifications. */
    public var unreadCount: Int?
    public var maxUnreadNotificationLevel: NotificationLevel?

    public init(unreadCount: Int? = nil, maxUnreadNotificationLevel: NotificationLevel? = nil) {
        self.unreadCount = unreadCount
        self.maxUnreadNotificationLevel = maxUnreadNotificationLevel
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case unreadCount = "UnreadCount"
        case maxUnreadNotificationLevel = "MaxUnreadNotificationLevel"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(unreadCount, forKey: .unreadCount)
        try container.encodeIfPresent(maxUnreadNotificationLevel, forKey: .maxUnreadNotificationLevel)
    }



}