//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation
import Get
import URLQueryEncoder

public extension Paths {
    /// Get person image by name.
    static func getPersonImage(name: String, imageType: String, parameters: GetPersonImageParameters? = nil) -> Request<Data> {
        Request(method: "GET", url: "/Persons/\(name)/Images/\(imageType)", query: parameters?.asQuery, id: "GetPersonImage")
    }

    struct GetPersonImageParameters {
        public var tag: String?
        public var format: Format?
        public var maxWidth: Int32?
        public var maxHeight: Int32?
        public var percentPlayed: Double?
        public var unplayedCount: Int32?
        public var width: Int32?
        public var height: Int32?
        public var quality: Int32?
        public var fillWidth: Int32?
        public var fillHeight: Int32?
        public var isCropWhitespace: Bool?
        public var isAddPlayedIndicator: Bool?
        public var blur: Int32?
        public var backgroundColor: String?
        public var foregroundLayer: String?
        public var imageIndex: Int32?

        public typealias Format = JellyfinAPI.ImageFormat

        public init(
            tag: String? = nil,
            format: Format? = nil,
            maxWidth: Int32? = nil,
            maxHeight: Int32? = nil,
            percentPlayed: Double? = nil,
            unplayedCount: Int32? = nil,
            width: Int32? = nil,
            height: Int32? = nil,
            quality: Int32? = nil,
            fillWidth: Int32? = nil,
            fillHeight: Int32? = nil,
            isCropWhitespace: Bool? = nil,
            isAddPlayedIndicator: Bool? = nil,
            blur: Int32? = nil,
            backgroundColor: String? = nil,
            foregroundLayer: String? = nil,
            imageIndex: Int32? = nil
        ) {
            self.tag = tag
            self.format = format
            self.maxWidth = maxWidth
            self.maxHeight = maxHeight
            self.percentPlayed = percentPlayed
            self.unplayedCount = unplayedCount
            self.width = width
            self.height = height
            self.quality = quality
            self.fillWidth = fillWidth
            self.fillHeight = fillHeight
            self.isCropWhitespace = isCropWhitespace
            self.isAddPlayedIndicator = isAddPlayedIndicator
            self.blur = blur
            self.backgroundColor = backgroundColor
            self.foregroundLayer = foregroundLayer
            self.imageIndex = imageIndex
        }

        public var asQuery: [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(tag, forKey: "tag")
            encoder.encode(format, forKey: "format")
            encoder.encode(maxWidth, forKey: "maxWidth")
            encoder.encode(maxHeight, forKey: "maxHeight")
            encoder.encode(percentPlayed, forKey: "percentPlayed")
            encoder.encode(unplayedCount, forKey: "unplayedCount")
            encoder.encode(width, forKey: "width")
            encoder.encode(height, forKey: "height")
            encoder.encode(quality, forKey: "quality")
            encoder.encode(fillWidth, forKey: "fillWidth")
            encoder.encode(fillHeight, forKey: "fillHeight")
            encoder.encode(isCropWhitespace, forKey: "cropWhitespace")
            encoder.encode(isAddPlayedIndicator, forKey: "addPlayedIndicator")
            encoder.encode(blur, forKey: "blur")
            encoder.encode(backgroundColor, forKey: "backgroundColor")
            encoder.encode(foregroundLayer, forKey: "foregroundLayer")
            encoder.encode(imageIndex, forKey: "imageIndex")
            return encoder.items
        }
    }
}
