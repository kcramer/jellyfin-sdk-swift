//
// SystemInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class SystemInfo. */
public struct SystemInfo: Codable, Hashable {

    /** Gets or sets the local address. */
    public var localAddress: String?
    /** Gets or sets the name of the server. */
    public var serverName: String?
    /** Gets or sets the server version. */
    public var version: String?
    /** Gets or sets the product name. This is the AssemblyProduct name. */
    public var productName: String?
    /** Gets or sets the operating system. */
    public var operatingSystem: String?
    /** Gets or sets the id. */
    public var id: String?
    /** Gets or sets a value indicating whether the startup wizard is completed. */
    public var startupWizardCompleted: Bool?
    /** Gets or sets the display name of the operating system. */
    public var operatingSystemDisplayName: String?
    /** Get or sets the package name. */
    public var packageName: String?
    /** Gets or sets a value indicating whether this instance has pending restart. */
    public var hasPendingRestart: Bool?
    public var isShuttingDown: Bool?
    /** Gets or sets a value indicating whether [supports library monitor]. */
    public var supportsLibraryMonitor: Bool?
    /** Gets or sets the web socket port number. */
    public var webSocketPortNumber: Int?
    /** Gets or sets the completed installations. */
    public var completedInstallations: [InstallationInfo]?
    /** Gets or sets a value indicating whether this instance can self restart. */
    public var canSelfRestart: Bool?
    public var canLaunchWebBrowser: Bool?
    /** Gets or sets the program data path. */
    public var programDataPath: String?
    /** Gets or sets the web UI resources path. */
    public var webPath: String?
    /** Gets or sets the items by name path. */
    public var itemsByNamePath: String?
    /** Gets or sets the cache path. */
    public var cachePath: String?
    /** Gets or sets the log path. */
    public var logPath: String?
    /** Gets or sets the internal metadata path. */
    public var internalMetadataPath: String?
    /** Gets or sets the transcode path. */
    public var transcodingTempPath: String?
    /** Gets or sets a value indicating whether this instance has update available. */
    public var hasUpdateAvailable: Bool?
    public var encoderLocation: FFmpegLocation?
    public var systemArchitecture: Architecture?

