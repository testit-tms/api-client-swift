//
// TestPointsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TestPointsAPI {

    /**
     Get all test runs which use test point
     
     - parameter id: (path) Test point unique ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestPointsIdTestRunsGet(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TestRunApiResult]?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestPointsIdTestRunsGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all test runs which use test point
     - GET /api/v2/testPoints/{id}/testRuns
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test point unique ID 
     - returns: RequestBuilder<[TestRunApiResult]> 
     */
    open class func apiV2TestPointsIdTestRunsGetWithRequestBuilder(id: UUID) -> RequestBuilder<[TestRunApiResult]> {
        var localVariablePath = "/api/v2/testPoints/{id}/testRuns"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[TestRunApiResult]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get work item represented by test point
     
     - parameter id: (path) Test point unique ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestPointsIdWorkItemGet(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: WorkItemModel?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestPointsIdWorkItemGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get work item represented by test point
     - GET /api/v2/testPoints/{id}/workItem
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test point unique ID 
     - returns: RequestBuilder<WorkItemModel> 
     */
    open class func apiV2TestPointsIdWorkItemGetWithRequestBuilder(id: UUID) -> RequestBuilder<WorkItemModel> {
        var localVariablePath = "/api/v2/testPoints/{id}/workItem"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WorkItemModel>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search for test points and extract IDs only
     
     - parameter skip: (query) Amount of items to be skipped (offset) (optional)
     - parameter take: (query) Amount of items to be taken (limit) (optional)
     - parameter orderBy: (query) SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
     - parameter searchField: (query) Property name for searching (optional)
     - parameter searchValue: (query) Value for searching (optional)
     - parameter testPointFilterRequestModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestPointsSearchIdPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testPointFilterRequestModel: TestPointFilterRequestModel? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [UUID]?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestPointsSearchIdPostWithRequestBuilder(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testPointFilterRequestModel: testPointFilterRequestModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search for test points and extract IDs only
     - POST /api/v2/testPoints/search/id
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - responseHeaders: [Pagination-Skip(Int), Pagination-Take(Int), Pagination-Pages(Int), Pagination-Total-Items(Int)]
     - parameter skip: (query) Amount of items to be skipped (offset) (optional)
     - parameter take: (query) Amount of items to be taken (limit) (optional)
     - parameter orderBy: (query) SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
     - parameter searchField: (query) Property name for searching (optional)
     - parameter searchValue: (query) Value for searching (optional)
     - parameter testPointFilterRequestModel: (body)  (optional)
     - returns: RequestBuilder<[UUID]> 
     */
    open class func apiV2TestPointsSearchIdPostWithRequestBuilder(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testPointFilterRequestModel: TestPointFilterRequestModel? = nil) -> RequestBuilder<[UUID]> {
        let localVariablePath = "/api/v2/testPoints/search/id"
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testPointFilterRequestModel)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Skip": (wrappedValue: skip?.encodeToJSON(), isExplode: true),
            "Take": (wrappedValue: take?.encodeToJSON(), isExplode: true),
            "OrderBy": (wrappedValue: orderBy?.encodeToJSON(), isExplode: true),
            "SearchField": (wrappedValue: searchField?.encodeToJSON(), isExplode: true),
            "SearchValue": (wrappedValue: searchValue?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[UUID]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search for test points
     
     - parameter skip: (query) Amount of items to be skipped (offset) (optional)
     - parameter take: (query) Amount of items to be taken (limit) (optional)
     - parameter orderBy: (query) SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
     - parameter searchField: (query) Property name for searching (optional)
     - parameter searchValue: (query) Value for searching (optional)
     - parameter testPointFilterRequestModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestPointsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testPointFilterRequestModel: TestPointFilterRequestModel? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TestPointShortResponseModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestPointsSearchPostWithRequestBuilder(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testPointFilterRequestModel: testPointFilterRequestModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search for test points
     - POST /api/v2/testPoints/search
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - responseHeaders: [Pagination-Skip(Int), Pagination-Take(Int), Pagination-Pages(Int), Pagination-Total-Items(Int)]
     - parameter skip: (query) Amount of items to be skipped (offset) (optional)
     - parameter take: (query) Amount of items to be taken (limit) (optional)
     - parameter orderBy: (query) SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
     - parameter searchField: (query) Property name for searching (optional)
     - parameter searchValue: (query) Value for searching (optional)
     - parameter testPointFilterRequestModel: (body)  (optional)
     - returns: RequestBuilder<[TestPointShortResponseModel]> 
     */
    open class func apiV2TestPointsSearchPostWithRequestBuilder(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testPointFilterRequestModel: TestPointFilterRequestModel? = nil) -> RequestBuilder<[TestPointShortResponseModel]> {
        let localVariablePath = "/api/v2/testPoints/search"
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testPointFilterRequestModel)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "Skip": (wrappedValue: skip?.encodeToJSON(), isExplode: true),
            "Take": (wrappedValue: take?.encodeToJSON(), isExplode: true),
            "OrderBy": (wrappedValue: orderBy?.encodeToJSON(), isExplode: true),
            "SearchField": (wrappedValue: searchField?.encodeToJSON(), isExplode: true),
            "SearchValue": (wrappedValue: searchValue?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[TestPointShortResponseModel]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
