# WorkflowsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2WorkflowsIdDelete**](WorkflowsAPI.md#apiv2workflowsiddelete) | **DELETE** /api/v2/workflows/{id} | 
[**apiV2WorkflowsIdGet**](WorkflowsAPI.md#apiv2workflowsidget) | **GET** /api/v2/workflows/{id} | 
[**apiV2WorkflowsIdPatch**](WorkflowsAPI.md#apiv2workflowsidpatch) | **PATCH** /api/v2/workflows/{id} | 
[**apiV2WorkflowsIdProjectsSearchPost**](WorkflowsAPI.md#apiv2workflowsidprojectssearchpost) | **POST** /api/v2/workflows/{id}/projects/search | 
[**apiV2WorkflowsIdPut**](WorkflowsAPI.md#apiv2workflowsidput) | **PUT** /api/v2/workflows/{id} | 
[**apiV2WorkflowsNameNameExistsGet**](WorkflowsAPI.md#apiv2workflowsnamenameexistsget) | **GET** /api/v2/workflows/name/{name}/exists | 
[**apiV2WorkflowsPost**](WorkflowsAPI.md#apiv2workflowspost) | **POST** /api/v2/workflows | 
[**apiV2WorkflowsSearchPost**](WorkflowsAPI.md#apiv2workflowssearchpost) | **POST** /api/v2/workflows/search | 


# **apiV2WorkflowsIdDelete**
```swift
    open class func apiV2WorkflowsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

WorkflowsAPI.apiV2WorkflowsIdDelete(id: id) { (response, error) in
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

# **apiV2WorkflowsIdGet**
```swift
    open class func apiV2WorkflowsIdGet(id: UUID, completion: @escaping (_ data: WorkflowApiResult?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

WorkflowsAPI.apiV2WorkflowsIdGet(id: id) { (response, error) in
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

[**WorkflowApiResult**](WorkflowApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkflowsIdPatch**
```swift
    open class func apiV2WorkflowsIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

WorkflowsAPI.apiV2WorkflowsIdPatch(id: id, operation: operation) { (response, error) in
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
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkflowsIdProjectsSearchPost**
```swift
    open class func apiV2WorkflowsIdProjectsSearchPost(id: UUID, searchWorkflowProjectsApiModel: SearchWorkflowProjectsApiModel? = nil, completion: @escaping (_ data: WorkflowProjectApiResultReply?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let searchWorkflowProjectsApiModel = SearchWorkflowProjectsApiModel(inquiry: Inquiry(filter: CompositeFilter(filters: [123], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123))) // SearchWorkflowProjectsApiModel |  (optional)

WorkflowsAPI.apiV2WorkflowsIdProjectsSearchPost(id: id, searchWorkflowProjectsApiModel: searchWorkflowProjectsApiModel) { (response, error) in
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
 **searchWorkflowProjectsApiModel** | [**SearchWorkflowProjectsApiModel**](SearchWorkflowProjectsApiModel.md) |  | [optional] 

### Return type

[**WorkflowProjectApiResultReply**](WorkflowProjectApiResultReply.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkflowsIdPut**
```swift
    open class func apiV2WorkflowsIdPut(id: UUID, updateWorkflowApiModel: UpdateWorkflowApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let updateWorkflowApiModel = UpdateWorkflowApiModel(name: "name_example", isDefault: false, statuses: [WorkflowStatusApiModel(statusId: 123, priority: 123)], projectIds: [123]) // UpdateWorkflowApiModel |  (optional)

WorkflowsAPI.apiV2WorkflowsIdPut(id: id, updateWorkflowApiModel: updateWorkflowApiModel) { (response, error) in
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
 **updateWorkflowApiModel** | [**UpdateWorkflowApiModel**](UpdateWorkflowApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkflowsNameNameExistsGet**
```swift
    open class func apiV2WorkflowsNameNameExistsGet(name: String, completion: @escaping (_ data: WorkflowExistsByNameApiResult?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | 

WorkflowsAPI.apiV2WorkflowsNameNameExistsGet(name: name) { (response, error) in
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

[**WorkflowExistsByNameApiResult**](WorkflowExistsByNameApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkflowsPost**
```swift
    open class func apiV2WorkflowsPost(createWorkflowApiModel: CreateWorkflowApiModel? = nil, completion: @escaping (_ data: WorkflowApiResult?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createWorkflowApiModel = CreateWorkflowApiModel(name: "name_example", isDefault: false, statuses: [WorkflowStatusApiModel(statusId: 123, priority: 123)], projectIds: [123]) // CreateWorkflowApiModel |  (optional)

WorkflowsAPI.apiV2WorkflowsPost(createWorkflowApiModel: createWorkflowApiModel) { (response, error) in
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
 **createWorkflowApiModel** | [**CreateWorkflowApiModel**](CreateWorkflowApiModel.md) |  | [optional] 

### Return type

[**WorkflowApiResult**](WorkflowApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkflowsSearchPost**
```swift
    open class func apiV2WorkflowsSearchPost(searchWorkflowsApiModel: SearchWorkflowsApiModel? = nil, completion: @escaping (_ data: WorkflowShortApiResultReply?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let searchWorkflowsApiModel = SearchWorkflowsApiModel(inquiry: Inquiry(filter: CompositeFilter(filters: [123], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123))) // SearchWorkflowsApiModel |  (optional)

WorkflowsAPI.apiV2WorkflowsSearchPost(searchWorkflowsApiModel: searchWorkflowsApiModel) { (response, error) in
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
 **searchWorkflowsApiModel** | [**SearchWorkflowsApiModel**](SearchWorkflowsApiModel.md) |  | [optional] 

### Return type

[**WorkflowShortApiResultReply**](WorkflowShortApiResultReply.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

