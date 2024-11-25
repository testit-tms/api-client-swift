# AutoTestsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AutoTestsFlakyBulkPost**](AutoTestsAPI.md#apiv2autotestsflakybulkpost) | **POST** /api/v2/autoTests/flaky/bulk | Set \&quot;Flaky\&quot; status for multiple autotests
[**apiV2AutoTestsIdPatch**](AutoTestsAPI.md#apiv2autotestsidpatch) | **PATCH** /api/v2/autoTests/{id} | Patch auto test
[**apiV2AutoTestsIdTestResultsSearchPost**](AutoTestsAPI.md#apiv2autotestsidtestresultssearchpost) | **POST** /api/v2/autoTests/{id}/testResults/search | Get test results history for autotest
[**apiV2AutoTestsIdWorkItemsChangedIdGet**](AutoTestsAPI.md#apiv2autotestsidworkitemschangedidget) | **GET** /api/v2/autoTests/{id}/workItems/changed/id | Get identifiers of changed linked work items
[**apiV2AutoTestsIdWorkItemsChangedWorkItemIdApprovePost**](AutoTestsAPI.md#apiv2autotestsidworkitemschangedworkitemidapprovepost) | **POST** /api/v2/autoTests/{id}/workItems/changed/{workItemId}/approve | Approve changes to work items linked to autotest
[**apiV2AutoTestsSearchPost**](AutoTestsAPI.md#apiv2autotestssearchpost) | **POST** /api/v2/autoTests/search | Search for autotests
[**createAutoTest**](AutoTestsAPI.md#createautotest) | **POST** /api/v2/autoTests | Create autotest
[**createMultiple**](AutoTestsAPI.md#createmultiple) | **POST** /api/v2/autoTests/bulk | Create multiple autotests
[**deleteAutoTest**](AutoTestsAPI.md#deleteautotest) | **DELETE** /api/v2/autoTests/{id} | Delete autotest
[**deleteAutoTestLinkFromWorkItem**](AutoTestsAPI.md#deleteautotestlinkfromworkitem) | **DELETE** /api/v2/autoTests/{id}/workItems | Unlink autotest from work item
[**getAllAutoTests**](AutoTestsAPI.md#getallautotests) | **GET** /api/v2/autoTests | 
[**getAutoTestAverageDuration**](AutoTestsAPI.md#getautotestaverageduration) | **GET** /api/v2/autoTests/{id}/averageDuration | Get average autotest duration
[**getAutoTestById**](AutoTestsAPI.md#getautotestbyid) | **GET** /api/v2/autoTests/{id} | Get autotest by internal or global ID
[**getAutoTestChronology**](AutoTestsAPI.md#getautotestchronology) | **GET** /api/v2/autoTests/{id}/chronology | Get autotest chronology
[**getTestRuns**](AutoTestsAPI.md#gettestruns) | **GET** /api/v2/autoTests/{id}/testRuns | Get completed tests runs for autotests
[**getWorkItemResults**](AutoTestsAPI.md#getworkitemresults) | **GET** /api/v2/autoTests/{id}/testResultHistory | 
[**getWorkItemsLinkedToAutoTest**](AutoTestsAPI.md#getworkitemslinkedtoautotest) | **GET** /api/v2/autoTests/{id}/workItems | Get work items linked to autotest
[**linkAutoTestToWorkItem**](AutoTestsAPI.md#linkautotesttoworkitem) | **POST** /api/v2/autoTests/{id}/workItems | Link autotest with work items
[**updateAutoTest**](AutoTestsAPI.md#updateautotest) | **PUT** /api/v2/autoTests | Update autotest
[**updateMultiple**](AutoTestsAPI.md#updatemultiple) | **PUT** /api/v2/autoTests/bulk | Update multiple autotests


# **apiV2AutoTestsFlakyBulkPost**
```swift
    internal class func apiV2AutoTestsFlakyBulkPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, flakyBulkModel: FlakyBulkModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set \"Flaky\" status for multiple autotests

User permissions for project:  - Read only  - Execute  - Write  - Full control

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let flakyBulkModel = FlakyBulkModel(autotestSelect: AutotestSelectModel(filter: AutotestFilterModel(projectIds: [123], externalIds: ["externalIds_example"], globalIds: [123], name: "name_example", isFlaky: false, mustBeApproved: false, stabilityPercentage: Int64RangeSelectorModel(from: 123, to: 123), createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], isDeleted: false, namespace: "namespace_example", isEmptyNamespace: false, className: "className_example", isEmptyClassName: false, lastTestResultOutcome: AutotestResultOutcome(), externalKey: "externalKey_example"), extractionModel: AutotestsExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))), value: false) // FlakyBulkModel |  (optional)

// Set \"Flaky\" status for multiple autotests
AutoTestsAPI.apiV2AutoTestsFlakyBulkPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, flakyBulkModel: flakyBulkModel) { (response, error) in
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
 **flakyBulkModel** | [**FlakyBulkModel**](FlakyBulkModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutoTestsIdPatch**
```swift
    internal class func apiV2AutoTestsIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch auto test

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Global Id of auto test
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

// Patch auto test
AutoTestsAPI.apiV2AutoTestsIdPatch(id: id, operation: operation) { (response, error) in
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
 **id** | **UUID** | Global Id of auto test | 
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutoTestsIdTestResultsSearchPost**
```swift
    internal class func apiV2AutoTestsIdTestResultsSearchPost(id: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, autotestHistoricalResultSelectModel: AutotestHistoricalResultSelectModel? = nil, completion: @escaping (_ data: [AutotestResultHistoricalGetModel]?, _ error: Error?) -> Void)
```

Get test results history for autotest

 Use case   User sets autotest internal (guid format) or global (integer format) identifier   User sets getTestResultHistoryReportQuery (listed in the example)   User runs method execution   System search for test results using filters set by user in getTestResultHistoryReportQuery and id   System returns the enumeration of test results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest identifier
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let autotestHistoricalResultSelectModel = AutotestHistoricalResultSelectModel(outcomes: [AutotestResultOutcome()], testPlanIds: [123], testRunIds: [123], configurationIds: [123], launchSource: "launchSource_example", userIds: [123], duration: Int64RangeSelectorModel(from: 123, to: 123)) // AutotestHistoricalResultSelectModel |  (optional)

// Get test results history for autotest
AutoTestsAPI.apiV2AutoTestsIdTestResultsSearchPost(id: id, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, autotestHistoricalResultSelectModel: autotestHistoricalResultSelectModel) { (response, error) in
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
 **id** | **String** | Autotest identifier | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **autotestHistoricalResultSelectModel** | [**AutotestHistoricalResultSelectModel**](AutotestHistoricalResultSelectModel.md) |  | [optional] 

### Return type

[**[AutotestResultHistoricalGetModel]**](AutotestResultHistoricalGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutoTestsIdWorkItemsChangedIdGet**
```swift
    internal class func apiV2AutoTestsIdWorkItemsChangedIdGet(id: UUID, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Get identifiers of changed linked work items

User permissions for project:  - Read only  - Execute  - Write  - Full control

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | 

// Get identifiers of changed linked work items
AutoTestsAPI.apiV2AutoTestsIdWorkItemsChangedIdGet(id: id) { (response, error) in
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

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutoTestsIdWorkItemsChangedWorkItemIdApprovePost**
```swift
    internal class func apiV2AutoTestsIdWorkItemsChangedWorkItemIdApprovePost(id: UUID, workItemId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Approve changes to work items linked to autotest

User permissions for project:  - Read only  - Execute  - Write  - Full control

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | 
let workItemId = 987 // UUID | 

// Approve changes to work items linked to autotest
AutoTestsAPI.apiV2AutoTestsIdWorkItemsChangedWorkItemIdApprovePost(id: id, workItemId: workItemId) { (response, error) in
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
 **workItemId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutoTestsSearchPost**
```swift
    internal class func apiV2AutoTestsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, autotestsSelectModel: AutotestsSelectModel? = nil, completion: @escaping (_ data: [AutoTestModel]?, _ error: Error?) -> Void)
```

Search for autotests

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let autotestsSelectModel = AutotestsSelectModel(filter: AutotestFilterModel(projectIds: [123], externalIds: ["externalIds_example"], globalIds: [123], name: "name_example", isFlaky: false, mustBeApproved: false, stabilityPercentage: Int64RangeSelectorModel(from: 123, to: 123), createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], isDeleted: false, namespace: "namespace_example", isEmptyNamespace: false, className: "className_example", isEmptyClassName: false, lastTestResultOutcome: AutotestResultOutcome(), externalKey: "externalKey_example"), includes: SearchAutoTestsQueryIncludesModel(includeSteps: false, includeLinks: false, includeLabels: false)) // AutotestsSelectModel |  (optional)

// Search for autotests
AutoTestsAPI.apiV2AutoTestsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, autotestsSelectModel: autotestsSelectModel) { (response, error) in
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
 **autotestsSelectModel** | [**AutotestsSelectModel**](AutotestsSelectModel.md) |  | [optional] 

### Return type

[**[AutoTestModel]**](AutoTestModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAutoTest**
```swift
    internal class func createAutoTest(autoTestPostModel: AutoTestPostModel? = nil, completion: @escaping (_ data: AutoTestModel?, _ error: Error?) -> Void)
```

Create autotest

 This method creates a new autotest.   To add an autotest to the test plan, link it to a work item using the `POST /api/v2/autoTests/{autoTestId}/workItems` method.   Use the `POST /api/v2/testRuns/byAutoTests` method to run autotest outside the test plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let autoTestPostModel = AutoTestPostModel(workItemIdsForLinkWithAutoTest: [123], shouldCreateWorkItem: false, attributes: "TODO", externalId: "externalId_example", links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], projectId: 123, name: "name_example", namespace: "namespace_example", classname: "classname_example", steps: [AutoTestStepModel(title: "title_example", description: "description_example", steps: [nil])], setup: [nil], teardown: [nil], title: "title_example", description: "description_example", labels: [LabelPostModel(name: "name_example")], isFlaky: false, externalKey: "externalKey_example") // AutoTestPostModel |  (optional)

// Create autotest
AutoTestsAPI.createAutoTest(autoTestPostModel: autoTestPostModel) { (response, error) in
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
 **autoTestPostModel** | [**AutoTestPostModel**](AutoTestPostModel.md) |  | [optional] 

### Return type

[**AutoTestModel**](AutoTestModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMultiple**
```swift
    internal class func createMultiple(autoTestPostModel: [AutoTestPostModel]? = nil, completion: @escaping (_ data: [AutoTestModel]?, _ error: Error?) -> Void)
```

Create multiple autotests

 Use case   User sets autotest parameters (listed in the example) and runs method execution   System creates autotest   [Optional] If steps enumeration is set, system creates step items and relates them to autotest   [Optional] If setup enumeration is set, system creates setup items and relates them to autotest   [Optional] If teardown enumeration is set, system creates teardown items and relates them to autotest   [Optional] If label enumeration is set, system creates labels and relates them to autotest   [Optional] If link enumeration is set, system creates links and relates them to autotest   System returns autotest model (example listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let autoTestPostModel = [AutoTestPostModel(workItemIdsForLinkWithAutoTest: [123], shouldCreateWorkItem: false, attributes: "TODO", externalId: "externalId_example", links: [LinkPostModel(title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], projectId: 123, name: "name_example", namespace: "namespace_example", classname: "classname_example", steps: [AutoTestStepModel(title: "title_example", description: "description_example", steps: [nil])], setup: [nil], teardown: [nil], title: "title_example", description: "description_example", labels: [LabelPostModel(name: "name_example")], isFlaky: false, externalKey: "externalKey_example")] // [AutoTestPostModel] |  (optional)

// Create multiple autotests
AutoTestsAPI.createMultiple(autoTestPostModel: autoTestPostModel) { (response, error) in
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
 **autoTestPostModel** | [**[AutoTestPostModel]**](AutoTestPostModel.md) |  | [optional] 

### Return type

[**[AutoTestModel]**](AutoTestModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAutoTest**
```swift
    internal class func deleteAutoTest(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete autotest

 Use case   User sets autotest internal (guid format) or global (integer format) identifier and runs method execution   System finds the autotest by the identifier   System deletes autotest and returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier

// Delete autotest
AutoTestsAPI.deleteAutoTest(id: id) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAutoTestLinkFromWorkItem**
```swift
    internal class func deleteAutoTestLinkFromWorkItem(id: String, workItemId: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unlink autotest from work item

 Use case   User sets autotest internal (guid format) or global (integer format) identifier   [Optional] User sets workitem internal (guid format) or global (integer format) identifier   User runs method execution   System finds the autotest by the autotest identifier                 [Optional] if workitem id is set by User, System finds the workitem by the workitem identifier and unlinks it              from autotest.                 [Optional] Otherwise, if workitem id is not specified, System unlinks all workitems linked to autotest.   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier
let workItemId = "workItemId_example" // String | Work item internal (UUID) or global (integer) identifier (optional)

// Unlink autotest from work item
AutoTestsAPI.deleteAutoTestLinkFromWorkItem(id: id, workItemId: workItemId) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 
 **workItemId** | **String** | Work item internal (UUID) or global (integer) identifier | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAutoTests**
```swift
    internal class func getAllAutoTests(projectId: UUID? = nil, externalId: String? = nil, globalId: Int64? = nil, namespace: String? = nil, isNamespaceNull: Bool? = nil, includeEmptyNamespaces: Bool? = nil, className: String? = nil, isClassnameNull: Bool? = nil, includeEmptyClassNames: Bool? = nil, isDeleted: Bool? = nil, deleted: Bool? = nil, labels: [String]? = nil, stabilityMinimal: Int? = nil, minStability: Int? = nil, stabilityMaximal: Int? = nil, maxStability: Int? = nil, isFlaky: Bool? = nil, flaky: Bool? = nil, includeSteps: Bool? = nil, includeLabels: Bool? = nil, externalKey: String? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [AutoTestModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = 987 // UUID | Project internal ID (optional)
let externalId = "externalId_example" // String | Autotest external ID (optional)
let globalId = 987 // Int64 | Autotest global ID (optional)
let namespace = "namespace_example" // String | Namespace in which autotest is located (optional)
let isNamespaceNull = true // Bool | OBSOLETE: Use `includeEmptyNamespaces` instead (optional)
let includeEmptyNamespaces = true // Bool | If result must contain autotests without namespace (optional)
let className = "className_example" // String | Name of class in which autotest is located (optional)
let isClassnameNull = true // Bool | OBSOLETE: Use `includeEmptyClassNames` instead (optional)
let includeEmptyClassNames = true // Bool | If result must contain autotests without class (optional)
let isDeleted = true // Bool | OBSOLETE: Use `deleted` instead (optional)
let deleted = true // Bool | Is autotest deleted (optional)
let labels = ["inner_example"] // [String] | Include only autotests with provided labels (optional)
let stabilityMinimal = 987 // Int | OBSOLETE: Use `minStability` instead (optional)
let minStability = 987 // Int | Minimum stability value of autotest (optional)
let stabilityMaximal = 987 // Int | OBSOLETE: Use `maxStability` instead (optional)
let maxStability = 987 // Int | Maximum stability value of autotest (optional)
let isFlaky = true // Bool | OBSOLETE: Use `flaky` instead (optional)
let flaky = true // Bool | Is autotest marked as \"Flaky\" (optional)
let includeSteps = true // Bool | If result must also include autotest steps (optional)
let includeLabels = true // Bool | If result must also include autotest labels (optional)
let externalKey = "externalKey_example" // String | External key of autotest (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

AutoTestsAPI.getAllAutoTests(projectId: projectId, externalId: externalId, globalId: globalId, namespace: namespace, isNamespaceNull: isNamespaceNull, includeEmptyNamespaces: includeEmptyNamespaces, className: className, isClassnameNull: isClassnameNull, includeEmptyClassNames: includeEmptyClassNames, isDeleted: isDeleted, deleted: deleted, labels: labels, stabilityMinimal: stabilityMinimal, minStability: minStability, stabilityMaximal: stabilityMaximal, maxStability: maxStability, isFlaky: isFlaky, flaky: flaky, includeSteps: includeSteps, includeLabels: includeLabels, externalKey: externalKey, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **projectId** | **UUID** | Project internal ID | [optional] 
 **externalId** | **String** | Autotest external ID | [optional] 
 **globalId** | **Int64** | Autotest global ID | [optional] 
 **namespace** | **String** | Namespace in which autotest is located | [optional] 
 **isNamespaceNull** | **Bool** | OBSOLETE: Use &#x60;includeEmptyNamespaces&#x60; instead | [optional] 
 **includeEmptyNamespaces** | **Bool** | If result must contain autotests without namespace | [optional] 
 **className** | **String** | Name of class in which autotest is located | [optional] 
 **isClassnameNull** | **Bool** | OBSOLETE: Use &#x60;includeEmptyClassNames&#x60; instead | [optional] 
 **includeEmptyClassNames** | **Bool** | If result must contain autotests without class | [optional] 
 **isDeleted** | **Bool** | OBSOLETE: Use &#x60;deleted&#x60; instead | [optional] 
 **deleted** | **Bool** | Is autotest deleted | [optional] 
 **labels** | [**[String]**](String.md) | Include only autotests with provided labels | [optional] 
 **stabilityMinimal** | **Int** | OBSOLETE: Use &#x60;minStability&#x60; instead | [optional] 
 **minStability** | **Int** | Minimum stability value of autotest | [optional] 
 **stabilityMaximal** | **Int** | OBSOLETE: Use &#x60;maxStability&#x60; instead | [optional] 
 **maxStability** | **Int** | Maximum stability value of autotest | [optional] 
 **isFlaky** | **Bool** | OBSOLETE: Use &#x60;flaky&#x60; instead | [optional] 
 **flaky** | **Bool** | Is autotest marked as \&quot;Flaky\&quot; | [optional] 
 **includeSteps** | **Bool** | If result must also include autotest steps | [optional] 
 **includeLabels** | **Bool** | If result must also include autotest labels | [optional] 
 **externalKey** | **String** | External key of autotest | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[AutoTestModel]**](AutoTestModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoTestAverageDuration**
```swift
    internal class func getAutoTestAverageDuration(id: String, completion: @escaping (_ data: AutoTestAverageDurationModel?, _ error: Error?) -> Void)
```

Get average autotest duration

 Use case   User sets autotest internal (guid format) or global (integer format) identifier   User runs method execution   System calculates pass average duration and fail average duration of autotest from all related test results   System returns pass average duration and fail average duration for autotest

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier

// Get average autotest duration
AutoTestsAPI.getAutoTestAverageDuration(id: id) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 

### Return type

[**AutoTestAverageDurationModel**](AutoTestAverageDurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoTestById**
```swift
    internal class func getAutoTestById(id: String, completion: @escaping (_ data: AutoTestModel?, _ error: Error?) -> Void)
```

Get autotest by internal or global ID

 Use case   User sets autotest internal or global identifier and runs method execution   System returns autotest, which internal or global identifier equals the identifier value set in the previous action

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier

// Get autotest by internal or global ID
AutoTestsAPI.getAutoTestById(id: id) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 

### Return type

[**AutoTestModel**](AutoTestModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoTestChronology**
```swift
    internal class func getAutoTestChronology(id: String, completion: @escaping (_ data: [TestResultChronologyModel]?, _ error: Error?) -> Void)
```

Get autotest chronology

 Use case   User sets autotest internal (guid format) or global (integer format) identifier   User runs method execution   System search all test results related to autotest (with default limit equal 100)   System orders the test results by CompletedOn property descending and then orders by CreatedDate property descending   System returns test result chronology for autotest

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier

// Get autotest chronology
AutoTestsAPI.getAutoTestChronology(id: id) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 

### Return type

[**[TestResultChronologyModel]**](TestResultChronologyModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestRuns**
```swift
    internal class func getTestRuns(id: String, completion: @escaping (_ data: [TestRunShortModel]?, _ error: Error?) -> Void)
```

Get completed tests runs for autotests

 Use case   User sets autotest internal (guid format) or global (integer format) identifier   User runs method execution   System search for all test runs related to the autotest   System returns the enumeration of test runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier

// Get completed tests runs for autotests
AutoTestsAPI.getTestRuns(id: id) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 

### Return type

[**[TestRunShortModel]**](TestRunShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkItemResults**
```swift
    internal class func getWorkItemResults(id: String, from: Date? = nil, to: Date? = nil, configurationIds: [UUID]? = nil, testPlanIds: [UUID]? = nil, userIds: [UUID]? = nil, outcomes: [String]? = nil, isAutomated: Bool? = nil, automated: Bool? = nil, testRunIds: [UUID]? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestResultHistoryReportModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | 
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

AutoTestsAPI.getWorkItemResults(id: id, from: from, to: to, configurationIds: configurationIds, testPlanIds: testPlanIds, userIds: userIds, outcomes: outcomes, isAutomated: isAutomated, automated: automated, testRunIds: testRunIds, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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

# **getWorkItemsLinkedToAutoTest**
```swift
    internal class func getWorkItemsLinkedToAutoTest(id: String, isDeleted: Bool? = nil, isWorkItemDeleted: Bool? = nil, completion: @escaping (_ data: [WorkItemIdentifierModel]?, _ error: Error?) -> Void)
```

Get work items linked to autotest

               This method links an autotest to a test case or a checklist.              A manual test case with a linked automated work item is marked in the test management system as an autotest.              You can run it from graphical user interface (GUI). To do that:                               1. Open the project in GUI.               2. Go to <b>Test plans</b> section and switch to the <b>Execution</b> tab.               3. Select the autotest(s) you want to run using checkboxes.               4. In the toolbar above the test list, click <b>Run autotests</b>.              

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Specifies the autotest entity ID.   You can copy it from the address bar in your web browser or use autotest GUID.
let isDeleted = true // Bool | Specifies that a test is deleted or still relevant. (optional)
let isWorkItemDeleted = true // Bool | OBSOLETE: Use `isDeleted` instead (optional) (default to false)

// Get work items linked to autotest
AutoTestsAPI.getWorkItemsLinkedToAutoTest(id: id, isDeleted: isDeleted, isWorkItemDeleted: isWorkItemDeleted) { (response, error) in
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
 **id** | **String** | Specifies the autotest entity ID.   You can copy it from the address bar in your web browser or use autotest GUID. | 
 **isDeleted** | **Bool** | Specifies that a test is deleted or still relevant. | [optional] 
 **isWorkItemDeleted** | **Bool** | OBSOLETE: Use &#x60;isDeleted&#x60; instead | [optional] [default to false]

### Return type

[**[WorkItemIdentifierModel]**](WorkItemIdentifierModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkAutoTestToWorkItem**
```swift
    internal class func linkAutoTestToWorkItem(id: String, workItemIdModel: WorkItemIdModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Link autotest with work items

 Use case   User sets autotest internal (guid format) or global (integer format) identifier   User sets work item internal (guid format) or global (integer format) identifier   User runs method execution   System finds the autotest by the autotest identifier   System finds the work item by the work item identifier   System relates the work item with the autotest and returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = "id_example" // String | Autotest internal (UUID) or global (integer) identifier
let workItemIdModel = WorkItemIdModel(id: "id_example") // WorkItemIdModel |  (optional)

// Link autotest with work items
AutoTestsAPI.linkAutoTestToWorkItem(id: id, workItemIdModel: workItemIdModel) { (response, error) in
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
 **id** | **String** | Autotest internal (UUID) or global (integer) identifier | 
 **workItemIdModel** | [**WorkItemIdModel**](WorkItemIdModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAutoTest**
```swift
    internal class func updateAutoTest(autoTestPutModel: AutoTestPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update autotest

 Use case   User sets autotest updated parameters values (listed in the example) and runs method execution   System finds the autotest by the identifier   System updates autotest parameters                  [Optional] If steps enumeration is set, system creates step items, relates them to autotest              and deletes relations with current steps( if exist)                               [Optional] If Setup enumeration is set, system creates setup items and relates them to autotest              and deletes relations with current Setup items (if exist)                               [Optional] If teardown enumeration is set, system creates teardown items and relates them to autotest              and deletes relations with current teardown items (if exist)                               [Optional] If label enumeration is set, system creates labels and relates them to autotest              and deletes relations with current Labels (if exist)                               [Optional] If link enumeration is set, system creates links and relates them to autotest              and deletes relations with current Links (if exist)                 System updates autotest and returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let autoTestPutModel = AutoTestPutModel(id: 123, workItemIdsForLinkWithAutoTest: [123], externalId: "externalId_example", links: [LinkPutModel(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], projectId: 123, name: "name_example", namespace: "namespace_example", classname: "classname_example", steps: [AutoTestStepModel(title: "title_example", description: "description_example", steps: [nil])], setup: [nil], teardown: [nil], title: "title_example", description: "description_example", labels: [LabelPostModel(name: "name_example")], isFlaky: false, externalKey: "externalKey_example") // AutoTestPutModel |  (optional)

// Update autotest
AutoTestsAPI.updateAutoTest(autoTestPutModel: autoTestPutModel) { (response, error) in
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
 **autoTestPutModel** | [**AutoTestPutModel**](AutoTestPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMultiple**
```swift
    internal class func updateMultiple(autoTestPutModel: [AutoTestPutModel]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update multiple autotests

 Use case   User sets autotest updated parameters values (listed in the example) and runs method execution   System finds the autotest by the identifier   System updates autotest parameters                  [Optional] If steps enumeration is set, system creates step items, relates them to autotest              and deletes relations with current steps( if exist)                               [Optional] If Setup enumeration is set, system creates setup items and relates them to autotest              and deletes relations with current Setup items (if exist)                               [Optional] If teardown enumeration is set, system creates teardown items and relates them to autotest              and deletes relations with current teardown items (if exist)                               [Optional] If label enumeration is set, system creates labels and relates them to autotest              and deletes relations with current Labels (if exist)                               [Optional] If link enumeration is set, system creates links and relates them to autotest              and deletes relations with current Links (if exist)                 System updates autotest and returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let autoTestPutModel = [AutoTestPutModel(id: 123, workItemIdsForLinkWithAutoTest: [123], externalId: "externalId_example", links: [LinkPutModel(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], projectId: 123, name: "name_example", namespace: "namespace_example", classname: "classname_example", steps: [AutoTestStepModel(title: "title_example", description: "description_example", steps: [nil])], setup: [nil], teardown: [nil], title: "title_example", description: "description_example", labels: [LabelPostModel(name: "name_example")], isFlaky: false, externalKey: "externalKey_example")] // [AutoTestPutModel] |  (optional)

// Update multiple autotests
AutoTestsAPI.updateMultiple(autoTestPutModel: autoTestPutModel) { (response, error) in
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
 **autoTestPutModel** | [**[AutoTestPutModel]**](AutoTestPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

