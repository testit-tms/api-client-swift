# TestPlansAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTestPointsWithSections**](TestPlansAPI.md#addtestpointswithsections) | **POST** /api/v2/testPlans/{id}/test-points/withSections | Add test-points to TestPlan with sections
[**addWorkItemsWithSections**](TestPlansAPI.md#addworkitemswithsections) | **POST** /api/v2/testPlans/{id}/workItems/withSections | Add WorkItems to TestPlan with Sections as TestSuites
[**apiV2TestPlansIdAnalyticsGet**](TestPlansAPI.md#apiv2testplansidanalyticsget) | **GET** /api/v2/testPlans/{id}/analytics | Get analytics by TestPlan
[**apiV2TestPlansIdAutobalancePost**](TestPlansAPI.md#apiv2testplansidautobalancepost) | **POST** /api/v2/testPlans/{id}/autobalance | Distribute test points between the users
[**apiV2TestPlansIdConfigurationsGet**](TestPlansAPI.md#apiv2testplansidconfigurationsget) | **GET** /api/v2/testPlans/{id}/configurations | Get TestPlan configurations
[**apiV2TestPlansIdExportTestPointsXlsxPost**](TestPlansAPI.md#apiv2testplansidexporttestpointsxlsxpost) | **POST** /api/v2/testPlans/{id}/export/testPoints/xlsx | Export TestPoints from TestPlan in xls format
[**apiV2TestPlansIdExportTestResultHistoryXlsxPost**](TestPlansAPI.md#apiv2testplansidexporttestresulthistoryxlsxpost) | **POST** /api/v2/testPlans/{id}/export/testResultHistory/xlsx | Export TestResults history from TestPlan in xls format
[**apiV2TestPlansIdHistoryGet**](TestPlansAPI.md#apiv2testplansidhistoryget) | **GET** /api/v2/testPlans/{id}/history | Get TestPlan history
[**apiV2TestPlansIdLinksGet**](TestPlansAPI.md#apiv2testplansidlinksget) | **GET** /api/v2/testPlans/{id}/links | Get Links of TestPlan
[**apiV2TestPlansIdPatch**](TestPlansAPI.md#apiv2testplansidpatch) | **PATCH** /api/v2/testPlans/{id} | Patch test plan
[**apiV2TestPlansIdSummariesGet**](TestPlansAPI.md#apiv2testplansidsummariesget) | **GET** /api/v2/testPlans/{id}/summaries | Get summary by TestPlan
[**apiV2TestPlansIdTestPointsLastResultsGet**](TestPlansAPI.md#apiv2testplansidtestpointslastresultsget) | **GET** /api/v2/testPlans/{id}/testPoints/lastResults | Get TestPoints with last result from TestPlan
[**apiV2TestPlansIdTestPointsResetPost**](TestPlansAPI.md#apiv2testplansidtestpointsresetpost) | **POST** /api/v2/testPlans/{id}/testPoints/reset | Reset TestPoints status of TestPlan
[**apiV2TestPlansIdTestPointsTesterDelete**](TestPlansAPI.md#apiv2testplansidtestpointstesterdelete) | **DELETE** /api/v2/testPlans/{id}/testPoints/tester | Unassign users from multiple test points
[**apiV2TestPlansIdTestPointsTesterUserIdPost**](TestPlansAPI.md#apiv2testplansidtestpointstesteruseridpost) | **POST** /api/v2/testPlans/{id}/testPoints/tester/{userId} | Assign user as a tester to multiple test points
[**apiV2TestPlansIdTestRunsGet**](TestPlansAPI.md#apiv2testplansidtestrunsget) | **GET** /api/v2/testPlans/{id}/testRuns | Get TestRuns of TestPlan
[**apiV2TestPlansIdTestRunsSearchPost**](TestPlansAPI.md#apiv2testplansidtestrunssearchpost) | **POST** /api/v2/testPlans/{id}/testRuns/search | Search TestRuns of TestPlan
[**apiV2TestPlansIdTestRunsTestResultsLastModifiedModifiedDateGet**](TestPlansAPI.md#apiv2testplansidtestrunstestresultslastmodifiedmodifieddateget) | **GET** /api/v2/testPlans/{id}/testRuns/testResults/lastModified/modifiedDate | Get last modification date of test plan&#39;s test results
[**apiV2TestPlansIdUnlockRequestPost**](TestPlansAPI.md#apiv2testplansidunlockrequestpost) | **POST** /api/v2/testPlans/{id}/unlock/request | Send unlock TestPlan notification
[**apiV2TestPlansShortsPost**](TestPlansAPI.md#apiv2testplansshortspost) | **POST** /api/v2/testPlans/shorts | Get TestPlans short models by Project identifiers
[**clone**](TestPlansAPI.md#clone) | **POST** /api/v2/testPlans/{id}/clone | Clone TestPlan
[**complete**](TestPlansAPI.md#complete) | **POST** /api/v2/testPlans/{id}/complete | Complete TestPlan
[**createTestPlan**](TestPlansAPI.md#createtestplan) | **POST** /api/v2/testPlans | Create TestPlan
[**deleteTestPlan**](TestPlansAPI.md#deletetestplan) | **DELETE** /api/v2/testPlans/{id} | Delete TestPlan
[**getTestPlanById**](TestPlansAPI.md#gettestplanbyid) | **GET** /api/v2/testPlans/{id} | Get TestPlan by Id
[**getTestSuitesById**](TestPlansAPI.md#gettestsuitesbyid) | **GET** /api/v2/testPlans/{id}/testSuites | Get TestSuites Tree By Id
[**pause**](TestPlansAPI.md#pause) | **POST** /api/v2/testPlans/{id}/pause | Pause TestPlan
[**purgeTestPlan**](TestPlansAPI.md#purgetestplan) | **POST** /api/v2/testPlans/{id}/purge | Permanently delete test plan from archive
[**restoreTestPlan**](TestPlansAPI.md#restoretestplan) | **POST** /api/v2/testPlans/{id}/restore | Restore TestPlan
[**start**](TestPlansAPI.md#start) | **POST** /api/v2/testPlans/{id}/start | Start TestPlan
[**updateTestPlan**](TestPlansAPI.md#updatetestplan) | **PUT** /api/v2/testPlans | Update TestPlan


# **addTestPointsWithSections**
```swift
    open class func addTestPointsWithSections(id: String, workItemSelectModel: WorkItemSelectModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add test-points to TestPlan with sections

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let workItemSelectModel = WorkItemSelectModel(filter: WorkItemFilterModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], links: WorkItemLinkFilterModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]), extractionModel: WorkItemExtractionModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)) // WorkItemSelectModel | Filter object to retrieve work items for test-suite's project (optional)

// Add test-points to TestPlan with sections
TestPlansAPI.addTestPointsWithSections(id: id, workItemSelectModel: workItemSelectModel) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **workItemSelectModel** | [**WorkItemSelectModel**](WorkItemSelectModel.md) | Filter object to retrieve work items for test-suite&#39;s project | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addWorkItemsWithSections**
```swift
    open class func addWorkItemsWithSections(id: String, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add WorkItems to TestPlan with Sections as TestSuites

 Use case  User sets TestPlan identifier  User sets WorkItem identifiers (listed in request example)  User runs method execution  System added WorkItems and Sections to TestPlan  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let requestBody = [123] // Set<UUID> |  (optional)

// Add WorkItems to TestPlan with Sections as TestSuites
TestPlansAPI.addWorkItemsWithSections(id: id, requestBody: requestBody) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdAnalyticsGet**
```swift
    open class func apiV2TestPlansIdAnalyticsGet(id: String, completion: @escaping (_ data: TestPointAnalyticResult?, _ error: Error?) -> Void)
```

Get analytics by TestPlan

 Use case  User sets test plan identifier  User runs method execution  System returns analytics by test plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Get analytics by TestPlan
TestPlansAPI.apiV2TestPlansIdAnalyticsGet(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

[**TestPointAnalyticResult**](TestPointAnalyticResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdAutobalancePost**
```swift
    open class func apiV2TestPlansIdAutobalancePost(id: String, testers: Set<UUID>? = nil, completion: @escaping (_ data: TestPlanWithTestSuiteTreeModel?, _ error: Error?) -> Void)
```

Distribute test points between the users

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan unique or global ID
let testers = [123] // Set<UUID> | Specifies a project user IDs to distribute (optional)

// Distribute test points between the users
TestPlansAPI.apiV2TestPlansIdAutobalancePost(id: id, testers: testers) { (response, error) in
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
 **id** | **String** | Test plan unique or global ID | 
 **testers** | [**Set&lt;UUID&gt;**](UUID.md) | Specifies a project user IDs to distribute | [optional] 

### Return type

[**TestPlanWithTestSuiteTreeModel**](TestPlanWithTestSuiteTreeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdConfigurationsGet**
```swift
    open class func apiV2TestPlansIdConfigurationsGet(id: String, completion: @escaping (_ data: [ConfigurationModel]?, _ error: Error?) -> Void)
```

Get TestPlan configurations

 Use case  User sets test plan identifier  User runs method execution  System return test plan configurations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Get TestPlan configurations
TestPlansAPI.apiV2TestPlansIdConfigurationsGet(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

[**[ConfigurationModel]**](ConfigurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdExportTestPointsXlsxPost**
```swift
    open class func apiV2TestPlansIdExportTestPointsXlsxPost(id: String, timeZoneOffsetInMinutes: Int64? = nil, getXlsxTestPointsByTestPlanModel: GetXlsxTestPointsByTestPlanModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Export TestPoints from TestPlan in xls format

 Use case  User sets test plan identifier  User sets filter model (listed in request example)  User runs method execution  System return export xlsx file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let timeZoneOffsetInMinutes = 987 // Int64 |  (optional)
let getXlsxTestPointsByTestPlanModel = GetXlsxTestPointsByTestPlanModel(includeName: false, includeSection: false, includePriority: false, includeSourceType: false, includeAutomated: false, includeStatus: false, includeDuration: false, includeCreationDate: false, includeAuthor: false, includeModificationDate: false, includeModifiedBy: false, includeTags: false, includeIterations: false, customAttributesIds: [123], configurationIds: [123]) // GetXlsxTestPointsByTestPlanModel |  (optional)

// Export TestPoints from TestPlan in xls format
TestPlansAPI.apiV2TestPlansIdExportTestPointsXlsxPost(id: id, timeZoneOffsetInMinutes: timeZoneOffsetInMinutes, getXlsxTestPointsByTestPlanModel: getXlsxTestPointsByTestPlanModel) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **timeZoneOffsetInMinutes** | **Int64** |  | [optional] 
 **getXlsxTestPointsByTestPlanModel** | [**GetXlsxTestPointsByTestPlanModel**](GetXlsxTestPointsByTestPlanModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdExportTestResultHistoryXlsxPost**
```swift
    open class func apiV2TestPlansIdExportTestResultHistoryXlsxPost(id: String, mustReturnOnlyLastTestResult: Bool? = nil, includeSteps: Bool? = nil, includeDeletedTestSuites: Bool? = nil, timeZoneOffsetInMinutes: Int64? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Export TestResults history from TestPlan in xls format

 Use case  User sets test plan identifier  User sets filter model (listed in request example)  User runs method execution  System return export xlsx file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let mustReturnOnlyLastTestResult = true // Bool |  (optional)
let includeSteps = true // Bool |  (optional)
let includeDeletedTestSuites = true // Bool |  (optional)
let timeZoneOffsetInMinutes = 987 // Int64 |  (optional)

// Export TestResults history from TestPlan in xls format
TestPlansAPI.apiV2TestPlansIdExportTestResultHistoryXlsxPost(id: id, mustReturnOnlyLastTestResult: mustReturnOnlyLastTestResult, includeSteps: includeSteps, includeDeletedTestSuites: includeDeletedTestSuites, timeZoneOffsetInMinutes: timeZoneOffsetInMinutes) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **mustReturnOnlyLastTestResult** | **Bool** |  | [optional] 
 **includeSteps** | **Bool** |  | [optional] 
 **includeDeletedTestSuites** | **Bool** |  | [optional] 
 **timeZoneOffsetInMinutes** | **Int64** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdHistoryGet**
```swift
    open class func apiV2TestPlansIdHistoryGet(id: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestPlanChangeModel]?, _ error: Error?) -> Void)
```

Get TestPlan history

 Use case  User sets test plan identifier  User runs method execution  System return test plan history

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get TestPlan history
TestPlansAPI.apiV2TestPlansIdHistoryGet(id: id, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestPlanChangeModel]**](TestPlanChangeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdLinksGet**
```swift
    open class func apiV2TestPlansIdLinksGet(id: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, completion: @escaping (_ data: [TestPlanLink]?, _ error: Error?) -> Void)
```

Get Links of TestPlan

 Use case  User sets test plan identifier  User sets pagination filter (listed in request example)  User runs method execution  System returns links of TestPlan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let skip = 987 // Int |  (optional)
let take = 987 // Int |  (optional)
let orderBy = "orderBy_example" // String |  (optional)

// Get Links of TestPlan
TestPlansAPI.apiV2TestPlansIdLinksGet(id: id, skip: skip, take: take, orderBy: orderBy) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **skip** | **Int** |  | [optional] 
 **take** | **Int** |  | [optional] 
 **orderBy** | **String** |  | [optional] 

### Return type

[**[TestPlanLink]**](TestPlanLink.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdPatch**
```swift
    open class func apiV2TestPlansIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch test plan

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of the test plan
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

// Patch test plan
TestPlansAPI.apiV2TestPlansIdPatch(id: id, operation: operation) { (response, error) in
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
 **id** | **UUID** | Unique ID of the test plan | 
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdSummariesGet**
```swift
    open class func apiV2TestPlansIdSummariesGet(id: String, completion: @escaping (_ data: TestPlanSummaryModel?, _ error: Error?) -> Void)
```

Get summary by TestPlan

 Use case  User sets test plan identifier  User runs method execution  System returns summary by test plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Get summary by TestPlan
TestPlansAPI.apiV2TestPlansIdSummariesGet(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

[**TestPlanSummaryModel**](TestPlanSummaryModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestPointsLastResultsGet**
```swift
    open class func apiV2TestPlansIdTestPointsLastResultsGet(id: String, testerId: UUID? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestPointWithLastResultResponseModel]?, _ error: Error?) -> Void)
```

Get TestPoints with last result from TestPlan

 Use case  User sets test plan identifier  User sets filter (listed in request example)  User runs method execution  System return test points with last result from test plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let testerId = 987 // UUID |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get TestPoints with last result from TestPlan
TestPlansAPI.apiV2TestPlansIdTestPointsLastResultsGet(id: id, testerId: testerId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **testerId** | **UUID** |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestPointWithLastResultResponseModel]**](TestPointWithLastResultResponseModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestPointsResetPost**
```swift
    open class func apiV2TestPlansIdTestPointsResetPost(id: String, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reset TestPoints status of TestPlan

 Use case  User sets test plan identifier  User sets test points identifiers  User runs method execution  System reset test points statuses of test plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let requestBody = [123] // Set<UUID> |  (optional)

// Reset TestPoints status of TestPlan
TestPlansAPI.apiV2TestPlansIdTestPointsResetPost(id: id, requestBody: requestBody) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestPointsTesterDelete**
```swift
    open class func apiV2TestPlansIdTestPointsTesterDelete(id: String, testPointSelectModel: TestPointSelectModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Unassign users from multiple test points

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the test plan
let testPointSelectModel = TestPointSelectModel(filter: TestPointFilterModel(testPlanIds: [123], testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), workItemIsDeleted: false, statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), extractionModel: TestPointsExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestPointSelectModel |  (optional)

// Unassign users from multiple test points
TestPlansAPI.apiV2TestPlansIdTestPointsTesterDelete(id: id, testPointSelectModel: testPointSelectModel) { (response, error) in
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
 **id** | **String** | Unique or global ID of the test plan | 
 **testPointSelectModel** | [**TestPointSelectModel**](TestPointSelectModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestPointsTesterUserIdPost**
```swift
    open class func apiV2TestPlansIdTestPointsTesterUserIdPost(id: String, userId: UUID, testPointSelectModel: TestPointSelectModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Assign user as a tester to multiple test points

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the test plan
let userId = 987 // UUID | Unique ID of the user
let testPointSelectModel = TestPointSelectModel(filter: TestPointFilterModel(testPlanIds: [123], testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), workItemIsDeleted: false, statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), extractionModel: TestPointsExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestPointSelectModel |  (optional)

// Assign user as a tester to multiple test points
TestPlansAPI.apiV2TestPlansIdTestPointsTesterUserIdPost(id: id, userId: userId, testPointSelectModel: testPointSelectModel) { (response, error) in
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
 **id** | **String** | Unique or global ID of the test plan | 
 **userId** | **UUID** | Unique ID of the user | 
 **testPointSelectModel** | [**TestPointSelectModel**](TestPointSelectModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestRunsGet**
```swift
    open class func apiV2TestPlansIdTestRunsGet(id: String, notStarted: Bool? = nil, inProgress: Bool? = nil, stopped: Bool? = nil, completed: Bool? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestRunApiResult]?, _ error: Error?) -> Void)
```

Get TestRuns of TestPlan

 Use case  User sets test plan identifier  User sets TestRun status filter (listed in request example)  User runs method execution  System returns TestRuns for TestPlan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let notStarted = true // Bool |  (optional)
let inProgress = true // Bool |  (optional)
let stopped = true // Bool |  (optional)
let completed = true // Bool |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get TestRuns of TestPlan
TestPlansAPI.apiV2TestPlansIdTestRunsGet(id: id, notStarted: notStarted, inProgress: inProgress, stopped: stopped, completed: completed, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **notStarted** | **Bool** |  | [optional] 
 **inProgress** | **Bool** |  | [optional] 
 **stopped** | **Bool** |  | [optional] 
 **completed** | **Bool** |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestRunApiResult]**](TestRunApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestRunsSearchPost**
```swift
    open class func apiV2TestPlansIdTestRunsSearchPost(id: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, searchTestRunsApiModel: SearchTestRunsApiModel? = nil, completion: @escaping (_ data: [TestRunApiResult]?, _ error: Error?) -> Void)
```

Search TestRuns of TestPlan

 Use case  User sets test plan identifier  User sets TestRuns filter (listed in request example)  User runs method execution  System returns TestRuns for TestPlan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let searchTestRunsApiModel = SearchTestRunsApiModel(name: "name_example", states: [TestRunState()], statusCodes: ["statusCodes_example"], startedDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), completedDate: nil, createdByIds: [123], modifiedByIds: [123]) // SearchTestRunsApiModel |  (optional)

// Search TestRuns of TestPlan
TestPlansAPI.apiV2TestPlansIdTestRunsSearchPost(id: id, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, searchTestRunsApiModel: searchTestRunsApiModel) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **searchTestRunsApiModel** | [**SearchTestRunsApiModel**](SearchTestRunsApiModel.md) |  | [optional] 

### Return type

[**[TestRunApiResult]**](TestRunApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdTestRunsTestResultsLastModifiedModifiedDateGet**
```swift
    open class func apiV2TestPlansIdTestRunsTestResultsLastModifiedModifiedDateGet(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get last modification date of test plan's test results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan unique or global ID

// Get last modification date of test plan's test results
TestPlansAPI.apiV2TestPlansIdTestRunsTestResultsLastModifiedModifiedDateGet(id: id) { (response, error) in
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
 **id** | **String** | Test plan unique or global ID | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansIdUnlockRequestPost**
```swift
    open class func apiV2TestPlansIdUnlockRequestPost(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send unlock TestPlan notification

 Use case  User sets test plan identifier  User runs method execution  System send unlock test plan notification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Send unlock TestPlan notification
TestPlansAPI.apiV2TestPlansIdUnlockRequestPost(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPlansShortsPost**
```swift
    open class func apiV2TestPlansShortsPost(isDeleted: Bool? = nil, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: [TestPlanShortModel]?, _ error: Error?) -> Void)
```

Get TestPlans short models by Project identifiers

 Use case  User sets projects identifiers  User runs method execution  System return test plans short models (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let isDeleted = true // Bool |  (optional)
let requestBody = [123] // Set<UUID> |  (optional)

// Get TestPlans short models by Project identifiers
TestPlansAPI.apiV2TestPlansShortsPost(isDeleted: isDeleted, requestBody: requestBody) { (response, error) in
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
 **isDeleted** | **Bool** |  | [optional] 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

[**[TestPlanShortModel]**](TestPlanShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clone**
```swift
    open class func clone(id: String, completion: @escaping (_ data: TestPlanModel?, _ error: Error?) -> Void)
```

Clone TestPlan

 Use case  User sets test plan identifier  User runs method execution  System clones test plan  System returns test plan (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Clone TestPlan
TestPlansAPI.clone(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

[**TestPlanModel**](TestPlanModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **complete**
```swift
    open class func complete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Complete TestPlan

 Use case  User sets test plan identifier  User runs method execution  System completes the test plan and updates test plan status  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Complete TestPlan
TestPlansAPI.complete(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTestPlan**
```swift
    open class func createTestPlan(createTestPlanApiModel: CreateTestPlanApiModel? = nil, completion: @escaping (_ data: TestPlanModel?, _ error: Error?) -> Void)
```

Create TestPlan

 Use case  User sets test plan properties (listed in request example)  User runs method execution  System creates test plan  System returns test plan (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createTestPlanApiModel = CreateTestPlanApiModel(tags: [TagApiModel(name: "name_example")], name: "name_example", startDate: Date(), endDate: Date(), description: "description_example", build: "build_example", projectId: 123, productName: "productName_example", hasAutomaticDurationTimer: false, attributes: "TODO", testSuite: TestSuiteTestPlanApiModel(name: "name_example", configurationIds: [123], type: TestSuiteType(), saveStructure: false, workItemsSelector: WorkItemSelectModel(filter: WorkItemFilterModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], links: WorkItemLinkFilterModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]), extractionModel: WorkItemExtractionModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)))) // CreateTestPlanApiModel |  (optional)

// Create TestPlan
TestPlansAPI.createTestPlan(createTestPlanApiModel: createTestPlanApiModel) { (response, error) in
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
 **createTestPlanApiModel** | [**CreateTestPlanApiModel**](CreateTestPlanApiModel.md) |  | [optional] 

### Return type

[**TestPlanModel**](TestPlanModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTestPlan**
```swift
    open class func deleteTestPlan(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete TestPlan

 Use case  User sets test plan identifier  User runs method execution  System delete test plan  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Delete TestPlan
TestPlansAPI.deleteTestPlan(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestPlanById**
```swift
    open class func getTestPlanById(id: String, completion: @escaping (_ data: TestPlanModel?, _ error: Error?) -> Void)
```

Get TestPlan by Id

 Use case  User sets test plan identifier  User runs method execution  System search  test plan by the identifier  System returns test plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Get TestPlan by Id
TestPlansAPI.getTestPlanById(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

[**TestPlanModel**](TestPlanModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestSuitesById**
```swift
    open class func getTestSuitesById(id: String, completion: @escaping (_ data: [TestSuiteV2TreeModel]?, _ error: Error?) -> Void)
```

Get TestSuites Tree By Id

 Use case  User sets test plan identifier  User runs method execution  System finds test suites related to the test plan  System returns test suites as a tree model (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Get TestSuites Tree By Id
TestPlansAPI.getTestSuitesById(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

[**[TestSuiteV2TreeModel]**](TestSuiteV2TreeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pause**
```swift
    open class func pause(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Pause TestPlan

 Use case  User sets test plan identifier  User runs method execution  System pauses the test plan and updates test plan status  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Pause TestPlan
TestPlansAPI.pause(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purgeTestPlan**
```swift
    open class func purgeTestPlan(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently delete test plan from archive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the test plan

// Permanently delete test plan from archive
TestPlansAPI.purgeTestPlan(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the test plan | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreTestPlan**
```swift
    open class func restoreTestPlan(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore TestPlan

 Use case  User sets test plan identifier  User runs method execution  System restores test plan  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Restore TestPlan
TestPlansAPI.restoreTestPlan(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start**
```swift
    open class func start(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start TestPlan

 Use case  User sets test plan identifier  User runs method execution  System starts the test plan and updates test plan status  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Test plan internal (guid format) or global (int format) identifier

// Start TestPlan
TestPlansAPI.start(id: id) { (response, error) in
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
 **id** | **String** | Test plan internal (guid format) or global (int format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTestPlan**
```swift
    open class func updateTestPlan(updateTestPlanApiModel: UpdateTestPlanApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update TestPlan

 Use case  User sets test plan properties(listed in request example)  User runs method execution  System updates test plan  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let updateTestPlanApiModel = UpdateTestPlanApiModel(id: 123, lockedById: 123, name: "name_example", startDate: Date(), endDate: Date(), description: "description_example", build: "build_example", projectId: 123, productName: "productName_example", hasAutomaticDurationTimer: false, attributes: "TODO", tags: [TagApiModel(name: "name_example")]) // UpdateTestPlanApiModel |  (optional)

// Update TestPlan
TestPlansAPI.updateTestPlan(updateTestPlanApiModel: updateTestPlanApiModel) { (response, error) in
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
 **updateTestPlanApiModel** | [**UpdateTestPlanApiModel**](UpdateTestPlanApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

