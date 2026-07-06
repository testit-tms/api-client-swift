# ProjectFailureCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdAutotestsFailureCategoriesGroupingSearchPost**](ProjectFailureCategoriesAPI.md#apiv2projectsprojectidautotestsfailurecategoriesgroupingsearchpost) | **POST** /api/v2/projects/{projectId}/autotests/failure-categories/grouping-search | Get failure categories with support for filtering, sorting and grouping
[**apiV2ProjectsProjectIdAutotestsFailureCategoriesIdDelete**](ProjectFailureCategoriesAPI.md#apiv2projectsprojectidautotestsfailurecategoriesiddelete) | **DELETE** /api/v2/projects/{projectId}/autotests/failure-categories/{id} | Delete failure category
[**apiV2ProjectsProjectIdAutotestsFailureCategoriesIdGet**](ProjectFailureCategoriesAPI.md#apiv2projectsprojectidautotestsfailurecategoriesidget) | **GET** /api/v2/projects/{projectId}/autotests/failure-categories/{id} | Get failure category by ID
[**apiV2ProjectsProjectIdAutotestsFailureCategoriesPost**](ProjectFailureCategoriesAPI.md#apiv2projectsprojectidautotestsfailurecategoriespost) | **POST** /api/v2/projects/{projectId}/autotests/failure-categories | Create failure category
[**apiV2ProjectsProjectIdAutotestsFailureCategoriesPut**](ProjectFailureCategoriesAPI.md#apiv2projectsprojectidautotestsfailurecategoriesput) | **PUT** /api/v2/projects/{projectId}/autotests/failure-categories | Update failure category


# **apiV2ProjectsProjectIdAutotestsFailureCategoriesGroupingSearchPost**
```swift
    open class func apiV2ProjectsProjectIdAutotestsFailureCategoriesGroupingSearchPost(projectId: String, failureCategoryGroupSearchApiModel: FailureCategoryGroupSearchApiModel? = nil, completion: @escaping (_ data: ProjectFailureCategoryGroupItemApiResultReply?, _ error: Error?) -> Void)
```

Get failure categories with support for filtering, sorting and grouping

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let failureCategoryGroupSearchApiModel = FailureCategoryGroupSearchApiModel(inquiry: Inquiry(group: Group(field: "field_example", displayField: "displayField_example"), filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: "value_example", field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123)), group: FailureCategoryGroupApiModel(field: "field_example", displayField: "displayField_example")) // FailureCategoryGroupSearchApiModel |  (optional)

// Get failure categories with support for filtering, sorting and grouping
ProjectFailureCategoriesAPI.apiV2ProjectsProjectIdAutotestsFailureCategoriesGroupingSearchPost(projectId: projectId, failureCategoryGroupSearchApiModel: failureCategoryGroupSearchApiModel) { (response, error) in
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
 **failureCategoryGroupSearchApiModel** | [**FailureCategoryGroupSearchApiModel**](FailureCategoryGroupSearchApiModel.md) |  | [optional] 

### Return type

[**ProjectFailureCategoryGroupItemApiResultReply**](ProjectFailureCategoryGroupItemApiResultReply.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdAutotestsFailureCategoriesIdDelete**
```swift
    open class func apiV2ProjectsProjectIdAutotestsFailureCategoriesIdDelete(projectId: String, id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let id = 987 // UUID | 

// Delete failure category
ProjectFailureCategoriesAPI.apiV2ProjectsProjectIdAutotestsFailureCategoriesIdDelete(projectId: projectId, id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdAutotestsFailureCategoriesIdGet**
```swift
    open class func apiV2ProjectsProjectIdAutotestsFailureCategoriesIdGet(projectId: String, id: UUID, completion: @escaping (_ data: ProjectDetailedFailureCategoryApiResult?, _ error: Error?) -> Void)
```

Get failure category by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let id = 987 // UUID | 

// Get failure category by ID
ProjectFailureCategoriesAPI.apiV2ProjectsProjectIdAutotestsFailureCategoriesIdGet(projectId: projectId, id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**ProjectDetailedFailureCategoryApiResult**](ProjectDetailedFailureCategoryApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdAutotestsFailureCategoriesPost**
```swift
    open class func apiV2ProjectsProjectIdAutotestsFailureCategoriesPost(projectId: String, createProjectFailureCategoryApiModel: CreateProjectFailureCategoryApiModel? = nil, completion: @escaping (_ data: ProjectDetailedFailureCategoryApiResult?, _ error: Error?) -> Void)
```

Create failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let createProjectFailureCategoryApiModel = CreateProjectFailureCategoryApiModel(name: "name_example", failureCategory: FailureCategory(), failureClassRegexes: [CreateFailureClassRegexApiModel(regexText: "regexText_example")]) // CreateProjectFailureCategoryApiModel |  (optional)

// Create failure category
ProjectFailureCategoriesAPI.apiV2ProjectsProjectIdAutotestsFailureCategoriesPost(projectId: projectId, createProjectFailureCategoryApiModel: createProjectFailureCategoryApiModel) { (response, error) in
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
 **createProjectFailureCategoryApiModel** | [**CreateProjectFailureCategoryApiModel**](CreateProjectFailureCategoryApiModel.md) |  | [optional] 

### Return type

[**ProjectDetailedFailureCategoryApiResult**](ProjectDetailedFailureCategoryApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdAutotestsFailureCategoriesPut**
```swift
    open class func apiV2ProjectsProjectIdAutotestsFailureCategoriesPut(projectId: String, updateFailureCategoryProjectApiModel: UpdateFailureCategoryProjectApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Internal (UUID) or global (integer) identifier
let updateFailureCategoryProjectApiModel = UpdateFailureCategoryProjectApiModel(id: 123, name: "name_example", failureCategory: FailureCategory(), failureClassRegexes: [UpdateFailureClassRegexApiModel(id: 123, regexText: "regexText_example")]) // UpdateFailureCategoryProjectApiModel |  (optional)

// Update failure category
ProjectFailureCategoriesAPI.apiV2ProjectsProjectIdAutotestsFailureCategoriesPut(projectId: projectId, updateFailureCategoryProjectApiModel: updateFailureCategoryProjectApiModel) { (response, error) in
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
 **updateFailureCategoryProjectApiModel** | [**UpdateFailureCategoryProjectApiModel**](UpdateFailureCategoryProjectApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

