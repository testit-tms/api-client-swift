# BackgroundJobsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2BackgroundJobsCompletedDelete**](BackgroundJobsAPI.md#apiv2backgroundjobscompleteddelete) | **DELETE** /api/v2/backgroundJobs/completed | Delete all completed background jobs
[**apiV2BackgroundJobsGet**](BackgroundJobsAPI.md#apiv2backgroundjobsget) | **GET** /api/v2/backgroundJobs | 
[**apiV2BackgroundJobsIdCancelPost**](BackgroundJobsAPI.md#apiv2backgroundjobsidcancelpost) | **POST** /api/v2/backgroundJobs/{id}/cancel | Cancel current user background job
[**apiV2BackgroundJobsIdGet**](BackgroundJobsAPI.md#apiv2backgroundjobsidget) | **GET** /api/v2/backgroundJobs/{id} | Get background job by ID
[**apiV2BackgroundJobsIdStatusGet**](BackgroundJobsAPI.md#apiv2backgroundjobsidstatusget) | **GET** /api/v2/backgroundJobs/{id}/status | Get background job status by job ID
[**apiV2BackgroundJobsSearchPost**](BackgroundJobsAPI.md#apiv2backgroundjobssearchpost) | **POST** /api/v2/backgroundJobs/search | Search for user background jobs


# **apiV2BackgroundJobsCompletedDelete**
```swift
    open class func apiV2BackgroundJobsCompletedDelete(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all completed background jobs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient


// Delete all completed background jobs
BackgroundJobsAPI.apiV2BackgroundJobsCompletedDelete() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BackgroundJobsGet**
```swift
    open class func apiV2BackgroundJobsGet(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [BackgroundJobGetModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

BackgroundJobsAPI.apiV2BackgroundJobsGet(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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

### Return type

[**[BackgroundJobGetModel]**](BackgroundJobGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BackgroundJobsIdCancelPost**
```swift
    open class func apiV2BackgroundJobsIdCancelPost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel current user background job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Cancel current user background job
BackgroundJobsAPI.apiV2BackgroundJobsIdCancelPost(id: id) { (response, error) in
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

# **apiV2BackgroundJobsIdGet**
```swift
    open class func apiV2BackgroundJobsIdGet(id: UUID, completion: @escaping (_ data: BackgroundJobGetModel?, _ error: Error?) -> Void)
```

Get background job by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of the background job

// Get background job by ID
BackgroundJobsAPI.apiV2BackgroundJobsIdGet(id: id) { (response, error) in
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
 **id** | **UUID** | Unique ID of the background job | 

### Return type

[**BackgroundJobGetModel**](BackgroundJobGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BackgroundJobsIdStatusGet**
```swift
    open class func apiV2BackgroundJobsIdStatusGet(id: UUID, completion: @escaping (_ data: BackgroundJobState?, _ error: Error?) -> Void)
```

Get background job status by job ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of the background job

// Get background job status by job ID
BackgroundJobsAPI.apiV2BackgroundJobsIdStatusGet(id: id) { (response, error) in
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
 **id** | **UUID** | Unique ID of the background job | 

### Return type

[**BackgroundJobState**](BackgroundJobState.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2BackgroundJobsSearchPost**
```swift
    open class func apiV2BackgroundJobsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, backgroundJobFilterModel: BackgroundJobFilterModel? = nil, completion: @escaping (_ data: [BackgroundJobGetModel]?, _ error: Error?) -> Void)
```

Search for user background jobs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let backgroundJobFilterModel = BackgroundJobFilterModel(types: [BackgroundJobType()], states: [BackgroundJobState()], isDeleted: false, startDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), endDate: nil) // BackgroundJobFilterModel |  (optional)

// Search for user background jobs
BackgroundJobsAPI.apiV2BackgroundJobsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, backgroundJobFilterModel: backgroundJobFilterModel) { (response, error) in
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
 **backgroundJobFilterModel** | [**BackgroundJobFilterModel**](BackgroundJobFilterModel.md) |  | [optional] 

### Return type

[**[BackgroundJobGetModel]**](BackgroundJobGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

