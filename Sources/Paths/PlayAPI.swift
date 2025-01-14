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
    /// Instructs a session to play an item.
    static func play(sessionID: String, parameters: PlayParameters) -> Request<Void> {
        Request(method: "POST", url: "/Sessions/\(sessionID)/Playing", query: parameters.asQuery, id: "Play")
    }

    struct PlayParameters {
        /// Enum PlayCommand.
        public var playCommand: PlayCommand
        public var itemIDs: [String]
        public var startPositionTicks: Int64?
        public var mediaSourceID: String?
        public var audioStreamIndex: Int32?
        public var subtitleStreamIndex: Int32?
        public var startIndex: Int32?

        public typealias PlayCommand = JellyfinAPI.PlayCommand

        public init(
            playCommand: PlayCommand,
            itemIDs: [String],
            startPositionTicks: Int64? = nil,
            mediaSourceID: String? = nil,
            audioStreamIndex: Int32? = nil,
            subtitleStreamIndex: Int32? = nil,
            startIndex: Int32? = nil
        ) {
            self.playCommand = playCommand
            self.itemIDs = itemIDs
            self.startPositionTicks = startPositionTicks
            self.mediaSourceID = mediaSourceID
            self.audioStreamIndex = audioStreamIndex
            self.subtitleStreamIndex = subtitleStreamIndex
            self.startIndex = startIndex
        }

        public var asQuery: [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(playCommand, forKey: "playCommand")
            encoder.encode(itemIDs, forKey: "itemIds")
            encoder.encode(startPositionTicks, forKey: "startPositionTicks")
            encoder.encode(mediaSourceID, forKey: "mediaSourceId")
            encoder.encode(audioStreamIndex, forKey: "audioStreamIndex")
            encoder.encode(subtitleStreamIndex, forKey: "subtitleStreamIndex")
            encoder.encode(startIndex, forKey: "startIndex")
            return encoder.items
        }
    }
}
