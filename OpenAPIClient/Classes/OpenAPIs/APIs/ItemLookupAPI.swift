//
// ItemLookupAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ItemLookupAPI {
    /**
     Applies search criteria to an item and refreshes metadata.
     
     - parameter itemId: (path) Item id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The remote search result. 
     - parameter replaceAllImages: (query) Optional. Whether or not to replace all images. Default: True. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func applySearchCriteria(itemId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, replaceAllImages: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        applySearchCriteriaWithRequestBuilder(itemId: itemId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, replaceAllImages: replaceAllImages).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Applies search criteria to an item and refreshes metadata.
     - POST /Items/RemoteSearch/Apply/{itemId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The remote search result. 
     - parameter replaceAllImages: (query) Optional. Whether or not to replace all images. Default: True. (optional, default to true)
     - returns: RequestBuilder<Void> 
     */
    open class func applySearchCriteriaWithRequestBuilder(itemId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, replaceAllImages: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/Items/RemoteSearch/Apply/{itemId}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "replaceAllImages": replaceAllImages?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get book remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBookRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getBookRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get book remote search.
     - POST /Items/RemoteSearch/Book
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getBookRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/Book"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get box set remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBoxSetRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getBoxSetRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get box set remote search.
     - POST /Items/RemoteSearch/BoxSet
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getBoxSetRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/BoxSet"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get the item's external id info.
     
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExternalIdInfos(itemId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [ExternalIdInfo]?, _ error: Error?) -> Void)) {
        getExternalIdInfosWithRequestBuilder(itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the item's external id info.
     - GET /Items/{itemId}/ExternalIdInfos
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<[ExternalIdInfo]> 
     */
    open class func getExternalIdInfosWithRequestBuilder(itemId: UUID) -> RequestBuilder<[ExternalIdInfo]> {
        var path = "/Items/{itemId}/ExternalIdInfos"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ExternalIdInfo]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get movie remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMovieRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getMovieRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get movie remote search.
     - POST /Items/RemoteSearch/Movie
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getMovieRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/Movie"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get music album remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMusicAlbumRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getMusicAlbumRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get music album remote search.
     - POST /Items/RemoteSearch/MusicAlbum
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getMusicAlbumRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/MusicAlbum"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get music artist remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMusicArtistRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getMusicArtistRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get music artist remote search.
     - POST /Items/RemoteSearch/MusicArtist
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getMusicArtistRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/MusicArtist"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get music video remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMusicVideoRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getMusicVideoRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get music video remote search.
     - POST /Items/RemoteSearch/MusicVideo
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getMusicVideoRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/MusicVideo"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get person remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPersonRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getPersonRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get person remote search.
     - POST /Items/RemoteSearch/Person
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getPersonRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/Person"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get series remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSeriesRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getSeriesRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get series remote search.
     - POST /Items/RemoteSearch/Series
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getSeriesRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/Series"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get trailer remote search.
     
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTrailerRemoteSearchResults(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [RemoteSearchResult]?, _ error: Error?) -> Void)) {
        getTrailerRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get trailer remote search.
     - POST /Items/RemoteSearch/Trailer
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) Remote search query. 
     - returns: RequestBuilder<[RemoteSearchResult]> 
     */
    open class func getTrailerRemoteSearchResultsWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<[RemoteSearchResult]> {
        let path = "/Items/RemoteSearch/Trailer"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSearchResult]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
