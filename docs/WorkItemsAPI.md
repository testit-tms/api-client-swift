# WorkItemsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2WorkItemsIdAttachmentsPost**](WorkItemsAPI.md#apiv2workitemsidattachmentspost) | **POST** /api/v2/workItems/{id}/attachments | Upload and link attachment to WorkItem
[**apiV2WorkItemsIdCheckListTransformToTestCasePost**](WorkItemsAPI.md#apiv2workitemsidchecklisttransformtotestcasepost) | **POST** /api/v2/workItems/{id}/checkList/transformTo/testCase | Transform CheckList to TestCase
[**apiV2WorkItemsIdHistoryGet**](WorkItemsAPI.md#apiv2workitemsidhistoryget) | **GET** /api/v2/workItems/{id}/history | Get change history of WorkItem
[**apiV2WorkItemsIdLikeDelete**](WorkItemsAPI.md#apiv2workitemsidlikedelete) | **DELETE** /api/v2/workItems/{id}/like | Delete like from WorkItem
[**apiV2WorkItemsIdLikePost**](WorkItemsAPI.md#apiv2workitemsidlikepost) | **POST** /api/v2/workItems/{id}/like | Set like to WorkItem
[**apiV2WorkItemsIdLikesCountGet**](WorkItemsAPI.md#apiv2workitemsidlikescountget) | **GET** /api/v2/workItems/{id}/likes/count | Get likes count of WorkItem
[**apiV2WorkItemsIdLikesGet**](WorkItemsAPI.md#apiv2workitemsidlikesget) | **GET** /api/v2/workItems/{id}/likes | Get likes of WorkItem
[**apiV2WorkItemsIdTestResultsHistoryGet**](WorkItemsAPI.md#apiv2workitemsidtestresultshistoryget) | **GET** /api/v2/workItems/{id}/testResults/history | Get test results history of WorkItem
[**apiV2WorkItemsIdVersionVersionIdActualPost**](WorkItemsAPI.md#apiv2workitemsidversionversionidactualpost) | **POST** /api/v2/workItems/{id}/version/{versionId}/actual | Set WorkItem as actual
[**apiV2WorkItemsMovePost**](WorkItemsAPI.md#apiv2workitemsmovepost) | **POST** /api/v2/workItems/move | Move WorkItem to another section
[**apiV2WorkItemsSearchPost**](WorkItemsAPI.md#apiv2workitemssearchpost) | **POST** /api/v2/workItems/search | Search for work items
[**apiV2WorkItemsSharedStepIdReferencesSectionsPost**](WorkItemsAPI.md#apiv2workitemssharedstepidreferencessectionspost) | **POST** /api/v2/workItems/{sharedStepId}/references/sections | Get SharedStep references in sections
[**apiV2WorkItemsSharedStepIdReferencesWorkItemsPost**](WorkItemsAPI.md#apiv2workitemssharedstepidreferencesworkitemspost) | **POST** /api/v2/workItems/{sharedStepId}/references/workItems | Get SharedStep references in work items
[**apiV2WorkItemsSharedStepsSharedStepIdReferencesGet**](WorkItemsAPI.md#apiv2workitemssharedstepssharedstepidreferencesget) | **GET** /api/v2/workItems/sharedSteps/{sharedStepId}/references | Get SharedStep references
[**createWorkItem**](WorkItemsAPI.md#createworkitem) | **POST** /api/v2/workItems | Create Test Case, Checklist or Shared Step
[**deleteAllWorkItemsFromAutoTest**](WorkItemsAPI.md#deleteallworkitemsfromautotest) | **DELETE** /api/v2/workItems/{id}/autoTests | Delete all links AutoTests from WorkItem by Id or GlobalId
[**deleteWorkItem**](WorkItemsAPI.md#deleteworkitem) | **DELETE** /api/v2/workItems/{id} | Delete Test Case, Checklist or Shared Step by Id or GlobalId
[**getAutoTestsForWorkItem**](WorkItemsAPI.md#getautotestsforworkitem) | **GET** /api/v2/workItems/{id}/autoTests | Get all AutoTests linked to WorkItem by Id or GlobalId
[**getIterations**](WorkItemsAPI.md#getiterations) | **GET** /api/v2/workItems/{id}/iterations | Get iterations by work item Id or GlobalId
[**getWorkItemById**](WorkItemsAPI.md#getworkitembyid) | **GET** /api/v2/workItems/{id} | Get Test Case, Checklist or Shared Step by Id or GlobalId
[**getWorkItemChronology**](WorkItemsAPI.md#getworkitemchronology) | **GET** /api/v2/workItems/{id}/chronology | Get WorkItem chronology by Id or GlobalId
[**getWorkItemVersions**](WorkItemsAPI.md#getworkitemversions) | **GET** /api/v2/workItems/{id}/versions | Get WorkItem versions
[**purgeWorkItem**](WorkItemsAPI.md#purgeworkitem) | **POST** /api/v2/workItems/{id}/purge | Permanently delete test case, checklist or shared steps from archive
[**restoreWorkItem**](WorkItemsAPI.md#restoreworkitem) | **POST** /api/v2/workItems/{id}/restore | Restore test case, checklist or shared steps from archive
[**updateWorkItem**](WorkItemsAPI.md#updateworkitem) | **PUT** /api/v2/workItems | Update Test Case, Checklist or Shared Step


# **apiV2WorkItemsIdAttachmentsPost**
```swift
    open class func apiV2WorkItemsIdAttachmentsPost(id: UUID, file: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload and link attachment to WorkItem

 Use case   User sets workItemId   User attaches a file   System creates attachment and links it to the work item   System returns attachment identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Work item internal identifier (guid format)
let file = URL(string: "https://example.com")! // URL | Select file (optional)

// Upload and link attachment to WorkItem
WorkItemsAPI.apiV2WorkItemsIdAttachmentsPost(id: id, file: file) { (response, error) in
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
 **id** | **UUID** | Work item internal identifier (guid format) | 
 **file** | **URL** | Select file | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdCheckListTransformToTestCasePost**
```swift
    open class func apiV2WorkItemsIdCheckListTransformToTestCasePost(id: UUID, completion: @escaping (_ data: WorkItemModel?, _ error: Error?) -> Void)
```

Transform CheckList to TestCase

 Use case   User sets checklist identifier   User runs method execution   System transform CheckList to TestCase

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Transform CheckList to TestCase
WorkItemsAPI.apiV2WorkItemsIdCheckListTransformToTestCasePost(id: id) { (response, error) in
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

[**WorkItemModel**](WorkItemModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdHistoryGet**
```swift
    open class func apiV2WorkItemsIdHistoryGet(id: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [WorkItemChangeModel]?, _ error: Error?) -> Void)
```

Get change history of WorkItem

 Use case   User sets work item identifier   User runs method execution   System return change history of WorkItem

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get change history of WorkItem
WorkItemsAPI.apiV2WorkItemsIdHistoryGet(id: id, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[WorkItemChangeModel]**](WorkItemChangeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdLikeDelete**
```swift
    open class func apiV2WorkItemsIdLikeDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete like from WorkItem

 Use case   User sets WorkItem identifier   User runs method execution   System delete like from WorkItem

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Delete like from WorkItem
WorkItemsAPI.apiV2WorkItemsIdLikeDelete(id: id) { (response, error) in
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

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdLikePost**
```swift
    open class func apiV2WorkItemsIdLikePost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set like to WorkItem

 Use case   User sets WorkItem identifier   User runs method execution   System set like to WorkItem

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Set like to WorkItem
WorkItemsAPI.apiV2WorkItemsIdLikePost(id: id) { (response, error) in
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

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdLikesCountGet**
```swift
    open class func apiV2WorkItemsIdLikesCountGet(id: UUID, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get likes count of WorkItem

 Use case   User sets WorkItem identifier   User runs method execution   System return likes count of WorkItem

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Get likes count of WorkItem
WorkItemsAPI.apiV2WorkItemsIdLikesCountGet(id: id) { (response, error) in
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

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdLikesGet**
```swift
    open class func apiV2WorkItemsIdLikesGet(id: UUID, completion: @escaping (_ data: [WorkItemLikeModel]?, _ error: Error?) -> Void)
```

Get likes of WorkItem

 Use case   User sets WorkItem identifier   User runs method execution   System return likes of WorkItem

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Get likes of WorkItem
WorkItemsAPI.apiV2WorkItemsIdLikesGet(id: id) { (response, error) in
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

[**[WorkItemLikeModel]**](WorkItemLikeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdTestResultsHistoryGet**
```swift
    open class func apiV2WorkItemsIdTestResultsHistoryGet(id: UUID, from: Date? = nil, to: Date? = nil, configurationIds: [UUID]? = nil, testPlanIds: [UUID]? = nil, userIds: [UUID]? = nil, outcomes: [String]? = nil, isAutomated: Bool? = nil, automated: Bool? = nil, testRunIds: [UUID]? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestResultHistoryReportModel]?, _ error: Error?) -> Void)
```

Get test results history of WorkItem

 Use case   User sets WorkItem identifier   User runs method execution   System return test results history of WorkItem

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let from = Date() // Date | Take results from this date (optional)
let to = Date() // Date | Take results until this date (optional)
let configurationIds = [123] // [UUID] | Identifiers of test result configurations (optional)
let testPlanIds = [123] // [UUID] | Identifiers of test plans which contain test results (optional)
let userIds = [123] // [UUID] | Identifiers of users who set test results (optional)
let outcomes = ["inner_example"] // [String] | List of outcomes of test results (optional)
let isAutomated = true // Bool | OBSOLETE: Use `Automated` instead (optional)
let automated = true // Bool | If result must consist of only manual/automated test results (optional)
let testRunIds = [123] // [UUID] | Identifiers of test runs which contain test results (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get test results history of WorkItem
WorkItemsAPI.apiV2WorkItemsIdTestResultsHistoryGet(id: id, from: from, to: to, configurationIds: configurationIds, testPlanIds: testPlanIds, userIds: userIds, outcomes: outcomes, isAutomated: isAutomated, automated: automated, testRunIds: testRunIds, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **from** | **Date** | Take results from this date | [optional] 
 **to** | **Date** | Take results until this date | [optional] 
 **configurationIds** | [**[UUID]**](UUID.md) | Identifiers of test result configurations | [optional] 
 **testPlanIds** | [**[UUID]**](UUID.md) | Identifiers of test plans which contain test results | [optional] 
 **userIds** | [**[UUID]**](UUID.md) | Identifiers of users who set test results | [optional] 
 **outcomes** | [**[String]**](String.md) | List of outcomes of test results | [optional] 
 **isAutomated** | **Bool** | OBSOLETE: Use &#x60;Automated&#x60; instead | [optional] 
 **automated** | **Bool** | If result must consist of only manual/automated test results | [optional] 
 **testRunIds** | [**[UUID]**](UUID.md) | Identifiers of test runs which contain test results | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestResultHistoryReportModel]**](TestResultHistoryReportModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdVersionVersionIdActualPost**
```swift
    open class func apiV2WorkItemsIdVersionVersionIdActualPost(id: UUID, versionId: UUID, completion: @escaping (_ data: WorkItemModel?, _ error: Error?) -> Void)
```

Set WorkItem as actual

 Use case   User sets work item identifier   User runs method execution   System set WorkItem as actual

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let versionId = 987 // UUID | 

// Set WorkItem as actual
WorkItemsAPI.apiV2WorkItemsIdVersionVersionIdActualPost(id: id, versionId: versionId) { (response, error) in
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
 **versionId** | **UUID** |  | 

### Return type

[**WorkItemModel**](WorkItemModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsMovePost**
```swift
    open class func apiV2WorkItemsMovePost(workItemMovePostModel: WorkItemMovePostModel? = nil, completion: @escaping (_ data: WorkItemShortModel?, _ error: Error?) -> Void)
```

Move WorkItem to another section

 Use case   User sets WorkItem identifier   User runs method execution   System move WorkItem to another section

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let workItemMovePostModel = WorkItemMovePostModel(id: 123, newSectionId: 123, oldSectionId: 123, nextWorkItemId: 123) // WorkItemMovePostModel |  (optional)

// Move WorkItem to another section
WorkItemsAPI.apiV2WorkItemsMovePost(workItemMovePostModel: workItemMovePostModel) { (response, error) in
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
 **workItemMovePostModel** | [**WorkItemMovePostModel**](WorkItemMovePostModel.md) |  | [optional] 

### Return type

[**WorkItemShortModel**](WorkItemShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsSearchPost**
```swift
    open class func apiV2WorkItemsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, workItemSelectModel: WorkItemSelectModel? = nil, completion: @escaping (_ data: [WorkItemShortModel]?, _ error: Error?) -> Void)
```

Search for work items

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let workItemSelectModel = WorkItemSelectModel(filter: WorkItemFilterModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]), extractionModel: WorkItemExtractionModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)) // WorkItemSelectModel |  (optional)

// Search for work items
WorkItemsAPI.apiV2WorkItemsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, workItemSelectModel: workItemSelectModel) { (response, error) in
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
 **workItemSelectModel** | [**WorkItemSelectModel**](WorkItemSelectModel.md) |  | [optional] 

### Return type

[**[WorkItemShortModel]**](WorkItemShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsSharedStepIdReferencesSectionsPost**
```swift
    open class func apiV2WorkItemsSharedStepIdReferencesSectionsPost(sharedStepId: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, sharedStepReferenceSectionsQueryFilterModel: SharedStepReferenceSectionsQueryFilterModel? = nil, completion: @escaping (_ data: [SharedStepReferenceSectionModel]?, _ error: Error?) -> Void)
```

Get SharedStep references in sections

 Use case   User sets SharedStep identifier   User runs method execution   System return SharedStep references

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sharedStepId = 987 // UUID | 
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let sharedStepReferenceSectionsQueryFilterModel = SharedStepReferenceSectionsQueryFilterModel(name: "name_example", createdByIds: [123], modifiedByIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil) // SharedStepReferenceSectionsQueryFilterModel |  (optional)

// Get SharedStep references in sections
WorkItemsAPI.apiV2WorkItemsSharedStepIdReferencesSectionsPost(sharedStepId: sharedStepId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, sharedStepReferenceSectionsQueryFilterModel: sharedStepReferenceSectionsQueryFilterModel) { (response, error) in
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
 **sharedStepId** | **UUID** |  | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **sharedStepReferenceSectionsQueryFilterModel** | [**SharedStepReferenceSectionsQueryFilterModel**](SharedStepReferenceSectionsQueryFilterModel.md) |  | [optional] 

### Return type

[**[SharedStepReferenceSectionModel]**](SharedStepReferenceSectionModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsSharedStepIdReferencesWorkItemsPost**
```swift
    open class func apiV2WorkItemsSharedStepIdReferencesWorkItemsPost(sharedStepId: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, sharedStepReferencesQueryFilterModel: SharedStepReferencesQueryFilterModel? = nil, completion: @escaping (_ data: [SharedStepReferenceModel]?, _ error: Error?) -> Void)
```

Get SharedStep references in work items

 Use case   User sets SharedStep identifier   User runs method execution   System return SharedStep references

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sharedStepId = 987 // UUID | 
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let sharedStepReferencesQueryFilterModel = SharedStepReferencesQueryFilterModel(name: "name_example", globalIds: [123], sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], entityTypes: ["entityTypes_example"], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, isAutomated: false, tags: ["tags_example"]) // SharedStepReferencesQueryFilterModel |  (optional)

// Get SharedStep references in work items
WorkItemsAPI.apiV2WorkItemsSharedStepIdReferencesWorkItemsPost(sharedStepId: sharedStepId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, sharedStepReferencesQueryFilterModel: sharedStepReferencesQueryFilterModel) { (response, error) in
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
 **sharedStepId** | **UUID** |  | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **sharedStepReferencesQueryFilterModel** | [**SharedStepReferencesQueryFilterModel**](SharedStepReferencesQueryFilterModel.md) |  | [optional] 

### Return type

[**[SharedStepReferenceModel]**](SharedStepReferenceModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsSharedStepsSharedStepIdReferencesGet**
```swift
    open class func apiV2WorkItemsSharedStepsSharedStepIdReferencesGet(sharedStepId: UUID, completion: @escaping (_ data: [SharedStepReferenceModel]?, _ error: Error?) -> Void)
```

Get SharedStep references

 Use case   User sets SharedStep identifier   User runs method execution   System return SharedStep references

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sharedStepId = 987 // UUID | 

// Get SharedStep references
WorkItemsAPI.apiV2WorkItemsSharedStepsSharedStepIdReferencesGet(sharedStepId: sharedStepId) { (response, error) in
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
 **sharedStepId** | **UUID** |  | 

### Return type

[**[SharedStepReferenceModel]**](SharedStepReferenceModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkItem**
```swift
    open class func createWorkItem(workItemPostModel: WorkItemPostModel? = nil, completion: @escaping (_ data: WorkItemModel?, _ error: Error?) -> Void)
```

Create Test Case, Checklist or Shared Step

 Use case   User sets work item properties (listed in request parameters)   User runs method execution   System creates work item by identifier   System returns work item model (listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let workItemPostModel = WorkItemPostModel(entityTypeName: WorkItemEntityTypes(), description: "description_example", state: WorkItemStates(), priority: WorkItemPriorityModel(), steps: [StepPostModel(action: "action_example", expected: "expected_example", testData: "testData_example", comments: "comments_example", workItemId: 123)], preconditionSteps: [nil], postconditionSteps: [nil], duration: 123, attributes: "TODO", tags: [TagPostModel(name: "name_example")], attachments: [AttachmentPutModel(id: 123)], iterations: [IterationPutModel(parameters: [ParameterIterationModel(id: 123)], id: 123)], links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], name: "name_example", projectId: 123, sectionId: 123, autoTests: [AutoTestIdModel(id: 123)]) // WorkItemPostModel |  (optional)

// Create Test Case, Checklist or Shared Step
WorkItemsAPI.createWorkItem(workItemPostModel: workItemPostModel) { (response, error) in
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
 **workItemPostModel** | [**WorkItemPostModel**](WorkItemPostModel.md) |  | [optional] 

### Return type

[**WorkItemModel**](WorkItemModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAllWorkItemsFromAutoTest**
```swift
    open class func deleteAllWorkItemsFromAutoTest(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all links AutoTests from WorkItem by Id or GlobalId

 Use case   User sets work item identifier   User runs method execution   System search work item by identifier   System search and delete all autotests, related to found work item   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | WorkItem internal (guid format) or  global(integer format) identifier\"

// Delete all links AutoTests from WorkItem by Id or GlobalId
WorkItemsAPI.deleteAllWorkItemsFromAutoTest(id: id) { (response, error) in
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
 **id** | **String** | WorkItem internal (guid format) or  global(integer format) identifier\&quot; | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkItem**
```swift
    open class func deleteWorkItem(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Test Case, Checklist or Shared Step by Id or GlobalId

 Use case   User sets work item identifier   User runs method execution   System deletes work item   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | WorkItem internal (guid format) or  global(integer format) identifier\"

// Delete Test Case, Checklist or Shared Step by Id or GlobalId
WorkItemsAPI.deleteWorkItem(id: id) { (response, error) in
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
 **id** | **String** | WorkItem internal (guid format) or  global(integer format) identifier\&quot; | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoTestsForWorkItem**
```swift
    open class func getAutoTestsForWorkItem(id: String, completion: @escaping (_ data: [AutoTestModel]?, _ error: Error?) -> Void)
```

Get all AutoTests linked to WorkItem by Id or GlobalId

 Use case   User sets work item identifier   User runs method execution   System search work item by identifier   System search all autotests, related to found work item   System returns list of found autotests

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | WorkItem internal (guid format) or  global(integer format) identifier\"

// Get all AutoTests linked to WorkItem by Id or GlobalId
WorkItemsAPI.getAutoTestsForWorkItem(id: id) { (response, error) in
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
 **id** | **String** | WorkItem internal (guid format) or  global(integer format) identifier\&quot; | 

### Return type

[**[AutoTestModel]**](AutoTestModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIterations**
```swift
    open class func getIterations(id: String, versionId: UUID? = nil, versionNumber: Int? = nil, completion: @escaping (_ data: [IterationModel]?, _ error: Error?) -> Void)
```

Get iterations by work item Id or GlobalId

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | WorkItem internal (guid format) or  global(integer format) identifier\"
let versionId = 987 // UUID | WorkItem version (guid format) identifier (optional)
let versionNumber = 987 // Int | WorkItem version number (0 is the last version)\" (optional)

// Get iterations by work item Id or GlobalId
WorkItemsAPI.getIterations(id: id, versionId: versionId, versionNumber: versionNumber) { (response, error) in
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
 **id** | **String** | WorkItem internal (guid format) or  global(integer format) identifier\&quot; | 
 **versionId** | **UUID** | WorkItem version (guid format) identifier | [optional] 
 **versionNumber** | **Int** | WorkItem version number (0 is the last version)\&quot; | [optional] 

### Return type

[**[IterationModel]**](IterationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkItemById**
```swift
    open class func getWorkItemById(id: String, versionId: UUID? = nil, versionNumber: Int? = nil, completion: @escaping (_ data: WorkItemModel?, _ error: Error?) -> Void)
```

Get Test Case, Checklist or Shared Step by Id or GlobalId

 Use case   User sets work item identifier   [Optional] User sets work item version identifier   [Optional] User sets work item version number   User runs method execution   System search work item by identifier   [Optional] if User sets work item version identifier, system search work item version by identifier.   [Optional] if user sets work item version number, system search work item version by number   Otherwise, system search last work item version   System returns work item 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | WorkItem internal (guid format) or  global(integer format) identifier\"
let versionId = 987 // UUID | WorkItem version (guid format) identifier\" (optional)
let versionNumber = 987 // Int | WorkItem version number (0 is the last version)\" (optional)

// Get Test Case, Checklist or Shared Step by Id or GlobalId
WorkItemsAPI.getWorkItemById(id: id, versionId: versionId, versionNumber: versionNumber) { (response, error) in
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
 **id** | **String** | WorkItem internal (guid format) or  global(integer format) identifier\&quot; | 
 **versionId** | **UUID** | WorkItem version (guid format) identifier\&quot; | [optional] 
 **versionNumber** | **Int** | WorkItem version number (0 is the last version)\&quot; | [optional] 

### Return type

[**WorkItemModel**](WorkItemModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkItemChronology**
```swift
    open class func getWorkItemChronology(id: String, completion: @escaping (_ data: [TestResultChronologyModel]?, _ error: Error?) -> Void)
```

Get WorkItem chronology by Id or GlobalId

 Use case   User sets work item identifier   User runs method execution   System search work item by identifier   System search test results of all autotests, related to found work item   System sort results by CompletedOn ascending, then by CreatedDate ascending   System returns sorted collection of test results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | 

// Get WorkItem chronology by Id or GlobalId
WorkItemsAPI.getWorkItemChronology(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**[TestResultChronologyModel]**](TestResultChronologyModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkItemVersions**
```swift
    open class func getWorkItemVersions(id: String, workItemVersionId: UUID? = nil, versionNumber: Int? = nil, completion: @escaping (_ data: [WorkItemVersionModel]?, _ error: Error?) -> Void)
```

Get WorkItem versions

 Use case   User sets work item identifier   [Optional] User sets work item version identifier   User runs method execution   System search work item by identifier                         [Optional] If User set work item version identifier, System search work item version by version identifier                      Otherwise, system search all version of work item                     System returns array of work item version models (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | WorkItem internal (guid format) or  global(integer format) identifier\"
let workItemVersionId = 987 // UUID | WorkItem version (guid format)  identifier\" (optional)
let versionNumber = 987 // Int | WorkItem version (integer format)  number\" (optional)

// Get WorkItem versions
WorkItemsAPI.getWorkItemVersions(id: id, workItemVersionId: workItemVersionId, versionNumber: versionNumber) { (response, error) in
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
 **id** | **String** | WorkItem internal (guid format) or  global(integer format) identifier\&quot; | 
 **workItemVersionId** | **UUID** | WorkItem version (guid format)  identifier\&quot; | [optional] 
 **versionNumber** | **Int** | WorkItem version (integer format)  number\&quot; | [optional] 

### Return type

[**[WorkItemVersionModel]**](WorkItemVersionModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purgeWorkItem**
```swift
    open class func purgeWorkItem(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently delete test case, checklist or shared steps from archive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the work item

// Permanently delete test case, checklist or shared steps from archive
WorkItemsAPI.purgeWorkItem(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the work item | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreWorkItem**
```swift
    open class func restoreWorkItem(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore test case, checklist or shared steps from archive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the work item

// Restore test case, checklist or shared steps from archive
WorkItemsAPI.restoreWorkItem(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the work item | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkItem**
```swift
    open class func updateWorkItem(workItemPutModel: WorkItemPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update Test Case, Checklist or Shared Step

 Use case   User sets work item properties (listed in request parameters)   User runs method execution   System updates work item by identifier   System returns updated work item model (listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let workItemPutModel = WorkItemPutModel(attachments: [AttachmentPutModel(id: 123)], iterations: [IterationPutModel(parameters: [ParameterIterationModel(id: 123)], id: 123)], autoTests: [AutoTestIdModel(id: 123)], id: 123, sectionId: 123, description: "description_example", state: WorkItemStates(), priority: WorkItemPriorityModel(), steps: [StepPutModel(id: 123, action: "action_example", expected: "expected_example", testData: "testData_example", comments: "comments_example", workItemId: 123)], preconditionSteps: [nil], postconditionSteps: [nil], duration: 123, attributes: "TODO", tags: [TagPutModel(name: "name_example")], links: [LinkPutModel(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], name: "name_example") // WorkItemPutModel |  (optional)

// Update Test Case, Checklist or Shared Step
WorkItemsAPI.updateWorkItem(workItemPutModel: workItemPutModel) { (response, error) in
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
 **workItemPutModel** | [**WorkItemPutModel**](WorkItemPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

