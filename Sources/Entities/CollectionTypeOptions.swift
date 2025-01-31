//
// jellyfin-sdk-swift is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2022 Jellyfin & Jellyfin Contributors
//

import Foundation

public enum CollectionTypeOptions: String, Codable, CaseIterable {
    case movies = "Movies"
    case tvShows = "TvShows"
    case music = "Music"
    case musicVideos = "MusicVideos"
    case homeVideos = "HomeVideos"
    case boxSets = "BoxSets"
    case books = "Books"
    case mixed = "Mixed"
}