    public init(localAddress: String? = nil, serverName: String? = nil, version: String? = nil, productName: String? = nil, operatingSystem: String? = nil, id: String? = nil, startupWizardCompleted: Bool? = nil, operatingSystemDisplayName: String? = nil, packageName: String? = nil, hasPendingRestart: Bool? = nil, isShuttingDown: Bool? = nil, supportsLibraryMonitor: Bool? = nil, webSocketPortNumber: Int? = nil, completedInstallations: [InstallationInfo]? = nil, canSelfRestart: Bool? = nil, canLaunchWebBrowser: Bool? = nil, programDataPath: String? = nil, webPath: String? = nil, itemsByNamePath: String? = nil, cachePath: String? = nil, logPath: String? = nil, internalMetadataPath: String? = nil, transcodingTempPath: String? = nil, hasUpdateAvailable: Bool? = nil, encoderLocation: FFmpegLocation? = nil, systemArchitecture: Architecture? = nil) {
        self.localAddress = localAddress
        self.serverName = serverName
        self.version = version
        self.productName = productName
        self.operatingSystem = operatingSystem
        self.id = id
        self.startupWizardCompleted = startupWizardCompleted
        self.operatingSystemDisplayName = operatingSystemDisplayName
        self.packageName = packageName
        self.hasPendingRestart = hasPendingRestart
        self.isShuttingDown = isShuttingDown
        self.supportsLibraryMonitor = supportsLibraryMonitor
        self.webSocketPortNumber = webSocketPortNumber
        self.completedInstallations = completedInstallations
        self.canSelfRestart = canSelfRestart
        self.canLaunchWebBrowser = canLaunchWebBrowser
        self.programDataPath = programDataPath
        self.webPath = webPath
        self.itemsByNamePath = itemsByNamePath
        self.cachePath = cachePath
        self.logPath = logPath
        self.internalMetadataPath = internalMetadataPath
        self.transcodingTempPath = transcodingTempPath
        self.hasUpdateAvailable = hasUpdateAvailable
        self.encoderLocation = encoderLocation
        self.systemArchitecture = systemArchitecture
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case localAddress = "LocalAddress"
        case serverName = "ServerName"
        case version = "Version"
        case productName = "ProductName"
        case operatingSystem = "OperatingSystem"
        case id = "Id"
        case startupWizardCompleted = "StartupWizardCompleted"
        case operatingSystemDisplayName = "OperatingSystemDisplayName"
        case packageName = "PackageName"
        case hasPendingRestart = "HasPendingRestart"
        case isShuttingDown = "IsShuttingDown"
        case supportsLibraryMonitor = "SupportsLibraryMonitor"
        case webSocketPortNumber = "WebSocketPortNumber"
        case completedInstallations = "CompletedInstallations"
        case canSelfRestart = "CanSelfRestart"
        case canLaunchWebBrowser = "CanLaunchWebBrowser"
        case programDataPath = "ProgramDataPath"
        case webPath = "WebPath"
        case itemsByNamePath = "ItemsByNamePath"
        case cachePath = "CachePath"
        case logPath = "LogPath"
        case internalMetadataPath = "InternalMetadataPath"
        case transcodingTempPath = "TranscodingTempPath"
        case hasUpdateAvailable = "HasUpdateAvailable"
        case encoderLocation = "EncoderLocation"
        case systemArchitecture = "SystemArchitecture"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(localAddress, forKey: .localAddress)
        try encoderContainer.encodeIfPresent(serverName, forKey: .serverName)
        try encoderContainer.encodeIfPresent(version, forKey: .version)
        try encoderContainer.encodeIfPresent(productName, forKey: .productName)
        try encoderContainer.encodeIfPresent(operatingSystem, forKey: .operatingSystem)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(startupWizardCompleted, forKey: .startupWizardCompleted)
        try encoderContainer.encodeIfPresent(operatingSystemDisplayName, forKey: .operatingSystemDisplayName)
        try encoderContainer.encodeIfPresent(packageName, forKey: .packageName)
        try encoderContainer.encodeIfPresent(hasPendingRestart, forKey: .hasPendingRestart)
        try encoderContainer.encodeIfPresent(isShuttingDown, forKey: .isShuttingDown)
        try encoderContainer.encodeIfPresent(supportsLibraryMonitor, forKey: .supportsLibraryMonitor)
        try encoderContainer.encodeIfPresent(webSocketPortNumber, forKey: .webSocketPortNumber)
        try encoderContainer.encodeIfPresent(completedInstallations, forKey: .completedInstallations)
        try encoderContainer.encodeIfPresent(canSelfRestart, forKey: .canSelfRestart)
        try encoderContainer.encodeIfPresent(canLaunchWebBrowser, forKey: .canLaunchWebBrowser)
        try encoderContainer.encodeIfPresent(programDataPath, forKey: .programDataPath)
        try encoderContainer.encodeIfPresent(webPath, forKey: .webPath)
        try encoderContainer.encodeIfPresent(itemsByNamePath, forKey: .itemsByNamePath)
        try encoderContainer.encodeIfPresent(cachePath, forKey: .cachePath)
        try encoderContainer.encodeIfPresent(logPath, forKey: .logPath)
        try encoderContainer.encodeIfPresent(internalMetadataPath, forKey: .internalMetadataPath)
        try encoderContainer.encodeIfPresent(transcodingTempPath, forKey: .transcodingTempPath)
        try encoderContainer.encodeIfPresent(hasUpdateAvailable, forKey: .hasUpdateAvailable)
        try encoderContainer.encodeIfPresent(encoderLocation, forKey: .encoderLocation)
        try encoderContainer.encodeIfPresent(systemArchitecture, forKey: .systemArchitecture)
    }
}