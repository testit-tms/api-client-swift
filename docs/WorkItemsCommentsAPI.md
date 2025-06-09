# WorkItemsCommentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2WorkItemsCommentsCommentIdDelete**](WorkItemsCommentsAPI.md#apiv2workitemscommentscommentiddelete) | **DELETE** /api/v2/workItems/comments/{commentId} | Delete WorkItem comment
[**apiV2WorkItemsCommentsPost**](WorkItemsCommentsAPI.md#apiv2workitemscommentspost) | **POST** /api/v2/workItems/comments | Create WorkItem comment
[**apiV2WorkItemsCommentsPut**](WorkItemsCommentsAPI.md#apiv2workitemscommentsput) | **PUT** /api/v2/workItems/comments | Update work item comment
[**apiV2WorkItemsIdCommentsCountGet**](WorkItemsCommentsAPI.md#apiv2workitemsidcommentscountget) | **GET** /api/v2/workItems/{id}/comments/count | Get work item comments count
[**apiV2WorkItemsIdCommentsGet**](WorkItemsCommentsAPI.md#apiv2workitemsidcommentsget) | **GET** /api/v2/workItems/{id}/comments | Get work item comments


# **apiV2WorkItemsCommentsCommentIdDelete**
```swift
    open class func apiV2WorkItemsCommentsCommentIdDelete(commentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete WorkItem comment

 Use case  User sets comment identifier  User runs method execution  System delete comment  System returns success status code

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let commentId = 987 // UUID | Comment internal (guid format) identifier

// Delete WorkItem comment
WorkItemsCommentsAPI.apiV2WorkItemsCommentsCommentIdDelete(commentId: commentId) { (response, error) in
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
 **commentId** | **UUID** | Comment internal (guid format) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsCommentsPost**
```swift
    open class func apiV2WorkItemsCommentsPost(workItemCommentPostModel: WorkItemCommentPostModel? = nil, completion: @escaping (_ data: WorkItemCommentModel?, _ error: Error?) -> Void)
```

Create WorkItem comment

 Use case  User sets comment properties (listed in request parameters)  User runs method execution  System creates comment  System returns comment model (listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let workItemCommentPostModel = WorkItemCommentPostModel(text: "text_example", workItemId: 123) // WorkItemCommentPostModel |  (optional)

// Create WorkItem comment
WorkItemsCommentsAPI.apiV2WorkItemsCommentsPost(workItemCommentPostModel: workItemCommentPostModel) { (response, error) in
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
 **workItemCommentPostModel** | [**WorkItemCommentPostModel**](WorkItemCommentPostModel.md) |  | [optional] 

### Return type

[**WorkItemCommentModel**](WorkItemCommentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsCommentsPut**
```swift
    open class func apiV2WorkItemsCommentsPut(workItemCommentPutModel: WorkItemCommentPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update work item comment

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let workItemCommentPutModel = WorkItemCommentPutModel(text: "text_example", id: 123) // WorkItemCommentPutModel |  (optional)

// Update work item comment
WorkItemsCommentsAPI.apiV2WorkItemsCommentsPut(workItemCommentPutModel: workItemCommentPutModel) { (response, error) in
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
 **workItemCommentPutModel** | [**WorkItemCommentPutModel**](WorkItemCommentPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdCommentsCountGet**
```swift
    open class func apiV2WorkItemsIdCommentsCountGet(id: String, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get work item comments count

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the work item

// Get work item comments count
WorkItemsCommentsAPI.apiV2WorkItemsIdCommentsCountGet(id: id) { (response, error) in
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

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WorkItemsIdCommentsGet**
```swift
    open class func apiV2WorkItemsIdCommentsGet(id: String, completion: @escaping (_ data: [WorkItemCommentModel]?, _ error: Error?) -> Void)
```

Get work item comments

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the work item

// Get work item comments
WorkItemsCommentsAPI.apiV2WorkItemsIdCommentsGet(id: id) { (response, error) in
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

[**[WorkItemCommentModel]**](WorkItemCommentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

