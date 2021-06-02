//
// FFmpegLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Enum describing the location of the FFmpeg tool. */
public enum FFmpegLocation: String, Codable, CaseIterable {
    case notFound = "NotFound"
    case setByArgument = "SetByArgument"
    case custom = "Custom"
    case system = "System"
}