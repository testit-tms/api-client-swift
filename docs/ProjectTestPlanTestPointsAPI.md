# ProjectTestPlanTestPointsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAnalyticsPost**](ProjectTestPlanTestPointsAPI.md#apiv2projectsprojectidtestplanstestplanidtestpointsanalyticspost) | **POST** /api/v2/projects/{projectId}/test-plans/{testPlanId}/test-points/analytics | Get test points analytics.
[**apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRerunPost**](ProjectTestPlanTestPointsAPI.md#apiv2projectsprojectidtestplanstestplanidtestpointsautotestsrerunpost) | **POST** /api/v2/projects/{projectId}/test-plans/{testPlanId}/test-points/autotests/rerun | Rerun autotests.
[**apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRunPost**](ProjectTestPlanTestPointsAPI.md#apiv2projectsprojectidtestplanstestplanidtestpointsautotestsrunpost) | **POST** /api/v2/projects/{projectId}/test-plans/{testPlanId}/test-points/autotests/run | Run autotests.
[**apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsGroupingSearchPost**](ProjectTestPlanTestPointsAPI.md#apiv2projectsprojectidtestplanstestplanidtestpointsgroupingsearchpost) | **POST** /api/v2/projects/{projectId}/test-plans/{testPlanId}/test-points/grouping-search | Search test points in test plan.
[**apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsTestersPost**](ProjectTestPlanTestPointsAPI.md#apiv2projectsprojectidtestplanstestplanidtestpointstesterspost) | **POST** /api/v2/projects/{projectId}/test-plans/{testPlanId}/test-points/testers | Distribute test points between the users.


# **apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAnalyticsPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAnalyticsPost(projectId: String, testPlanId: UUID, testPlanTestPointsAnalyticsApiModel: TestPlanTestPointsAnalyticsApiModel? = nil, completion: @escaping (_ data: TestPlanTestPointsAnalyticsApiResult?, _ error: Error?) -> Void)
```

Get test points analytics.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let testPlanId = 987 // UUID | 
let testPlanTestPointsAnalyticsApiModel = TestPlanTestPointsAnalyticsApiModel(filter: TestPlanTestPointsSearchApiModel(testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], excludeTags: ["excludeTags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), extractionModel: TestPlanTestPointsExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestPlanTestPointsAnalyticsApiModel |  (optional)

// Get test points analytics.
ProjectTestPlanTestPointsAPI.apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAnalyticsPost(projectId: projectId, testPlanId: testPlanId, testPlanTestPointsAnalyticsApiModel: testPlanTestPointsAnalyticsApiModel) { (response, error) in
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
 **projectId** | **String** | Internal (UUID) or global (integer) identifier | 
 **testPlanId** | **UUID** |  | 
 **testPlanTestPointsAnalyticsApiModel** | [**TestPlanTestPointsAnalyticsApiModel**](TestPlanTestPointsAnalyticsApiModel.md) |  | [optional] 

### Return type

[**TestPlanTestPointsAnalyticsApiResult**](TestPlanTestPointsAnalyticsApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRerunPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRerunPost(projectId: String, testPlanId: UUID, testPlanTestPointsAutoTestsRerunApiModel: TestPlanTestPointsAutoTestsRerunApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Rerun autotests.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let testPlanId = 987 // UUID | 
let testPlanTestPointsAutoTestsRerunApiModel = TestPlanTestPointsAutoTestsRerunApiModel(filter: TestPlanTestPointsSearchApiModel(testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], excludeTags: ["excludeTags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), extractionModel: TestPlanTestPointsExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123])), webhookIds: [123]) // TestPlanTestPointsAutoTestsRerunApiModel |  (optional)

// Rerun autotests.
ProjectTestPlanTestPointsAPI.apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRerunPost(projectId: projectId, testPlanId: testPlanId, testPlanTestPointsAutoTestsRerunApiModel: testPlanTestPointsAutoTestsRerunApiModel) { (response, error) in
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
 **projectId** | **String** | Internal (UUID) or global (integer) identifier | 
 **testPlanId** | **UUID** |  | 
 **testPlanTestPointsAutoTestsRerunApiModel** | [**TestPlanTestPointsAutoTestsRerunApiModel**](TestPlanTestPointsAutoTestsRerunApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRunPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRunPost(projectId: String, testPlanId: UUID, testPlanTestPointsAutoTestsRunApiModel: TestPlanTestPointsAutoTestsRunApiModel? = nil, completion: @escaping (_ data: TestRunNameApiResult?, _ error: Error?) -> Void)
```

Run autotests.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let testPlanId = 987 // UUID | 
let testPlanTestPointsAutoTestsRunApiModel = TestPlanTestPointsAutoTestsRunApiModel(filter: TestPlanTestPointsSearchApiModel(testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], excludeTags: ["excludeTags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), extractionModel: TestPlanTestPointsExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123])), webhookIds: [123], build: "build_example", resetNotActualAutomatedTestPoints: false, tags: ["tags_example"]) // TestPlanTestPointsAutoTestsRunApiModel |  (optional)

// Run autotests.
ProjectTestPlanTestPointsAPI.apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsAutotestsRunPost(projectId: projectId, testPlanId: testPlanId, testPlanTestPointsAutoTestsRunApiModel: testPlanTestPointsAutoTestsRunApiModel) { (response, error) in
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
 **projectId** | **String** | Internal (UUID) or global (integer) identifier | 
 **testPlanId** | **UUID** |  | 
 **testPlanTestPointsAutoTestsRunApiModel** | [**TestPlanTestPointsAutoTestsRunApiModel**](TestPlanTestPointsAutoTestsRunApiModel.md) |  | [optional] 

### Return type

[**TestRunNameApiResult**](TestRunNameApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsGroupingSearchPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsGroupingSearchPost(projectId: String, testPlanId: UUID, testPlanTestPointsApiModel: TestPlanTestPointsApiModel? = nil, completion: @escaping (_ data: TestPlanTestPointsGroupSearchApiResult?, _ error: Error?) -> Void)
```

Search test points in test plan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let testPlanId = 987 // UUID | 
let testPlanTestPointsApiModel = TestPlanTestPointsApiModel(filter: TestPlanTestPointsSearchApiModel(testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], excludeTags: ["excludeTags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), group: TestPlanTestPointsGroupApiModel(field: "field_example", displayField: "displayField_example"), inquiry: TestPlanTestPointsInquiryApiModel(order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123))) // TestPlanTestPointsApiModel |  (optional)

// Search test points in test plan.
ProjectTestPlanTestPointsAPI.apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsGroupingSearchPost(projectId: projectId, testPlanId: testPlanId, testPlanTestPointsApiModel: testPlanTestPointsApiModel) { (response, error) in
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
 **projectId** | **String** | Internal (UUID) or global (integer) identifier | 
 **testPlanId** | **UUID** |  | 
 **testPlanTestPointsApiModel** | [**TestPlanTestPointsApiModel**](TestPlanTestPointsApiModel.md) |  | [optional] 

### Return type

[**TestPlanTestPointsGroupSearchApiResult**](TestPlanTestPointsGroupSearchApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsTestersPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsTestersPost(projectId: String, testPlanId: UUID, testPlanTestPointsSetTestersApiModel: TestPlanTestPointsSetTestersApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Distribute test points between the users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let testPlanId = 987 // UUID | 
let testPlanTestPointsSetTestersApiModel = TestPlanTestPointsSetTestersApiModel(filter: TestPlanTestPointsSearchApiModel(testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], excludeTags: ["excludeTags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]), extractionModel: TestPlanTestPointsExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123])), testerIds: [123]) // TestPlanTestPointsSetTestersApiModel |  (optional)

// Distribute test points between the users.
ProjectTestPlanTestPointsAPI.apiV2ProjectsProjectIdTestPlansTestPlanIdTestPointsTestersPost(projectId: projectId, testPlanId: testPlanId, testPlanTestPointsSetTestersApiModel: testPlanTestPointsSetTestersApiModel) { (response, error) in
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
 **projectId** | **String** | Internal (UUID) or global (integer) identifier | 
 **testPlanId** | **UUID** |  | 
 **testPlanTestPointsSetTestersApiModel** | [**TestPlanTestPointsSetTestersApiModel**](TestPlanTestPointsSetTestersApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

