# TestStatusesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TestStatusesCodeCodeExistsGet**](TestStatusesAPI.md#apiv2teststatusescodecodeexistsget) | **GET** /api/v2/testStatuses/code/{code}/exists | 
[**apiV2TestStatusesIdDelete**](TestStatusesAPI.md#apiv2teststatusesiddelete) | **DELETE** /api/v2/testStatuses/{id} | 
[**apiV2TestStatusesIdGet**](TestStatusesAPI.md#apiv2teststatusesidget) | **GET** /api/v2/testStatuses/{id} | 
[**apiV2TestStatusesIdPut**](TestStatusesAPI.md#apiv2teststatusesidput) | **PUT** /api/v2/testStatuses/{id} | 
[**apiV2TestStatusesNameNameExistsGet**](TestStatusesAPI.md#apiv2teststatusesnamenameexistsget) | **GET** /api/v2/testStatuses/name/{name}/exists | 
[**apiV2TestStatusesPost**](TestStatusesAPI.md#apiv2teststatusespost) | **POST** /api/v2/testStatuses | 
[**apiV2TestStatusesSearchPost**](TestStatusesAPI.md#apiv2teststatusessearchpost) | **POST** /api/v2/testStatuses/search | 


# **apiV2TestStatusesCodeCodeExistsGet**
```swift
    open class func apiV2TestStatusesCodeCodeExistsGet(code: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let code = "code_example" // String | 

TestStatusesAPI.apiV2TestStatusesCodeCodeExistsGet(code: code) { (response, error) in
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
 **code** | **String** |  | 

### Return type

**Bool**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestStatusesIdDelete**
```swift
    open class func apiV2TestStatusesIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

TestStatusesAPI.apiV2TestStatusesIdDelete(id: id) { (response, error) in
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

# **apiV2TestStatusesIdGet**
```swift
    open class func apiV2TestStatusesIdGet(id: UUID, completion: @escaping (_ data: TestStatusApiResult?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

TestStatusesAPI.apiV2TestStatusesIdGet(id: id) { (response, error) in
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

[**TestStatusApiResult**](TestStatusApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestStatusesIdPut**
```swift
    open class func apiV2TestStatusesIdPut(id: UUID, updateTestStatusApiModel: UpdateTestStatusApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let updateTestStatusApiModel = UpdateTestStatusApiModel(name: "name_example", description: "description_example") // UpdateTestStatusApiModel |  (optional)

TestStatusesAPI.apiV2TestStatusesIdPut(id: id, updateTestStatusApiModel: updateTestStatusApiModel) { (response, error) in
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
 **updateTestStatusApiModel** | [**UpdateTestStatusApiModel**](UpdateTestStatusApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestStatusesNameNameExistsGet**
```swift
    open class func apiV2TestStatusesNameNameExistsGet(name: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | 

TestStatusesAPI.apiV2TestStatusesNameNameExistsGet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

**Bool**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestStatusesPost**
```swift
    open class func apiV2TestStatusesPost(createTestStatusApiModel: CreateTestStatusApiModel? = nil, completion: @escaping (_ data: TestStatusApiResult?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createTestStatusApiModel = CreateTestStatusApiModel(name: "name_example", type: TestStatusApiType(), code: "code_example", description: "description_example") // CreateTestStatusApiModel |  (optional)

TestStatusesAPI.apiV2TestStatusesPost(createTestStatusApiModel: createTestStatusApiModel) { (response, error) in
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
 **createTestStatusApiModel** | [**CreateTestStatusApiModel**](CreateTestStatusApiModel.md) |  | [optional] 

### Return type

[**TestStatusApiResult**](TestStatusApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestStatusesSearchPost**
```swift
    open class func apiV2TestStatusesSearchPost(searchTestStatusesApiModel: SearchTestStatusesApiModel? = nil, completion: @escaping (_ data: TestStatusApiResultReply?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let searchTestStatusesApiModel = SearchTestStatusesApiModel(inquiry: Inquiry(filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: "value_example", field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123))) // SearchTestStatusesApiModel |  (optional)

TestStatusesAPI.apiV2TestStatusesSearchPost(searchTestStatusesApiModel: searchTestStatusesApiModel) { (response, error) in
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
 **searchTestStatusesApiModel** | [**SearchTestStatusesApiModel**](SearchTestStatusesApiModel.md) |  | [optional] 

### Return type

[**TestStatusApiResultReply**](TestStatusApiResultReply.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

