# TestRunsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TestRunsDelete**](TestRunsAPI.md#apiv2testrunsdelete) | **DELETE** /api/v2/testRuns | Delete multiple test runs
[**apiV2TestRunsIdAutoTestsNamespacesGet**](TestRunsAPI.md#apiv2testrunsidautotestsnamespacesget) | **GET** /api/v2/testRuns/{id}/autoTestsNamespaces | Get autotest classes and namespaces in test run
[**apiV2TestRunsIdDelete**](TestRunsAPI.md#apiv2testrunsiddelete) | **DELETE** /api/v2/testRuns/{id} | Delete test run
[**apiV2TestRunsIdPurgePost**](TestRunsAPI.md#apiv2testrunsidpurgepost) | **POST** /api/v2/testRuns/{id}/purge | Permanently delete test run from archive
[**apiV2TestRunsIdRerunsPost**](TestRunsAPI.md#apiv2testrunsidrerunspost) | **POST** /api/v2/testRuns/{id}/reruns | Manual autotests rerun in test run
[**apiV2TestRunsIdRestorePost**](TestRunsAPI.md#apiv2testrunsidrestorepost) | **POST** /api/v2/testRuns/{id}/restore | Restore test run from the archive
[**apiV2TestRunsIdStatisticsFilterPost**](TestRunsAPI.md#apiv2testrunsidstatisticsfilterpost) | **POST** /api/v2/testRuns/{id}/statistics/filter | Search for the test run test results and build statistics
[**apiV2TestRunsIdTestPointsResultsGet**](TestRunsAPI.md#apiv2testrunsidtestpointsresultsget) | **GET** /api/v2/testRuns/{id}/testPoints/results | Get test results from the test run grouped by test points
[**apiV2TestRunsIdTestResultsBulkPut**](TestRunsAPI.md#apiv2testrunsidtestresultsbulkput) | **PUT** /api/v2/testRuns/{id}/testResults/bulk | Partial edit of multiple test results in the test run
[**apiV2TestRunsIdTestResultsLastModifiedModificationDateGet**](TestRunsAPI.md#apiv2testrunsidtestresultslastmodifiedmodificationdateget) | **GET** /api/v2/testRuns/{id}/testResults/lastModified/modificationDate | Get modification date of last test result of the test run
[**apiV2TestRunsPurgeBulkPost**](TestRunsAPI.md#apiv2testrunspurgebulkpost) | **POST** /api/v2/testRuns/purge/bulk | Permanently delete multiple test runs from archive
[**apiV2TestRunsRestoreBulkPost**](TestRunsAPI.md#apiv2testrunsrestorebulkpost) | **POST** /api/v2/testRuns/restore/bulk | Restore multiple test runs from the archive
[**apiV2TestRunsSearchPost**](TestRunsAPI.md#apiv2testrunssearchpost) | **POST** /api/v2/testRuns/search | Search for test runs
[**apiV2TestRunsUpdateMultiplePost**](TestRunsAPI.md#apiv2testrunsupdatemultiplepost) | **POST** /api/v2/testRuns/updateMultiple | Update multiple test runs
[**completeTestRun**](TestRunsAPI.md#completetestrun) | **POST** /api/v2/testRuns/{id}/complete | Complete TestRun
[**createAndFillByAutoTests**](TestRunsAPI.md#createandfillbyautotests) | **POST** /api/v2/testRuns/byAutoTests | Create test runs based on autotests and configurations
[**createAndFillByConfigurations**](TestRunsAPI.md#createandfillbyconfigurations) | **POST** /api/v2/testRuns/byConfigurations | Create test runs picking the needed test points
[**createAndFillByWorkItems**](TestRunsAPI.md#createandfillbyworkitems) | **POST** /api/v2/testRuns/byWorkItems | Create test run based on configurations and work items
[**createEmpty**](TestRunsAPI.md#createempty) | **POST** /api/v2/testRuns | Create empty TestRun
[**getTestRunById**](TestRunsAPI.md#gettestrunbyid) | **GET** /api/v2/testRuns/{id} | Get TestRun by Id
[**setAutoTestResultsForTestRun**](TestRunsAPI.md#setautotestresultsfortestrun) | **POST** /api/v2/testRuns/{id}/testResults | Send test results to the test runs in the system
[**startTestRun**](TestRunsAPI.md#starttestrun) | **POST** /api/v2/testRuns/{id}/start | Start TestRun
[**stopTestRun**](TestRunsAPI.md#stoptestrun) | **POST** /api/v2/testRuns/{id}/stop | Stop TestRun
[**updateEmpty**](TestRunsAPI.md#updateempty) | **PUT** /api/v2/testRuns | Update empty TestRun


# **apiV2TestRunsDelete**
```swift
    open class func apiV2TestRunsDelete(testRunSelectApiModel: TestRunSelectApiModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Delete multiple test runs

 Use case   User sets selection parameters of test runs   System search and delete collection of test runs   System returns the number of deleted test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let testRunSelectApiModel = TestRunSelectApiModel(filter: TestRunFilterApiModel(projectIds: [123], name: "name_example", states: [TestRunState()], statusCodes: ["statusCodes_example"], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], testResultsStatusCodes: ["testResultsStatusCodes_example"], failureCategory: [FailureCategory()], completedDate: nil, testResultsConfigurationIds: [123]), extractionModel: TestRunExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestRunSelectApiModel |  (optional)

// Delete multiple test runs
TestRunsAPI.apiV2TestRunsDelete(testRunSelectApiModel: testRunSelectApiModel) { (response, error) in
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
 **testRunSelectApiModel** | [**TestRunSelectApiModel**](TestRunSelectApiModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdAutoTestsNamespacesGet**
```swift
    open class func apiV2TestRunsIdAutoTestsNamespacesGet(id: UUID, completion: @escaping (_ data: AutoTestNamespacesCountResponse?, _ error: Error?) -> Void)
```

Get autotest classes and namespaces in test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Get autotest classes and namespaces in test run
TestRunsAPI.apiV2TestRunsIdAutoTestsNamespacesGet(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**AutoTestNamespacesCountResponse**](AutoTestNamespacesCountResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdDelete**
```swift
    open class func apiV2TestRunsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete test run

 Use case   User sets test run internal (guid format) identifier   System search and delete test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test run internal (UUID) identifier

// Delete test run
TestRunsAPI.apiV2TestRunsIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** | Test run internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdPurgePost**
```swift
    open class func apiV2TestRunsIdPurgePost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently delete test run from archive

 Use case   User sets archived test run internal (guid format) identifier   System search and purge archived test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test run internal (UUID) identifier

// Permanently delete test run from archive
TestRunsAPI.apiV2TestRunsIdPurgePost(id: id) { (response, error) in
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
 **id** | **UUID** | Test run internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdRerunsPost**
```swift
    open class func apiV2TestRunsIdRerunsPost(id: UUID, manualRerunSelectTestResultsApiModel: ManualRerunSelectTestResultsApiModel? = nil, completion: @escaping (_ data: ManualRerunApiResult?, _ error: Error?) -> Void)
```

Manual autotests rerun in test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 
let manualRerunSelectTestResultsApiModel = ManualRerunSelectTestResultsApiModel(filter: TestResultsFilterApiModel(configurationIds: [123], outcomes: [TestResultOutcome()], statusCodes: ["statusCodes_example"], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example", autoTestGlobalIds: [123], name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, startedOn: nil, completedOn: nil, duration: Int64RangeSelectorModel(from: 123, to: 123), resultReasons: ["resultReasons_example"], testRunIds: [123]), extractionModel: ManualRerunTestResultApiModel(testResultIds: GuidExtractionModel(include: [123], exclude: [123]))) // ManualRerunSelectTestResultsApiModel |  (optional)

// Manual autotests rerun in test run
TestRunsAPI.apiV2TestRunsIdRerunsPost(id: id, manualRerunSelectTestResultsApiModel: manualRerunSelectTestResultsApiModel) { (response, error) in
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
 **id** | **UUID** |  | 
 **manualRerunSelectTestResultsApiModel** | [**ManualRerunSelectTestResultsApiModel**](ManualRerunSelectTestResultsApiModel.md) |  | [optional] 

### Return type

[**ManualRerunApiResult**](ManualRerunApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdRestorePost**
```swift
    open class func apiV2TestRunsIdRestorePost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore test run from the archive

 Use case   User sets archived test run internal (guid format) identifier   System search and restore test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Unique ID of the test run

// Restore test run from the archive
TestRunsAPI.apiV2TestRunsIdRestorePost(id: id) { (response, error) in
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
 **id** | **UUID** | Unique ID of the test run | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdStatisticsFilterPost**
```swift
    open class func apiV2TestRunsIdStatisticsFilterPost(id: UUID, testRunStatisticsFilterApiModel: TestRunStatisticsFilterApiModel? = nil, completion: @escaping (_ data: TestResultsStatisticsApiResult?, _ error: Error?) -> Void)
```

Search for the test run test results and build statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test run unique ID
let testRunStatisticsFilterApiModel = TestRunStatisticsFilterApiModel(configurationIds: [123], outcomes: [TestResultOutcome()], statusCodes: ["statusCodes_example"], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example") // TestRunStatisticsFilterApiModel |  (optional)

// Search for the test run test results and build statistics
TestRunsAPI.apiV2TestRunsIdStatisticsFilterPost(id: id, testRunStatisticsFilterApiModel: testRunStatisticsFilterApiModel) { (response, error) in
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
 **id** | **UUID** | Test run unique ID | 
 **testRunStatisticsFilterApiModel** | [**TestRunStatisticsFilterApiModel**](TestRunStatisticsFilterApiModel.md) |  | [optional] 

### Return type

[**TestResultsStatisticsApiResult**](TestResultsStatisticsApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdTestPointsResultsGet**
```swift
    open class func apiV2TestRunsIdTestPointsResultsGet(id: UUID, completion: @escaping (_ data: [TestPointResultApiResult]?, _ error: Error?) -> Void)
```

Get test results from the test run grouped by test points

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test run unique ID

// Get test results from the test run grouped by test points
TestRunsAPI.apiV2TestRunsIdTestPointsResultsGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test run unique ID | 

### Return type

[**[TestPointResultApiResult]**](TestPointResultApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdTestResultsBulkPut**
```swift
    open class func apiV2TestRunsIdTestResultsBulkPut(id: UUID, testRunTestResultsPartialBulkSetModel: TestRunTestResultsPartialBulkSetModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Partial edit of multiple test results in the test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test run unique ID
let testRunTestResultsPartialBulkSetModel = TestRunTestResultsPartialBulkSetModel(selector: TestRunTestResultsSelectModel(filter: TestResultsLocalFilterModel(configurationIds: [123], outcomes: [TestResultOutcome()], statusCodes: ["statusCodes_example"], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example"), testResultIdsExtractionModel: GuidExtractionModel(include: [123], exclude: [123])), resultReasonIds: [123], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], comment: "comment_example", attachmentIds: [123]) // TestRunTestResultsPartialBulkSetModel |  (optional)

// Partial edit of multiple test results in the test run
TestRunsAPI.apiV2TestRunsIdTestResultsBulkPut(id: id, testRunTestResultsPartialBulkSetModel: testRunTestResultsPartialBulkSetModel) { (response, error) in
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
 **id** | **UUID** | Test run unique ID | 
 **testRunTestResultsPartialBulkSetModel** | [**TestRunTestResultsPartialBulkSetModel**](TestRunTestResultsPartialBulkSetModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdTestResultsLastModifiedModificationDateGet**
```swift
    open class func apiV2TestRunsIdTestResultsLastModifiedModificationDateGet(id: UUID, completion: @escaping (_ data: Date?, _ error: Error?) -> Void)
```

Get modification date of last test result of the test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test run unique ID

// Get modification date of last test result of the test run
TestRunsAPI.apiV2TestRunsIdTestResultsLastModifiedModificationDateGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test run unique ID | 

### Return type

**Date**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsPurgeBulkPost**
```swift
    open class func apiV2TestRunsPurgeBulkPost(testRunSelectApiModel: TestRunSelectApiModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Permanently delete multiple test runs from archive

 Use case   User sets selection parameters of archived test runs   System search and delete collection of archived test runs   System returns the number of deleted archived test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let testRunSelectApiModel = TestRunSelectApiModel(filter: TestRunFilterApiModel(projectIds: [123], name: "name_example", states: [TestRunState()], statusCodes: ["statusCodes_example"], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], testResultsStatusCodes: ["testResultsStatusCodes_example"], failureCategory: [FailureCategory()], completedDate: nil, testResultsConfigurationIds: [123]), extractionModel: TestRunExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestRunSelectApiModel |  (optional)

// Permanently delete multiple test runs from archive
TestRunsAPI.apiV2TestRunsPurgeBulkPost(testRunSelectApiModel: testRunSelectApiModel) { (response, error) in
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
 **testRunSelectApiModel** | [**TestRunSelectApiModel**](TestRunSelectApiModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsRestoreBulkPost**
```swift
    open class func apiV2TestRunsRestoreBulkPost(testRunSelectApiModel: TestRunSelectApiModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Restore multiple test runs from the archive

 Use case   User sets selection parameters of archived test runs   System search and restore collection of archived test runs   System returns the number of restored test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let testRunSelectApiModel = TestRunSelectApiModel(filter: TestRunFilterApiModel(projectIds: [123], name: "name_example", states: [TestRunState()], statusCodes: ["statusCodes_example"], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], testResultsStatusCodes: ["testResultsStatusCodes_example"], failureCategory: [FailureCategory()], completedDate: nil, testResultsConfigurationIds: [123]), extractionModel: TestRunExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestRunSelectApiModel |  (optional)

// Restore multiple test runs from the archive
TestRunsAPI.apiV2TestRunsRestoreBulkPost(testRunSelectApiModel: testRunSelectApiModel) { (response, error) in
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
 **testRunSelectApiModel** | [**TestRunSelectApiModel**](TestRunSelectApiModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsSearchPost**
```swift
    open class func apiV2TestRunsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testRunFilterApiModel: TestRunFilterApiModel? = nil, completion: @escaping (_ data: [TestRunShortApiResult]?, _ error: Error?) -> Void)
```

Search for test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testRunFilterApiModel = TestRunFilterApiModel(projectIds: [123], name: "name_example", states: [TestRunState()], statusCodes: ["statusCodes_example"], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], testResultsStatusCodes: ["testResultsStatusCodes_example"], failureCategory: [FailureCategory()], completedDate: nil, testResultsConfigurationIds: [123]) // TestRunFilterApiModel |  (optional)

// Search for test runs
TestRunsAPI.apiV2TestRunsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testRunFilterApiModel: testRunFilterApiModel) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **testRunFilterApiModel** | [**TestRunFilterApiModel**](TestRunFilterApiModel.md) |  | [optional] 

### Return type

[**[TestRunShortApiResult]**](TestRunShortApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsUpdateMultiplePost**
```swift
    open class func apiV2TestRunsUpdateMultiplePost(updateMultipleTestRunsApiModel: UpdateMultipleTestRunsApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update multiple test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMultipleTestRunsApiModel = UpdateMultipleTestRunsApiModel(selectModel: TestRunSelectApiModel(filter: TestRunFilterApiModel(projectIds: [123], name: "name_example", states: [TestRunState()], statusCodes: ["statusCodes_example"], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], testResultsStatusCodes: ["testResultsStatusCodes_example"], failureCategory: [FailureCategory()], completedDate: nil, testResultsConfigurationIds: [123]), extractionModel: TestRunExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123]))), description: "description_example", attachmentUpdateScheme: UpdateMultipleAttachmentsApiModel(action: ActionUpdate(), attachmentIds: [123]), linkUpdateScheme: UpdateMultipleLinksApiModel(action: nil, links: [CreateLinkApiModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)])) // UpdateMultipleTestRunsApiModel |  (optional)

// Update multiple test runs
TestRunsAPI.apiV2TestRunsUpdateMultiplePost(updateMultipleTestRunsApiModel: updateMultipleTestRunsApiModel) { (response, error) in
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
 **updateMultipleTestRunsApiModel** | [**UpdateMultipleTestRunsApiModel**](UpdateMultipleTestRunsApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeTestRun**
```swift
    open class func completeTestRun(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Complete TestRun

 Use case   User sets test run identifier   User runs method execution   System completes test run   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test Run internal identifier (GUID format)

// Complete TestRun
TestRunsAPI.completeTestRun(id: id) { (response, error) in
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
 **id** | **UUID** | Test Run internal identifier (GUID format) | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAndFillByAutoTests**
```swift
    open class func createAndFillByAutoTests(createTestRunAndFillByAutoTestsApiModel: CreateTestRunAndFillByAutoTestsApiModel? = nil, completion: @escaping (_ data: TestRunV2ApiResult?, _ error: Error?) -> Void)
```

Create test runs based on autotests and configurations

This method creates a test run based on an autotest and a configuration.  The difference between the `POST /api/v2/testRuns/byWorkItems` and `POST /api/v2/testRuns/byConfigurations` methods is  that in this method there is no need to create a test plan and work items (test cases and checklists).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTestRunAndFillByAutoTestsApiModel = CreateTestRunAndFillByAutoTestsApiModel(projectId: 123, name: "name_example", configurationIds: [123], autoTestExternalIds: ["autoTestExternalIds_example"], description: "description_example", launchSource: "launchSource_example", attachments: [AssignAttachmentApiModel(id: 123)], links: [CreateLinkApiModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // CreateTestRunAndFillByAutoTestsApiModel |  (optional)

// Create test runs based on autotests and configurations
TestRunsAPI.createAndFillByAutoTests(createTestRunAndFillByAutoTestsApiModel: createTestRunAndFillByAutoTestsApiModel) { (response, error) in
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
 **createTestRunAndFillByAutoTestsApiModel** | [**CreateTestRunAndFillByAutoTestsApiModel**](CreateTestRunAndFillByAutoTestsApiModel.md) |  | [optional] 

### Return type

[**TestRunV2ApiResult**](TestRunV2ApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAndFillByConfigurations**
```swift
    open class func createAndFillByConfigurations(createTestRunAndFillByConfigurationsApiModel: CreateTestRunAndFillByConfigurationsApiModel? = nil, completion: @escaping (_ data: TestRunV2ApiResult?, _ error: Error?) -> Void)
```

Create test runs picking the needed test points

This method creates a test run based on a combination of a configuration and a work item(test case or checklist).  Before you create a test run using this method, make sure to create a test plan. Work items must be automated.  This method is different from the `POST /api/v2/testRuns/byWorkItems` method because of the ability to send a  jagged array within the \"<b>testPointSelectors</b>\" parameter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTestRunAndFillByConfigurationsApiModel = CreateTestRunAndFillByConfigurationsApiModel(projectId: 123, testPlanId: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AssignAttachmentApiModel(id: 123)], links: [CreateLinkApiModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], testPointSelectors: [TestPointSelector(configurationId: 123, workItemIds: [123])]) // CreateTestRunAndFillByConfigurationsApiModel |  (optional)

// Create test runs picking the needed test points
TestRunsAPI.createAndFillByConfigurations(createTestRunAndFillByConfigurationsApiModel: createTestRunAndFillByConfigurationsApiModel) { (response, error) in
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
 **createTestRunAndFillByConfigurationsApiModel** | [**CreateTestRunAndFillByConfigurationsApiModel**](CreateTestRunAndFillByConfigurationsApiModel.md) |  | [optional] 

### Return type

[**TestRunV2ApiResult**](TestRunV2ApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAndFillByWorkItems**
```swift
    open class func createAndFillByWorkItems(createTestRunAndFillByWorkItemsApiModel: CreateTestRunAndFillByWorkItemsApiModel? = nil, completion: @escaping (_ data: TestRunV2ApiResult?, _ error: Error?) -> Void)
```

Create test run based on configurations and work items

This method creates a test run based on a combination of configuration and work item (test case or checklist).  Before you create a test run using this method, make sure to create a test plan.  Work items must be automated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createTestRunAndFillByWorkItemsApiModel = CreateTestRunAndFillByWorkItemsApiModel(projectId: 123, testPlanId: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AssignAttachmentApiModel(id: 123)], links: [CreateLinkApiModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], configurationIds: [123], workItemIds: [123]) // CreateTestRunAndFillByWorkItemsApiModel |  (optional)

// Create test run based on configurations and work items
TestRunsAPI.createAndFillByWorkItems(createTestRunAndFillByWorkItemsApiModel: createTestRunAndFillByWorkItemsApiModel) { (response, error) in
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
 **createTestRunAndFillByWorkItemsApiModel** | [**CreateTestRunAndFillByWorkItemsApiModel**](CreateTestRunAndFillByWorkItemsApiModel.md) |  | [optional] 

### Return type

[**TestRunV2ApiResult**](TestRunV2ApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmpty**
```swift
    open class func createEmpty(createEmptyTestRunApiModel: CreateEmptyTestRunApiModel? = nil, completion: @escaping (_ data: TestRunV2ApiResult?, _ error: Error?) -> Void)
```

Create empty TestRun

 Use case   User sets test run model (listed in the request example)   User runs method execution   System creates test run   System returns test run model

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createEmptyTestRunApiModel = CreateEmptyTestRunApiModel(projectId: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AssignAttachmentApiModel(id: 123)], links: [CreateLinkApiModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // CreateEmptyTestRunApiModel |  (optional)

// Create empty TestRun
TestRunsAPI.createEmpty(createEmptyTestRunApiModel: createEmptyTestRunApiModel) { (response, error) in
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
 **createEmptyTestRunApiModel** | [**CreateEmptyTestRunApiModel**](CreateEmptyTestRunApiModel.md) |  | [optional] 

### Return type

[**TestRunV2ApiResult**](TestRunV2ApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestRunById**
```swift
    open class func getTestRunById(id: UUID, completion: @escaping (_ data: TestRunV2ApiResult?, _ error: Error?) -> Void)
```

Get TestRun by Id

 Use case   User sets test run identifier   User runs method execution   System finds test run   System returns test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test Run internal identifier (GUID format)

// Get TestRun by Id
TestRunsAPI.getTestRunById(id: id) { (response, error) in
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
 **id** | **UUID** | Test Run internal identifier (GUID format) | 

### Return type

[**TestRunV2ApiResult**](TestRunV2ApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAutoTestResultsForTestRun**
```swift
    open class func setAutoTestResultsForTestRun(id: UUID, autoTestResultsForTestRunModel: [AutoTestResultsForTestRunModel]? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Send test results to the test runs in the system

This method sends test results to the test management system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test Run internal identifier (GUID format)
let autoTestResultsForTestRunModel = [AutoTestResultsForTestRunModel(configurationId: 123, links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], failureReasonNames: [FailureCategoryModel()], autoTestExternalId: "autoTestExternalId_example", outcome: AvailableTestResultOutcome(), message: "message_example", traces: "traces_example", startedOn: Date(), completedOn: Date(), duration: 123, attachments: [AttachmentPutModel(id: 123)], parameters: "TODO", properties: "TODO", stepResults: [AttachmentPutModelAutoTestStepResultsModel(title: "title_example", description: "description_example", info: "info_example", startedOn: Date(), completedOn: Date(), duration: 123, outcome: nil, stepResults: [nil], attachments: [nil], parameters: "TODO")], setupResults: [nil], teardownResults: [nil])] // [AutoTestResultsForTestRunModel] |  (optional)

// Send test results to the test runs in the system
TestRunsAPI.setAutoTestResultsForTestRun(id: id, autoTestResultsForTestRunModel: autoTestResultsForTestRunModel) { (response, error) in
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
 **id** | **UUID** | Test Run internal identifier (GUID format) | 
 **autoTestResultsForTestRunModel** | [**[AutoTestResultsForTestRunModel]**](AutoTestResultsForTestRunModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startTestRun**
```swift
    open class func startTestRun(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start TestRun

 Use case   User sets test run identifier   User runs method execution   System starts test run   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test Run internal identifier (GUID format)

// Start TestRun
TestRunsAPI.startTestRun(id: id) { (response, error) in
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
 **id** | **UUID** | Test Run internal identifier (GUID format) | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopTestRun**
```swift
    open class func stopTestRun(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Stop TestRun

 Use case   User sets test run identifier   User runs method execution   System stops test run   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Test Run internal identifier (GUID format)

// Stop TestRun
TestRunsAPI.stopTestRun(id: id) { (response, error) in
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
 **id** | **UUID** | Test Run internal identifier (GUID format) | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmpty**
```swift
    open class func updateEmpty(updateEmptyTestRunApiModel: UpdateEmptyTestRunApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update empty TestRun

 Use case   User sets test run properties (listed in the request example)   User runs method execution   System updates test run   System returns returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateEmptyTestRunApiModel = UpdateEmptyTestRunApiModel(id: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AssignAttachmentApiModel(id: 123)], links: [UpdateLinkApiModel(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // UpdateEmptyTestRunApiModel |  (optional)

// Update empty TestRun
TestRunsAPI.updateEmpty(updateEmptyTestRunApiModel: updateEmptyTestRunApiModel) { (response, error) in
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
 **updateEmptyTestRunApiModel** | [**UpdateEmptyTestRunApiModel**](UpdateEmptyTestRunApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

