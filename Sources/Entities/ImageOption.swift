//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

public struct ImageOption: Codable {
    /// Gets or sets the limit.
    public var limit: Int32?
    /// Gets or sets the minimum width.
    public var minWidth: Int32?
    /// Gets or sets the type.
    public var type: ImageType?

    public init(limit: Int32? = nil, minWidth: Int32? = nil, type: ImageType? = nil) {
        self.limit = limit
        self.minWidth = minWidth
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.limit = try values.decodeIfPresent(Int32.self, forKey: "Limit")
        self.minWidth = try values.decodeIfPresent(Int32.self, forKey: "MinWidth")
        self.type = try values.decodeIfPresent(ImageType.self, forKey: "Type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(limit, forKey: "Limit")
        try values.encodeIfPresent(minWidth, forKey: "MinWidth")
        try values.encodeIfPresent(type, forKey: "Type")
    }
}
