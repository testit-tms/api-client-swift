# TestRunsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TestRunsDelete**](TestRunsAPI.md#apiv2testrunsdelete) | **DELETE** /api/v2/testRuns | Delete multiple test runs
[**apiV2TestRunsIdDelete**](TestRunsAPI.md#apiv2testrunsiddelete) | **DELETE** /api/v2/testRuns/{id} | Delete test run
[**apiV2TestRunsIdPurgePost**](TestRunsAPI.md#apiv2testrunsidpurgepost) | **POST** /api/v2/testRuns/{id}/purge | Permanently delete test run from archive
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
    internal class func apiV2TestRunsDelete(testRunSelectModel: TestRunSelectModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Delete multiple test runs

 Use case   User sets selection parameters of test runs   System search and delete collection of test runs   System returns the number of deleted test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunSelectModel = TestRunSelectModel(filter: TestRunFilterModel(projectIds: [123], name: "name_example", states: [TestRunState()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], failureCategory: [FailureCategoryModel()], completedDate: nil), extractionModel: TestRunExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestRunSelectModel |  (optional)

// Delete multiple test runs
TestRunsAPI.apiV2TestRunsDelete(testRunSelectModel: testRunSelectModel) { (response, error) in
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
 **testRunSelectModel** | [**TestRunSelectModel**](TestRunSelectModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdDelete**
```swift
    internal class func apiV2TestRunsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete test run

 Use case   User sets test run internal (guid format) identifier   System search and delete test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func apiV2TestRunsIdPurgePost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently delete test run from archive

 Use case   User sets archived test run internal (guid format) identifier   System search and purge archived test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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

# **apiV2TestRunsIdRestorePost**
```swift
    internal class func apiV2TestRunsIdRestorePost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore test run from the archive

 Use case   User sets archived test run internal (guid format) identifier   System search and restore test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func apiV2TestRunsIdStatisticsFilterPost(id: UUID, testResultsLocalFilterModel: TestResultsLocalFilterModel? = nil, completion: @escaping (_ data: TestResultsStatisticsGetModel?, _ error: Error?) -> Void)
```

Search for the test run test results and build statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test run unique ID
let testResultsLocalFilterModel = TestResultsLocalFilterModel(configurationIds: [123], outcomes: [TestResultOutcome()], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example") // TestResultsLocalFilterModel |  (optional)

// Search for the test run test results and build statistics
TestRunsAPI.apiV2TestRunsIdStatisticsFilterPost(id: id, testResultsLocalFilterModel: testResultsLocalFilterModel) { (response, error) in
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
 **testResultsLocalFilterModel** | [**TestResultsLocalFilterModel**](TestResultsLocalFilterModel.md) |  | [optional] 

### Return type

[**TestResultsStatisticsGetModel**](TestResultsStatisticsGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdTestPointsResultsGet**
```swift
    internal class func apiV2TestRunsIdTestPointsResultsGet(id: UUID, completion: @escaping (_ data: [TestPointResultModel]?, _ error: Error?) -> Void)
```

Get test results from the test run grouped by test points

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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

[**[TestPointResultModel]**](TestPointResultModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsIdTestResultsBulkPut**
```swift
    internal class func apiV2TestRunsIdTestResultsBulkPut(id: UUID, testRunTestResultsPartialBulkSetModel: TestRunTestResultsPartialBulkSetModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Partial edit of multiple test results in the test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test run unique ID
let testRunTestResultsPartialBulkSetModel = TestRunTestResultsPartialBulkSetModel(selector: TestRunTestResultsSelectModel(filter: TestResultsLocalFilterModel(configurationIds: [123], outcomes: [TestResultOutcome()], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example"), testResultIdsExtractionModel: GuidExtractionModel(include: [123], exclude: [123])), resultReasonIds: [123], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], comment: "comment_example", attachmentIds: [123]) // TestRunTestResultsPartialBulkSetModel |  (optional)

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
    internal class func apiV2TestRunsIdTestResultsLastModifiedModificationDateGet(id: UUID, completion: @escaping (_ data: Date?, _ error: Error?) -> Void)
```

Get modification date of last test result of the test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func apiV2TestRunsPurgeBulkPost(testRunSelectModel: TestRunSelectModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Permanently delete multiple test runs from archive

 Use case   User sets selection parameters of archived test runs   System search and delete collection of archived test runs   System returns the number of deleted archived test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunSelectModel = TestRunSelectModel(filter: TestRunFilterModel(projectIds: [123], name: "name_example", states: [TestRunState()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], failureCategory: [FailureCategoryModel()], completedDate: nil), extractionModel: TestRunExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestRunSelectModel |  (optional)

// Permanently delete multiple test runs from archive
TestRunsAPI.apiV2TestRunsPurgeBulkPost(testRunSelectModel: testRunSelectModel) { (response, error) in
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
 **testRunSelectModel** | [**TestRunSelectModel**](TestRunSelectModel.md) |  | [optional] 

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
    internal class func apiV2TestRunsRestoreBulkPost(testRunSelectModel: TestRunSelectModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Restore multiple test runs from the archive

 Use case   User sets selection parameters of archived test runs   System search and restore collection of archived test runs   System returns the number of restored test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunSelectModel = TestRunSelectModel(filter: TestRunFilterModel(projectIds: [123], name: "name_example", states: [TestRunState()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], failureCategory: [FailureCategoryModel()], completedDate: nil), extractionModel: TestRunExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestRunSelectModel |  (optional)

// Restore multiple test runs from the archive
TestRunsAPI.apiV2TestRunsRestoreBulkPost(testRunSelectModel: testRunSelectModel) { (response, error) in
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
 **testRunSelectModel** | [**TestRunSelectModel**](TestRunSelectModel.md) |  | [optional] 

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
    internal class func apiV2TestRunsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testRunFilterModel: TestRunFilterModel? = nil, completion: @escaping (_ data: [TestRunShortGetModel]?, _ error: Error?) -> Void)
```

Search for test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testRunFilterModel = TestRunFilterModel(projectIds: [123], name: "name_example", states: [TestRunState()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], failureCategory: [FailureCategoryModel()], completedDate: nil) // TestRunFilterModel |  (optional)

// Search for test runs
TestRunsAPI.apiV2TestRunsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testRunFilterModel: testRunFilterModel) { (response, error) in
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
 **testRunFilterModel** | [**TestRunFilterModel**](TestRunFilterModel.md) |  | [optional] 

### Return type

[**[TestRunShortGetModel]**](TestRunShortGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestRunsUpdateMultiplePost**
```swift
    internal class func apiV2TestRunsUpdateMultiplePost(testRunUpdateMultipleModel: TestRunUpdateMultipleModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update multiple test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunUpdateMultipleModel = TestRunUpdateMultipleModel(selectModel: TestRunSelectModel(filter: TestRunFilterModel(projectIds: [123], name: "name_example", states: [TestRunState()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), startedDate: nil, createdByIds: [123], modifiedByIds: [123], isDeleted: false, autoTestsCount: Int32RangeSelectorModel(from: 123, to: 123), testResultsOutcome: [TestResultOutcome()], failureCategory: [FailureCategoryModel()], completedDate: nil), extractionModel: TestRunExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))), description: "description_example", attachmentUpdateScheme: UpdateAttachmentShortModel(action: ActionUpdate(), attachmentIds: [123]), linkUpdateScheme: UpdateLinkShortModel(action: nil, links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)])) // TestRunUpdateMultipleModel |  (optional)

// Update multiple test runs
TestRunsAPI.apiV2TestRunsUpdateMultiplePost(testRunUpdateMultipleModel: testRunUpdateMultipleModel) { (response, error) in
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
 **testRunUpdateMultipleModel** | [**TestRunUpdateMultipleModel**](TestRunUpdateMultipleModel.md) |  | [optional] 

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
    internal class func completeTestRun(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Complete TestRun

 Use case   User sets test run identifier   User runs method execution   System completes test run   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func createAndFillByAutoTests(testRunFillByAutoTestsPostModel: TestRunFillByAutoTestsPostModel? = nil, completion: @escaping (_ data: TestRunV2GetModel?, _ error: Error?) -> Void)
```

Create test runs based on autotests and configurations

This method creates a test run based on an autotest and a configuration.  The difference between the `POST /api/v2/testRuns/byWorkItems` and `POST /api/v2/testRuns/byConfigurations` methods is  that in this method there is no need to create a test plan and work items (test cases and checklists).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunFillByAutoTestsPostModel = TestRunFillByAutoTestsPostModel(projectId: 123, name: "name_example", configurationIds: [123], autoTestExternalIds: ["autoTestExternalIds_example"], description: "description_example", launchSource: "launchSource_example", attachments: [AttachmentPutModel(id: 123)], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // TestRunFillByAutoTestsPostModel |  (optional)

// Create test runs based on autotests and configurations
TestRunsAPI.createAndFillByAutoTests(testRunFillByAutoTestsPostModel: testRunFillByAutoTestsPostModel) { (response, error) in
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
 **testRunFillByAutoTestsPostModel** | [**TestRunFillByAutoTestsPostModel**](TestRunFillByAutoTestsPostModel.md) |  | [optional] 

### Return type

[**TestRunV2GetModel**](TestRunV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAndFillByConfigurations**
```swift
    internal class func createAndFillByConfigurations(testRunFillByConfigurationsPostModel: TestRunFillByConfigurationsPostModel? = nil, completion: @escaping (_ data: TestRunV2GetModel?, _ error: Error?) -> Void)
```

Create test runs picking the needed test points

This method creates a test run based on a combination of a configuration and a work item(test case or checklist).  Before you create a test run using this method, make sure to create a test plan. Work items must be automated.  This method is different from the `POST /api/v2/testRuns/byWorkItems` method because of the ability to send a  jagged array within the \"<b>testPointSelectors</b>\" parameter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunFillByConfigurationsPostModel = TestRunFillByConfigurationsPostModel(testPointSelectors: [TestPointSelector(configurationId: 123, workItemIds: [123])], projectId: 123, testPlanId: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AttachmentPutModel(id: 123)], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // TestRunFillByConfigurationsPostModel |  (optional)

// Create test runs picking the needed test points
TestRunsAPI.createAndFillByConfigurations(testRunFillByConfigurationsPostModel: testRunFillByConfigurationsPostModel) { (response, error) in
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
 **testRunFillByConfigurationsPostModel** | [**TestRunFillByConfigurationsPostModel**](TestRunFillByConfigurationsPostModel.md) |  | [optional] 

### Return type

[**TestRunV2GetModel**](TestRunV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAndFillByWorkItems**
```swift
    internal class func createAndFillByWorkItems(testRunFillByWorkItemsPostModel: TestRunFillByWorkItemsPostModel? = nil, completion: @escaping (_ data: TestRunV2GetModel?, _ error: Error?) -> Void)
```

Create test run based on configurations and work items

This method creates a test run based on a combination of configuration and work item (test case or checklist).  Before you create a test run using this method, make sure to create a test plan.  Work items must be automated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunFillByWorkItemsPostModel = TestRunFillByWorkItemsPostModel(configurationIds: [123], workItemIds: [123], projectId: 123, testPlanId: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AttachmentPutModel(id: 123)], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // TestRunFillByWorkItemsPostModel |  (optional)

// Create test run based on configurations and work items
TestRunsAPI.createAndFillByWorkItems(testRunFillByWorkItemsPostModel: testRunFillByWorkItemsPostModel) { (response, error) in
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
 **testRunFillByWorkItemsPostModel** | [**TestRunFillByWorkItemsPostModel**](TestRunFillByWorkItemsPostModel.md) |  | [optional] 

### Return type

[**TestRunV2GetModel**](TestRunV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmpty**
```swift
    internal class func createEmpty(testRunV2PostShortModel: TestRunV2PostShortModel? = nil, completion: @escaping (_ data: TestRunV2GetModel?, _ error: Error?) -> Void)
```

Create empty TestRun

 Use case   User sets test run model (listed in the request example)   User runs method execution   System creates test run   System returns test run model

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunV2PostShortModel = TestRunV2PostShortModel(projectId: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AttachmentPutModel(id: 123)], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // TestRunV2PostShortModel |  (optional)

// Create empty TestRun
TestRunsAPI.createEmpty(testRunV2PostShortModel: testRunV2PostShortModel) { (response, error) in
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
 **testRunV2PostShortModel** | [**TestRunV2PostShortModel**](TestRunV2PostShortModel.md) |  | [optional] 

### Return type

[**TestRunV2GetModel**](TestRunV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestRunById**
```swift
    internal class func getTestRunById(id: UUID, completion: @escaping (_ data: TestRunV2GetModel?, _ error: Error?) -> Void)
```

Get TestRun by Id

 Use case   User sets test run identifier   User runs method execution   System finds test run   System returns test run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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

[**TestRunV2GetModel**](TestRunV2GetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAutoTestResultsForTestRun**
```swift
    internal class func setAutoTestResultsForTestRun(id: UUID, autoTestResultsForTestRunModel: [AutoTestResultsForTestRunModel]? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Send test results to the test runs in the system

This method sends test results to the test management system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func startTestRun(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start TestRun

 Use case   User sets test run identifier   User runs method execution   System starts test run   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func stopTestRun(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Stop TestRun

 Use case   User sets test run identifier   User runs method execution   System stops test run   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

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
    internal class func updateEmpty(testRunV2PutModel: TestRunV2PutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update empty TestRun

 Use case   User sets test run properties (listed in the request example)   User runs method execution   System updates test run   System returns returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testRunV2PutModel = TestRunV2PutModel(id: 123, name: "name_example", description: "description_example", launchSource: "launchSource_example", attachments: [AttachmentPutModel(id: 123)], links: [LinkPutModel(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)]) // TestRunV2PutModel |  (optional)

// Update empty TestRun
TestRunsAPI.updateEmpty(testRunV2PutModel: testRunV2PutModel) { (response, error) in
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
 **testRunV2PutModel** | [**TestRunV2PutModel**](TestRunV2PutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

