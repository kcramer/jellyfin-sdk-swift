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
    /// Set channel mappings.
    static func setChannelMapping(_ body: JellyfinAPI.SetChannelMappingDto) -> Request<JellyfinAPI.TunerChannelMapping> {
        Request(method: "POST", url: "/LiveTv/ChannelMappings", body: body, id: "SetChannelMapping")
    }
}
