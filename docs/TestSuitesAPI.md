# TestSuitesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTestPointsToTestSuite**](TestSuitesAPI.md#addtestpointstotestsuite) | **POST** /api/v2/testSuites/{id}/test-points | Add test-points to test suite
[**apiV2TestSuitesIdPatch**](TestSuitesAPI.md#apiv2testsuitesidpatch) | **PATCH** /api/v2/testSuites/{id} | Patch test suite
[**apiV2TestSuitesIdRefreshPost**](TestSuitesAPI.md#apiv2testsuitesidrefreshpost) | **POST** /api/v2/testSuites/{id}/refresh | Refresh test suite. Only dynamic test suites are supported by this method
[**apiV2TestSuitesIdWorkItemsPost**](TestSuitesAPI.md#apiv2testsuitesidworkitemspost) | **POST** /api/v2/testSuites/{id}/workItems | Set work items for test suite
[**apiV2TestSuitesPost**](TestSuitesAPI.md#apiv2testsuitespost) | **POST** /api/v2/testSuites | Create test suite
[**apiV2TestSuitesPut**](TestSuitesAPI.md#apiv2testsuitesput) | **PUT** /api/v2/testSuites | Edit test suite
[**deleteTestSuite**](TestSuitesAPI.md#deletetestsuite) | **DELETE** /api/v2/testSuites/{id} | Delete TestSuite
[**getConfigurationsByTestSuiteId**](TestSuitesAPI.md#getconfigurationsbytestsuiteid) | **GET** /api/v2/testSuites/{id}/configurations | Get Configurations By Id
[**getTestPointsById**](TestSuitesAPI.md#gettestpointsbyid) | **GET** /api/v2/testSuites/{id}/testPoints | Get TestPoints By Id
[**getTestResultsById**](TestSuitesAPI.md#gettestresultsbyid) | **GET** /api/v2/testSuites/{id}/testResults | Get TestResults By Id
[**getTestSuiteById**](TestSuitesAPI.md#gettestsuitebyid) | **GET** /api/v2/testSuites/{id} | Get TestSuite by Id
[**searchWorkItems**](TestSuitesAPI.md#searchworkitems) | **POST** /api/v2/testSuites/{id}/workItems/search | Search WorkItems
[**setConfigurationsByTestSuiteId**](TestSuitesAPI.md#setconfigurationsbytestsuiteid) | **POST** /api/v2/testSuites/{id}/configurations | Set Configurations By TestSuite Id


# **addTestPointsToTestSuite**
```swift
    open class func addTestPointsToTestSuite(id: UUID, workItemSelectModel: WorkItemSelectModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add test-points to test suite

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal identifier
let workItemSelectModel = WorkItemSelectModel(filter: WorkItemFilterModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], links: WorkItemLinkFilterModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]), extractionModel: WorkItemExtractionModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)) // WorkItemSelectModel | Filter object to retrieve work items for test-suite's project (optional)

// Add test-points to test suite
TestSuitesAPI.addTestPointsToTestSuite(id: id, workItemSelectModel: workItemSelectModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal identifier | 
 **workItemSelectModel** | [**WorkItemSelectModel**](WorkItemSelectModel.md) | Filter object to retrieve work items for test-suite&#39;s project | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestSuitesIdPatch**
```swift
    open class func apiV2TestSuitesIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch test suite

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test Suite internal (UUID) identifier
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

// Patch test suite
TestSuitesAPI.apiV2TestSuitesIdPatch(id: id, operation: operation) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test Suite internal (UUID) identifier | 
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestSuitesIdRefreshPost**
```swift
    open class func apiV2TestSuitesIdRefreshPost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Refresh test suite. Only dynamic test suites are supported by this method

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test Suite internal (UUID) identifier

// Refresh test suite. Only dynamic test suites are supported by this method
TestSuitesAPI.apiV2TestSuitesIdRefreshPost(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test Suite internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestSuitesIdWorkItemsPost**
```swift
    open class func apiV2TestSuitesIdWorkItemsPost(id: UUID, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set work items for test suite

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of the test suite
let requestBody = [123] // Set<UUID> |  (optional)

// Set work items for test suite
TestSuitesAPI.apiV2TestSuitesIdWorkItemsPost(id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Unique ID of the test suite | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestSuitesPost**
```swift
    open class func apiV2TestSuitesPost(testSuiteV2PostModel: TestSuiteV2PostModel? = nil, completion: @escaping (_ data: TestSuiteV2GetModel?, _ error: Error?) -> Void)
```

Create test suite

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let testSuiteV2PostModel = TestSuiteV2PostModel(parentId: 123, testPlanId: 123, name: "name_example", type: TestSuiteType(), saveStructure: false, autoRefresh: false) // TestSuiteV2PostModel |  (optional)

// Create test suite
TestSuitesAPI.apiV2TestSuitesPost(testSuiteV2PostModel: testSuiteV2PostModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testSuiteV2PostModel** | [**TestSuiteV2PostModel**](TestSuiteV2PostModel.md) |  | [optional] 

### Return type

[**TestSuiteV2GetModel**](TestSuiteV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestSuitesPut**
```swift
    open class func apiV2TestSuitesPut(testSuiteV2PutModel: TestSuiteV2PutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Edit test suite

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let testSuiteV2PutModel = TestSuiteV2PutModel(id: 123, parentId: 123, name: "name_example", isDeleted: false, autoRefresh: false) // TestSuiteV2PutModel |  (optional)

// Edit test suite
TestSuitesAPI.apiV2TestSuitesPut(testSuiteV2PutModel: testSuiteV2PutModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testSuiteV2PutModel** | [**TestSuiteV2PutModel**](TestSuiteV2PutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTestSuite**
```swift
    open class func deleteTestSuite(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete TestSuite

 Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System deletes test suite  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"

// Delete TestSuite
TestSuitesAPI.deleteTestSuite(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationsByTestSuiteId**
```swift
    open class func getConfigurationsByTestSuiteId(id: UUID, completion: @escaping (_ data: [ConfigurationModel]?, _ error: Error?) -> Void)
```

Get Configurations By Id

 Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search configurations related to the test points  System returns configurations array

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"

// Get Configurations By Id
TestSuitesAPI.getConfigurationsByTestSuiteId(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 

### Return type

[**[ConfigurationModel]**](ConfigurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestPointsById**
```swift
    open class func getTestPointsById(id: UUID, completion: @escaping (_ data: [TestPointByTestSuiteModel]?, _ error: Error?) -> Void)
```

Get TestPoints By Id

 Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System returns test points array

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"

// Get TestPoints By Id
TestSuitesAPI.getTestPointsById(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 

### Return type

[**[TestPointByTestSuiteModel]**](TestPointByTestSuiteModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestResultsById**
```swift
    open class func getTestResultsById(id: UUID, completion: @escaping (_ data: [TestResultV2ShortModel]?, _ error: Error?) -> Void)
```

Get TestResults By Id

 Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search test results related to the test points  System returns test results array

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"

// Get TestResults By Id
TestSuitesAPI.getTestResultsById(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 

### Return type

[**[TestResultV2ShortModel]**](TestResultV2ShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestSuiteById**
```swift
    open class func getTestSuiteById(id: UUID, completion: @escaping (_ data: TestSuiteV2GetModel?, _ error: Error?) -> Void)
```

Get TestSuite by Id

 Use case  User sets test suite identifier  User runs method execution  System search test suite by identifier  System returns test suite

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"

// Get TestSuite by Id
TestSuitesAPI.getTestSuiteById(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 

### Return type

[**TestSuiteV2GetModel**](TestSuiteV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchWorkItems**
```swift
    open class func searchWorkItems(id: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testSuiteWorkItemsSearchModel: TestSuiteWorkItemsSearchModel? = nil, completion: @escaping (_ data: [WorkItemShortModel]?, _ error: Error?) -> Void)
```

Search WorkItems

 Use case  User sets test suite identifier  [Optional] User sets filter  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search work items related to the test points  [Optional] User sets filter, system applies filter  System returns work items array

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testSuiteWorkItemsSearchModel = TestSuiteWorkItemsSearchModel(tagNames: ["tagNames_example"], entityTypes: [WorkItemEntityTypes()], nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], links: WorkItemLinkFilterModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [nil], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]) // TestSuiteWorkItemsSearchModel |  (optional)

// Search WorkItems
TestSuitesAPI.searchWorkItems(id: id, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testSuiteWorkItemsSearchModel: testSuiteWorkItemsSearchModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **testSuiteWorkItemsSearchModel** | [**TestSuiteWorkItemsSearchModel**](TestSuiteWorkItemsSearchModel.md) |  | [optional] 

### Return type

[**[WorkItemShortModel]**](WorkItemShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setConfigurationsByTestSuiteId**
```swift
    open class func setConfigurationsByTestSuiteId(id: UUID, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set Configurations By TestSuite Id

 Use case  User sets test suite identifier  User sets collection of configuration identifiers  User runs method execution  System search test suite by identifier  System search test points related to the test suite  System search configuration  System restores(if exist) or creates test points with listed configuration  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test suite internal (guid format) identifier\"
let requestBody = [123] // Set<UUID> | Collection of configuration identifiers\" (optional)

// Set Configurations By TestSuite Id
TestSuitesAPI.setConfigurationsByTestSuiteId(id: id, requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Test suite internal (guid format) identifier\&quot; | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) | Collection of configuration identifiers\&quot; | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

