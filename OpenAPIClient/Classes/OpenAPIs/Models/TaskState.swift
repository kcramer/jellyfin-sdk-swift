//
// TaskState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Enum TaskState. */
public enum TaskState: String, Codable, CaseIterable {
    case idle = "Idle"
    case cancelling = "Cancelling"
    case running = "Running"
}
