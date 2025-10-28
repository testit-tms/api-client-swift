# ProjectTestPlansAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdTestPlansAnalyticsGet**](ProjectTestPlansAPI.md#apiv2projectsprojectidtestplansanalyticsget) | **GET** /api/v2/projects/{projectId}/testPlans/analytics | Get TestPlans analytics
[**apiV2ProjectsProjectIdTestPlansDeleteBulkPost**](ProjectTestPlansAPI.md#apiv2projectsprojectidtestplansdeletebulkpost) | **POST** /api/v2/projects/{projectId}/testPlans/delete/bulk | Delete multiple test plans
[**apiV2ProjectsProjectIdTestPlansNameExistsGet**](ProjectTestPlansAPI.md#apiv2projectsprojectidtestplansnameexistsget) | **GET** /api/v2/projects/{projectId}/testPlans/{name}/exists | Checks if TestPlan exists with the specified name exists for the project
[**apiV2ProjectsProjectIdTestPlansPurgeBulkPost**](ProjectTestPlansAPI.md#apiv2projectsprojectidtestplanspurgebulkpost) | **POST** /api/v2/projects/{projectId}/testPlans/purge/bulk | Permanently delete multiple archived test plans
[**apiV2ProjectsProjectIdTestPlansRestoreBulkPost**](ProjectTestPlansAPI.md#apiv2projectsprojectidtestplansrestorebulkpost) | **POST** /api/v2/projects/{projectId}/testPlans/restore/bulk | Restore multiple test plans
[**apiV2ProjectsProjectIdTestPlansSearchPost**](ProjectTestPlansAPI.md#apiv2projectsprojectidtestplanssearchpost) | **POST** /api/v2/projects/{projectId}/testPlans/search | Get Project TestPlans with analytics


# **apiV2ProjectsProjectIdTestPlansAnalyticsGet**
```swift
    open class func apiV2ProjectsProjectIdTestPlansAnalyticsGet(projectId: UUID, isDeleted: Bool? = nil, mustUpdateCache: Bool? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestPlanWithAnalyticModel]?, _ error: Error?) -> Void)
```

Get TestPlans analytics

  Use case    User sets project internal identifier    User sets query params    User runs method execution    System return analytics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = 987 // UUID | Project internal (UUID) identifier
let isDeleted = true // Bool |  (optional)
let mustUpdateCache = true // Bool |  (optional) (default to false)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get TestPlans analytics
ProjectTestPlansAPI.apiV2ProjectsProjectIdTestPlansAnalyticsGet(projectId: projectId, isDeleted: isDeleted, mustUpdateCache: mustUpdateCache, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **projectId** | **UUID** | Project internal (UUID) identifier | 
 **isDeleted** | **Bool** |  | [optional] 
 **mustUpdateCache** | **Bool** |  | [optional] [default to false]
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestPlanWithAnalyticModel]**](TestPlanWithAnalyticModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansDeleteBulkPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansDeleteBulkPost(projectId: String, testPlanSelectModel: TestPlanSelectModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Delete multiple test plans

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global ID of the project
let testPlanSelectModel = TestPlanSelectModel(filter: ProjectTestPlansFilterModel(name: "name_example", description: "description_example", build: "build_example", productName: "productName_example", status: [TestPlanStatusModel()], globalIds: [123], isLocked: false, lockedDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), automaticDurationTimer: [false], createdByIds: [123], createdDate: nil, startDate: nil, endDate: nil, tagNames: ["tagNames_example"], attributes: "TODO", isDeleted: false), extractionModel: TestPlanExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestPlanSelectModel |  (optional)

// Delete multiple test plans
ProjectTestPlansAPI.apiV2ProjectsProjectIdTestPlansDeleteBulkPost(projectId: projectId, testPlanSelectModel: testPlanSelectModel) { (response, error) in
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
 **projectId** | **String** | Unique or global ID of the project | 
 **testPlanSelectModel** | [**TestPlanSelectModel**](TestPlanSelectModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansNameExistsGet**
```swift
    open class func apiV2ProjectsProjectIdTestPlansNameExistsGet(projectId: UUID, name: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Checks if TestPlan exists with the specified name exists for the project

  Use case    User sets project internal or global identifier    User runs method execution    System purge delete project workitems

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = 987 // UUID | Project internal (UUID) or global (integer) identifier
let name = "name_example" // String | TestPlan name to check

// Checks if TestPlan exists with the specified name exists for the project
ProjectTestPlansAPI.apiV2ProjectsProjectIdTestPlansNameExistsGet(projectId: projectId, name: name) { (response, error) in
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
 **projectId** | **UUID** | Project internal (UUID) or global (integer) identifier | 
 **name** | **String** | TestPlan name to check | 

### Return type

**Bool**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansPurgeBulkPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansPurgeBulkPost(projectId: String, testPlanSelectModel: TestPlanSelectModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently delete multiple archived test plans

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global ID of the project
let testPlanSelectModel = TestPlanSelectModel(filter: ProjectTestPlansFilterModel(name: "name_example", description: "description_example", build: "build_example", productName: "productName_example", status: [TestPlanStatusModel()], globalIds: [123], isLocked: false, lockedDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), automaticDurationTimer: [false], createdByIds: [123], createdDate: nil, startDate: nil, endDate: nil, tagNames: ["tagNames_example"], attributes: "TODO", isDeleted: false), extractionModel: TestPlanExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestPlanSelectModel |  (optional)

// Permanently delete multiple archived test plans
ProjectTestPlansAPI.apiV2ProjectsProjectIdTestPlansPurgeBulkPost(projectId: projectId, testPlanSelectModel: testPlanSelectModel) { (response, error) in
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
 **projectId** | **String** | Unique or global ID of the project | 
 **testPlanSelectModel** | [**TestPlanSelectModel**](TestPlanSelectModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansRestoreBulkPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansRestoreBulkPost(projectId: String, testPlanSelectModel: TestPlanSelectModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Restore multiple test plans

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global ID of the project
let testPlanSelectModel = TestPlanSelectModel(filter: ProjectTestPlansFilterModel(name: "name_example", description: "description_example", build: "build_example", productName: "productName_example", status: [TestPlanStatusModel()], globalIds: [123], isLocked: false, lockedDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), automaticDurationTimer: [false], createdByIds: [123], createdDate: nil, startDate: nil, endDate: nil, tagNames: ["tagNames_example"], attributes: "TODO", isDeleted: false), extractionModel: TestPlanExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestPlanSelectModel |  (optional)

// Restore multiple test plans
ProjectTestPlansAPI.apiV2ProjectsProjectIdTestPlansRestoreBulkPost(projectId: projectId, testPlanSelectModel: testPlanSelectModel) { (response, error) in
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
 **projectId** | **String** | Unique or global ID of the project | 
 **testPlanSelectModel** | [**TestPlanSelectModel**](TestPlanSelectModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdTestPlansSearchPost**
```swift
    open class func apiV2ProjectsProjectIdTestPlansSearchPost(projectId: String, mustUpdateCache: Bool? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, projectTestPlansFilterModel: ProjectTestPlansFilterModel? = nil, completion: @escaping (_ data: [TestPlanWithAnalyticModel]?, _ error: Error?) -> Void)
```

Get Project TestPlans with analytics

  Use case    User sets project internal or global identifier    User sets request body    User runs method execution    System returns project testplans with analytics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let mustUpdateCache = true // Bool |  (optional) (default to false)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let projectTestPlansFilterModel = ProjectTestPlansFilterModel(name: "name_example", description: "description_example", build: "build_example", productName: "productName_example", status: [TestPlanStatusModel()], globalIds: [123], isLocked: false, lockedDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), automaticDurationTimer: [false], createdByIds: [123], createdDate: nil, startDate: nil, endDate: nil, tagNames: ["tagNames_example"], attributes: "TODO", isDeleted: false) // ProjectTestPlansFilterModel |  (optional)

// Get Project TestPlans with analytics
ProjectTestPlansAPI.apiV2ProjectsProjectIdTestPlansSearchPost(projectId: projectId, mustUpdateCache: mustUpdateCache, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, projectTestPlansFilterModel: projectTestPlansFilterModel) { (response, error) in
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
 **projectId** | **String** | Project internal (UUID) or global (integer) identifier | 
 **mustUpdateCache** | **Bool** |  | [optional] [default to false]
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **projectTestPlansFilterModel** | [**ProjectTestPlansFilterModel**](ProjectTestPlansFilterModel.md) |  | [optional] 

### Return type

[**[TestPlanWithAnalyticModel]**](TestPlanWithAnalyticModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

