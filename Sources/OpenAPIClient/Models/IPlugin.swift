//
// IPlugin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Defines the MediaBrowser.Common.Plugins.IPlugin. */
public struct IPlugin: Codable, Hashable {

    /** Gets the name of the plugin. */
    public var name: String?
    /** Gets the Description. */
    public var description: String?
    /** Gets the unique id. */
    public var id: UUID?
    /** Gets the plugin version. */
    public var version: Version?
    /** Gets the path to the assembly file. */
    public var assemblyFilePath: String?
    /** Gets a value indicating whether the plugin can be uninstalled. */
    public var canUninstall: Bool?
    /** Gets the full path to the data folder, where the plugin can store any miscellaneous files needed. */
    public var dataFolderPath: String?

    public init(name: String? = nil, description: String? = nil, id: UUID? = nil, version: Version? = nil, assemblyFilePath: String? = nil, canUninstall: Bool? = nil, dataFolderPath: String? = nil) {
        self.name = name
        self.description = description
        self.id = id
        self.version = version
        self.assemblyFilePath = assemblyFilePath
        self.canUninstall = canUninstall
        self.dataFolderPath = dataFolderPath
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case description = "Description"
        case id = "Id"
        case version = "Version"
        case assemblyFilePath = "AssemblyFilePath"
        case canUninstall = "CanUninstall"
        case dataFolderPath = "DataFolderPath"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(assemblyFilePath, forKey: .assemblyFilePath)
        try container.encodeIfPresent(canUninstall, forKey: .canUninstall)
        try container.encodeIfPresent(dataFolderPath, forKey: .dataFolderPath)
    }



}