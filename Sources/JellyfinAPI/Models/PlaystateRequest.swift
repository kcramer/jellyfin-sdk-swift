//
// PlaystateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PlaystateRequest: Codable, Hashable {

    public var command: PlaystateCommand?
    public var seekPositionTicks: Int64?
    /** Gets or sets the controlling user identifier. */
    public var controllingUserId: String?

    public init(command: PlaystateCommand? = nil, seekPositionTicks: Int64? = nil, controllingUserId: String? = nil) {
        self.command = command
        self.seekPositionTicks = seekPositionTicks
        self.controllingUserId = controllingUserId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case command = "Command"
        case seekPositionTicks = "SeekPositionTicks"
        case controllingUserId = "ControllingUserId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(command, forKey: .command)
        try encoderContainer.encodeIfPresent(seekPositionTicks, forKey: .seekPositionTicks)
        try encoderContainer.encodeIfPresent(controllingUserId, forKey: .controllingUserId)
    }
}