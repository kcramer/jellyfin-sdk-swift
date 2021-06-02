//
// TvShowsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class TvShowsAPI {
    /**
     Gets episodes for a tv season.
     
     - parameter seriesId: (path) The series id. 
     - parameter userId: (query) The user id. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)
     - parameter season: (query) Optional filter by season number. (optional)
     - parameter seasonId: (query) Optional. Filter by season id. (optional)
     - parameter isMissing: (query) Optional. Filter by items that are missing episodes or not. (optional)
     - parameter adjacentTo: (query) Optional. Return items that are siblings of a supplied item. (optional)
     - parameter startItemId: (query) Optional. Skip through the list until a given item is found. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter sortBy: (query) Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getEpisodes(seriesId: UUID, userId: UUID? = nil, fields: [ItemFields]? = nil, season: Int? = nil, seasonId: UUID? = nil, isMissing: Bool? = nil, adjacentTo: String? = nil, startItemId: UUID? = nil, startIndex: Int? = nil, limit: Int? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, sortBy: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getEpisodesWithRequestBuilder(seriesId: seriesId, userId: userId, fields: fields, season: season, seasonId: seasonId, isMissing: isMissing, adjacentTo: adjacentTo, startItemId: startItemId, startIndex: startIndex, limit: limit, enableImages: enableImages, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData, sortBy: sortBy).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets episodes for a tv season.
     - GET /Shows/{seriesId}/Episodes
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter seriesId: (path) The series id. 
     - parameter userId: (query) The user id. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)
     - parameter season: (query) Optional filter by season number. (optional)
     - parameter seasonId: (query) Optional. Filter by season id. (optional)
     - parameter isMissing: (query) Optional. Filter by items that are missing episodes or not. (optional)
     - parameter adjacentTo: (query) Optional. Return items that are siblings of a supplied item. (optional)
     - parameter startItemId: (query) Optional. Skip through the list until a given item is found. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter sortBy: (query) Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getEpisodesWithRequestBuilder(seriesId: UUID, userId: UUID? = nil, fields: [ItemFields]? = nil, season: Int? = nil, seasonId: UUID? = nil, isMissing: Bool? = nil, adjacentTo: String? = nil, startItemId: UUID? = nil, startIndex: Int? = nil, limit: Int? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, sortBy: String? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var path = "/Shows/{seriesId}/Episodes"
        let seriesIdPreEscape = "\(APIHelper.mapValueToPathItem(seriesId))"
        let seriesIdPostEscape = seriesIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{seriesId}", with: seriesIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "season": season?.encodeToJSON(),
            "seasonId": seasonId?.encodeToJSON(),
            "isMissing": isMissing?.encodeToJSON(),
            "adjacentTo": adjacentTo?.encodeToJSON(),
            "startItemId": startItemId?.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "sortBy": sortBy?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of next up episodes.
     
     - parameter userId: (query) The user id of the user to get the next up episodes for. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter seriesId: (query) Optional. Filter by series id. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter enableImges: (query) Optional. Include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter enableTotalRecordCount: (query) Whether to enable the total records count. Defaults to true. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNextUp(userId: UUID? = nil, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, seriesId: String? = nil, parentId: UUID? = nil, enableImges: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, enableTotalRecordCount: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getNextUpWithRequestBuilder(userId: userId, startIndex: startIndex, limit: limit, fields: fields, seriesId: seriesId, parentId: parentId, enableImges: enableImges, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData, enableTotalRecordCount: enableTotalRecordCount).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a list of next up episodes.
     - GET /Shows/NextUp
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (query) The user id of the user to get the next up episodes for. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter seriesId: (query) Optional. Filter by series id. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter enableImges: (query) Optional. Include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter enableTotalRecordCount: (query) Whether to enable the total records count. Defaults to true. (optional, default to true)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getNextUpWithRequestBuilder(userId: UUID? = nil, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, seriesId: String? = nil, parentId: UUID? = nil, enableImges: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, enableTotalRecordCount: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let path = "/Shows/NextUp"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "seriesId": seriesId?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "enableImges": enableImges?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "enableTotalRecordCount": enableTotalRecordCount?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets seasons for a tv series.
     
     - parameter seriesId: (path) The series id. 
     - parameter userId: (query) The user id. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)
     - parameter isSpecialSeason: (query) Optional. Filter by special season. (optional)
     - parameter isMissing: (query) Optional. Filter by items that are missing episodes or not. (optional)
     - parameter adjacentTo: (query) Optional. Return items that are siblings of a supplied item. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSeasons(seriesId: UUID, userId: UUID? = nil, fields: [ItemFields]? = nil, isSpecialSeason: Bool? = nil, isMissing: Bool? = nil, adjacentTo: String? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getSeasonsWithRequestBuilder(seriesId: seriesId, userId: userId, fields: fields, isSpecialSeason: isSpecialSeason, isMissing: isMissing, adjacentTo: adjacentTo, enableImages: enableImages, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets seasons for a tv series.
     - GET /Shows/{seriesId}/Seasons
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter seriesId: (path) The series id. 
     - parameter userId: (query) The user id. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)
     - parameter isSpecialSeason: (query) Optional. Filter by special season. (optional)
     - parameter isMissing: (query) Optional. Filter by items that are missing episodes or not. (optional)
     - parameter adjacentTo: (query) Optional. Return items that are siblings of a supplied item. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getSeasonsWithRequestBuilder(seriesId: UUID, userId: UUID? = nil, fields: [ItemFields]? = nil, isSpecialSeason: Bool? = nil, isMissing: Bool? = nil, adjacentTo: String? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var path = "/Shows/{seriesId}/Seasons"
        let seriesIdPreEscape = "\(APIHelper.mapValueToPathItem(seriesId))"
        let seriesIdPostEscape = seriesIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{seriesId}", with: seriesIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "isSpecialSeason": isSpecialSeason?.encodeToJSON(),
            "isMissing": isMissing?.encodeToJSON(),
            "adjacentTo": adjacentTo?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of upcoming episodes.
     
     - parameter userId: (query) The user id of the user to get the upcoming episodes for. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter enableImges: (query) Optional. Include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUpcomingEpisodes(userId: UUID? = nil, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, parentId: UUID? = nil, enableImges: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getUpcomingEpisodesWithRequestBuilder(userId: userId, startIndex: startIndex, limit: limit, fields: fields, parentId: parentId, enableImges: enableImges, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a list of upcoming episodes.
     - GET /Shows/Upcoming
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (query) The user id of the user to get the upcoming episodes for. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter enableImges: (query) Optional. Include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getUpcomingEpisodesWithRequestBuilder(userId: UUID? = nil, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, parentId: UUID? = nil, enableImges: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let path = "/Shows/Upcoming"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "enableImges": enableImges?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}