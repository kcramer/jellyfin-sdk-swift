//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

public struct AlbumInfo: Codable {
    /// Gets or sets the album artist.
    public var albumArtists: [String]?
    /// Gets or sets the artist provider ids.
    public var artistProviderIDs: [String: String]?
    public var indexNumber: Int32?
    public var isAutomated: Bool?
    /// Gets or sets the metadata country code.
    public var metadataCountryCode: String?
    /// Gets or sets the metadata language.
    public var metadataLanguage: String?
    /// Gets or sets the name.
    public var name: String?
    /// Gets or sets the original title.
    public var originalTitle: String?
    public var parentIndexNumber: Int32?
    /// Gets or sets the path.
    public var path: String?
    public var premiereDate: Date?
    /// Gets or sets the provider ids.
    public var providerIDs: [String: String]?
    public var songInfos: [SongInfo]?
    /// Gets or sets the year.
    public var year: Int32?

    public init(
        albumArtists: [String]? = nil,
        artistProviderIDs: [String: String]? = nil,
        indexNumber: Int32? = nil,
        isAutomated: Bool? = nil,
        metadataCountryCode: String? = nil,
        metadataLanguage: String? = nil,
        name: String? = nil,
        originalTitle: String? = nil,
        parentIndexNumber: Int32? = nil,
        path: String? = nil,
        premiereDate: Date? = nil,
        providerIDs: [String: String]? = nil,
        songInfos: [SongInfo]? = nil,
        year: Int32? = nil
    ) {
        self.albumArtists = albumArtists
        self.artistProviderIDs = artistProviderIDs
        self.indexNumber = indexNumber
        self.isAutomated = isAutomated
        self.metadataCountryCode = metadataCountryCode
        self.metadataLanguage = metadataLanguage
        self.name = name
        self.originalTitle = originalTitle
        self.parentIndexNumber = parentIndexNumber
        self.path = path
        self.premiereDate = premiereDate
        self.providerIDs = providerIDs
        self.songInfos = songInfos
        self.year = year
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.albumArtists = try values.decodeIfPresent([String].self, forKey: "AlbumArtists")
        self.artistProviderIDs = try values.decodeIfPresent([String: String].self, forKey: "ArtistProviderIds")
        self.indexNumber = try values.decodeIfPresent(Int32.self, forKey: "IndexNumber")
        self.isAutomated = try values.decodeIfPresent(Bool.self, forKey: "IsAutomated")
        self.metadataCountryCode = try values.decodeIfPresent(String.self, forKey: "MetadataCountryCode")
        self.metadataLanguage = try values.decodeIfPresent(String.self, forKey: "MetadataLanguage")
        self.name = try values.decodeIfPresent(String.self, forKey: "Name")
        self.originalTitle = try values.decodeIfPresent(String.self, forKey: "OriginalTitle")
        self.parentIndexNumber = try values.decodeIfPresent(Int32.self, forKey: "ParentIndexNumber")
        self.path = try values.decodeIfPresent(String.self, forKey: "Path")
        self.premiereDate = try values.decodeIfPresent(Date.self, forKey: "PremiereDate")
        self.providerIDs = try values.decodeIfPresent([String: String].self, forKey: "ProviderIds")
        self.songInfos = try values.decodeIfPresent([SongInfo].self, forKey: "SongInfos")
        self.year = try values.decodeIfPresent(Int32.self, forKey: "Year")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(albumArtists, forKey: "AlbumArtists")
        try values.encodeIfPresent(artistProviderIDs, forKey: "ArtistProviderIds")
        try values.encodeIfPresent(indexNumber, forKey: "IndexNumber")
        try values.encodeIfPresent(isAutomated, forKey: "IsAutomated")
        try values.encodeIfPresent(metadataCountryCode, forKey: "MetadataCountryCode")
        try values.encodeIfPresent(metadataLanguage, forKey: "MetadataLanguage")
        try values.encodeIfPresent(name, forKey: "Name")
        try values.encodeIfPresent(originalTitle, forKey: "OriginalTitle")
        try values.encodeIfPresent(parentIndexNumber, forKey: "ParentIndexNumber")
        try values.encodeIfPresent(path, forKey: "Path")
        try values.encodeIfPresent(premiereDate, forKey: "PremiereDate")
        try values.encodeIfPresent(providerIDs, forKey: "ProviderIds")
        try values.encodeIfPresent(songInfos, forKey: "SongInfos")
        try values.encodeIfPresent(year, forKey: "Year")
    }
}
