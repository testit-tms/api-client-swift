# TagsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TagsDelete**](TagsAPI.md#apiv2tagsdelete) | **DELETE** /api/v2/tags | Delete tags
[**apiV2TagsGet**](TagsAPI.md#apiv2tagsget) | **GET** /api/v2/tags | Get all Tags
[**apiV2TagsIdDelete**](TagsAPI.md#apiv2tagsiddelete) | **DELETE** /api/v2/tags/{id} | Delete tag
[**apiV2TagsPost**](TagsAPI.md#apiv2tagspost) | **POST** /api/v2/tags | Create tag
[**apiV2TagsPut**](TagsAPI.md#apiv2tagsput) | **PUT** /api/v2/tags | Update tag
[**apiV2TagsSearchGet**](TagsAPI.md#apiv2tagssearchget) | **GET** /api/v2/tags/search | Search tags
[**apiV2TagsTestPlansTagsGet**](TagsAPI.md#apiv2tagstestplanstagsget) | **GET** /api/v2/tags/testPlansTags | Get all Tags that are used in TestPlans


# **apiV2TagsDelete**
```swift
    open class func apiV2TagsDelete(tagSelectModel: TagSelectModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete tags

 Use case   User sets collection of tags internal (guid format) identifiers   System searches and deletes a collection of tags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tagSelectModel = TagSelectModel(filter: TagsFilterModel(name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123]), extractionModel: TagExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TagSelectModel |  (optional)

// Delete tags
TagsAPI.apiV2TagsDelete(tagSelectModel: tagSelectModel) { (response, error) in
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
 **tagSelectModel** | [**TagSelectModel**](TagSelectModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsGet**
```swift
    open class func apiV2TagsGet(completion: @escaping (_ data: [TagModel]?, _ error: Error?) -> Void)
```

Get all Tags

 Use case   User runs method execution   System returns tags (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get all Tags
TagsAPI.apiV2TagsGet() { (response, error) in
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

[**[TagModel]**](TagModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsIdDelete**
```swift
    open class func apiV2TagsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete tag

 Use case   User sets tag internal (guid format) identifier   System search and delete tag

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | Tag internal (UUID) identifier

// Delete tag
TagsAPI.apiV2TagsIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** | Tag internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsPost**
```swift
    open class func apiV2TagsPost(tagPostModel: TagPostModel? = nil, completion: @escaping (_ data: TagModel?, _ error: Error?) -> Void)
```

Create tag

 Use case   User sets tag model (listed in the request example)   User runs method execution   System creates tag   System returns tag model (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tagPostModel = TagPostModel(name: "name_example") // TagPostModel |  (optional)

// Create tag
TagsAPI.apiV2TagsPost(tagPostModel: tagPostModel) { (response, error) in
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
 **tagPostModel** | [**TagPostModel**](TagPostModel.md) |  | [optional] 

### Return type

[**TagModel**](TagModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsPut**
```swift
    open class func apiV2TagsPut(id: UUID? = nil, tagPutModel: TagPutModel? = nil, completion: @escaping (_ data: TagModel?, _ error: Error?) -> Void)
```

Update tag

 Use case   User sets tag ID and model (listed in the request example)   User runs method execution   System updates tag   System returns tag model (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID |  (optional)
let tagPutModel = TagPutModel(name: "name_example") // TagPutModel |  (optional)

// Update tag
TagsAPI.apiV2TagsPut(id: id, tagPutModel: tagPutModel) { (response, error) in
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
 **id** | **UUID** |  | [optional] 
 **tagPutModel** | [**TagPutModel**](TagPutModel.md) |  | [optional] 

### Return type

[**TagModel**](TagModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsSearchGet**
```swift
    open class func apiV2TagsSearchGet(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TagModel]?, _ error: Error?) -> Void)
```

Search tags

 Use case   User runs method execution   System returns collection of tags (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Search tags
TagsAPI.apiV2TagsSearchGet(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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

[**[TagModel]**](TagModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TagsTestPlansTagsGet**
```swift
    open class func apiV2TagsTestPlansTagsGet(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TagModel]?, _ error: Error?) -> Void)
```

Get all Tags that are used in TestPlans

 Use case   User runs method execution   System returns tags (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get all Tags that are used in TestPlans
TagsAPI.apiV2TagsTestPlansTagsGet(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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

[**[TagModel]**](TagModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

