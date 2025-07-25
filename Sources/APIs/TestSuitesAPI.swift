//
// TestSuitesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TestSuitesAPI {

    /**
     Add test-points to test suite
     
     - parameter id: (path) Test suite internal identifier 
     - parameter workItemSelectModel: (body) Filter object to retrieve work items for test-suite&#39;s project (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addTestPointsToTestSuite(id: UUID, workItemSelectModel: WorkItemSelectModel? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return addTestPointsToTestSuiteWithRequestBuilder(id: id, workItemSelectModel: workItemSelectModel).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add test-points to test suite
     - POST /api/v2/testSuites/{id}/test-points
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal identifier 
     - parameter workItemSelectModel: (body) Filter object to retrieve work items for test-suite&#39;s project (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addTestPointsToTestSuiteWithRequestBuilder(id: UUID, workItemSelectModel: WorkItemSelectModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v2/testSuites/{id}/test-points"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: workItemSelectModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Patch test suite
     
     - parameter id: (path) Test Suite internal (UUID) identifier 
     - parameter operation: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestSuitesIdPatch(id: UUID, operation: [Operation]? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestSuitesIdPatchWithRequestBuilder(id: id, operation: operation).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Patch test suite
     - PATCH /api/v2/testSuites/{id}
     - See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test Suite internal (UUID) identifier 
     - parameter operation: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV2TestSuitesIdPatchWithRequestBuilder(id: UUID, operation: [Operation]? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v2/testSuites/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: operation)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Refresh test suite. Only dynamic test suites are supported by this method
     
     - parameter id: (path) Test Suite internal (UUID) identifier 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestSuitesIdRefreshPost(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestSuitesIdRefreshPostWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Refresh test suite. Only dynamic test suites are supported by this method
     - POST /api/v2/testSuites/{id}/refresh
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test Suite internal (UUID) identifier 
     - returns: RequestBuilder<Void> 
     */
    open class func apiV2TestSuitesIdRefreshPostWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v2/testSuites/{id}/refresh"
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Set work items for test suite
     
     - parameter id: (path) Unique ID of the test suite 
     - parameter requestBody: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestSuitesIdWorkItemsPost(id: UUID, requestBody: Set<UUID>? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestSuitesIdWorkItemsPostWithRequestBuilder(id: id, requestBody: requestBody).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set work items for test suite
     - POST /api/v2/testSuites/{id}/workItems
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Unique ID of the test suite 
     - parameter requestBody: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV2TestSuitesIdWorkItemsPostWithRequestBuilder(id: UUID, requestBody: Set<UUID>? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v2/testSuites/{id}/workItems"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create test suite
     
     - parameter testSuiteV2PostModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestSuitesPost(testSuiteV2PostModel: TestSuiteV2PostModel? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: TestSuiteV2GetModel?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestSuitesPostWithRequestBuilder(testSuiteV2PostModel: testSuiteV2PostModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create test suite
     - POST /api/v2/testSuites
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter testSuiteV2PostModel: (body)  (optional)
     - returns: RequestBuilder<TestSuiteV2GetModel> 
     */
    open class func apiV2TestSuitesPostWithRequestBuilder(testSuiteV2PostModel: TestSuiteV2PostModel? = nil) -> RequestBuilder<TestSuiteV2GetModel> {
        let localVariablePath = "/api/v2/testSuites"
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testSuiteV2PostModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TestSuiteV2GetModel>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Edit test suite
     
     - parameter testSuiteV2PutModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV2TestSuitesPut(testSuiteV2PutModel: TestSuiteV2PutModel? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV2TestSuitesPutWithRequestBuilder(testSuiteV2PutModel: testSuiteV2PutModel).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Edit test suite
     - PUT /api/v2/testSuites
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter testSuiteV2PutModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV2TestSuitesPutWithRequestBuilder(testSuiteV2PutModel: TestSuiteV2PutModel? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v2/testSuites"
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testSuiteV2PutModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete TestSuite
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteTestSuite(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteTestSuiteWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete TestSuite
     - DELETE /api/v2/testSuites/{id}
     -  Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System deletes test suite  System returns no content response
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteTestSuiteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v2/testSuites/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Configurations By Id
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getConfigurationsByTestSuiteId(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [ConfigurationModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return getConfigurationsByTestSuiteIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Configurations By Id
     - GET /api/v2/testSuites/{id}/configurations
     -  Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search configurations related to the test points  System returns configurations array
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - returns: RequestBuilder<[ConfigurationModel]> 
     */
    open class func getConfigurationsByTestSuiteIdWithRequestBuilder(id: UUID) -> RequestBuilder<[ConfigurationModel]> {
        var localVariablePath = "/api/v2/testSuites/{id}/configurations"
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

        let localVariableRequestBuilder: RequestBuilder<[ConfigurationModel]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get TestPoints By Id
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTestPointsById(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TestPointByTestSuiteModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return getTestPointsByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get TestPoints By Id
     - GET /api/v2/testSuites/{id}/testPoints
     -  Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System returns test points array
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - returns: RequestBuilder<[TestPointByTestSuiteModel]> 
     */
    open class func getTestPointsByIdWithRequestBuilder(id: UUID) -> RequestBuilder<[TestPointByTestSuiteModel]> {
        var localVariablePath = "/api/v2/testSuites/{id}/testPoints"
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

        let localVariableRequestBuilder: RequestBuilder<[TestPointByTestSuiteModel]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get TestResults By Id
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTestResultsById(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [TestResultV2ShortModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return getTestResultsByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get TestResults By Id
     - GET /api/v2/testSuites/{id}/testResults
     -  Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search test results related to the test points  System returns test results array
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - returns: RequestBuilder<[TestResultV2ShortModel]> 
     */
    open class func getTestResultsByIdWithRequestBuilder(id: UUID) -> RequestBuilder<[TestResultV2ShortModel]> {
        var localVariablePath = "/api/v2/testSuites/{id}/testResults"
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

        let localVariableRequestBuilder: RequestBuilder<[TestResultV2ShortModel]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get TestSuite by Id
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getTestSuiteById(id: UUID, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: TestSuiteV2GetModel?, _ error: Error?) -> Void)) -> RequestTask {
        return getTestSuiteByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get TestSuite by Id
     - GET /api/v2/testSuites/{id}
     -  Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System returns test suite
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - returns: RequestBuilder<TestSuiteV2GetModel> 
     */
    open class func getTestSuiteByIdWithRequestBuilder(id: UUID) -> RequestBuilder<TestSuiteV2GetModel> {
        var localVariablePath = "/api/v2/testSuites/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<TestSuiteV2GetModel>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search WorkItems
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter skip: (query) Amount of items to be skipped (offset) (optional)
     - parameter take: (query) Amount of items to be taken (limit) (optional)
     - parameter orderBy: (query) SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
     - parameter searchField: (query) Property name for searching (optional)
     - parameter searchValue: (query) Value for searching (optional)
     - parameter testSuiteWorkItemsSearchModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func searchWorkItems(id: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testSuiteWorkItemsSearchModel: TestSuiteWorkItemsSearchModel? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: [WorkItemShortModel]?, _ error: Error?) -> Void)) -> RequestTask {
        return searchWorkItemsWithRequestBuilder(id: id, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testSuiteWorkItemsSearchModel: testSuiteWorkItemsSearchModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search WorkItems
     - POST /api/v2/testSuites/{id}/workItems/search
     -  Use case  User sets test suite identifier  [Optional] User sets filter  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search work items related to the test points  [Optional] User sets filter, system applies filter  System returns work items array
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - responseHeaders: [Pagination-Skip(Int), Pagination-Take(Int), Pagination-Pages(Int), Pagination-Total-Items(Int)]
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter skip: (query) Amount of items to be skipped (offset) (optional)
     - parameter take: (query) Amount of items to be taken (limit) (optional)
     - parameter orderBy: (query) SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
     - parameter searchField: (query) Property name for searching (optional)
     - parameter searchValue: (query) Value for searching (optional)
     - parameter testSuiteWorkItemsSearchModel: (body)  (optional)
     - returns: RequestBuilder<[WorkItemShortModel]> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func searchWorkItemsWithRequestBuilder(id: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testSuiteWorkItemsSearchModel: TestSuiteWorkItemsSearchModel? = nil) -> RequestBuilder<[WorkItemShortModel]> {
        var localVariablePath = "/api/v2/testSuites/{id}/workItems/search"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testSuiteWorkItemsSearchModel)

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

        let localVariableRequestBuilder: RequestBuilder<[WorkItemShortModel]>.Type = TestitApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Set Configurations By TestSuite Id
     
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter requestBody: (body) Collection of configuration identifiers\&quot; (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func setConfigurationsByTestSuiteId(id: UUID, requestBody: Set<UUID>? = nil, apiResponseQueue: DispatchQueue = TestitApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return setConfigurationsByTestSuiteIdWithRequestBuilder(id: id, requestBody: requestBody).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Configurations By TestSuite Id
     - POST /api/v2/testSuites/{id}/configurations
     -  Use case  User sets test suite identifier  User sets collection of configuration identifiers  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search configuration  System restores(if exist) or creates test points with listed configuration  System returns no content response
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: Bearer or PrivateToken
     - parameter id: (path) Test suite internal (guid format) identifier\&quot; 
     - parameter requestBody: (body) Collection of configuration identifiers\&quot; (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func setConfigurationsByTestSuiteIdWithRequestBuilder(id: UUID, requestBody: Set<UUID>? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v2/testSuites/{id}/configurations"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = TestitApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TestitApiClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
