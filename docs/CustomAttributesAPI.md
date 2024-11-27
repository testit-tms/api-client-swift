# CustomAttributesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2CustomAttributesGlobalIdDelete**](CustomAttributesAPI.md#apiv2customattributesglobaliddelete) | **DELETE** /api/v2/customAttributes/global/{id} | Delete global attribute
[**apiV2CustomAttributesGlobalIdPut**](CustomAttributesAPI.md#apiv2customattributesglobalidput) | **PUT** /api/v2/customAttributes/global/{id} | Edit global attribute
[**apiV2CustomAttributesGlobalPost**](CustomAttributesAPI.md#apiv2customattributesglobalpost) | **POST** /api/v2/customAttributes/global | Create global attribute
[**apiV2CustomAttributesIdGet**](CustomAttributesAPI.md#apiv2customattributesidget) | **GET** /api/v2/customAttributes/{id} | Get attribute
[**apiV2CustomAttributesSearchPost**](CustomAttributesAPI.md#apiv2customattributessearchpost) | **POST** /api/v2/customAttributes/search | Search for attributes


# **apiV2CustomAttributesGlobalIdDelete**
```swift
    open class func apiV2CustomAttributesGlobalIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete global attribute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of attribute

// Delete global attribute
CustomAttributesAPI.apiV2CustomAttributesGlobalIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** | Unique ID of attribute | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesGlobalIdPut**
```swift
    open class func apiV2CustomAttributesGlobalIdPut(id: UUID, globalCustomAttributeUpdateModel: GlobalCustomAttributeUpdateModel? = nil, completion: @escaping (_ data: CustomAttributeModel?, _ error: Error?) -> Void)
```

Edit global attribute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of attribute
let globalCustomAttributeUpdateModel = GlobalCustomAttributeUpdateModel(name: "name_example", options: [CustomAttributeOptionModel(id: 123, isDeleted: false, value: "value_example", isDefault: false)], isEnabled: false, isRequired: false) // GlobalCustomAttributeUpdateModel |  (optional)

// Edit global attribute
CustomAttributesAPI.apiV2CustomAttributesGlobalIdPut(id: id, globalCustomAttributeUpdateModel: globalCustomAttributeUpdateModel) { (response, error) in
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
 **id** | **UUID** | Unique ID of attribute | 
 **globalCustomAttributeUpdateModel** | [**GlobalCustomAttributeUpdateModel**](GlobalCustomAttributeUpdateModel.md) |  | [optional] 

### Return type

[**CustomAttributeModel**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesGlobalPost**
```swift
    open class func apiV2CustomAttributesGlobalPost(globalCustomAttributePostModel: GlobalCustomAttributePostModel? = nil, completion: @escaping (_ data: CustomAttributeModel?, _ error: Error?) -> Void)
```

Create global attribute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let globalCustomAttributePostModel = GlobalCustomAttributePostModel(name: "name_example", isEnabled: false, isRequired: false, options: [CustomAttributeOptionPostModel(value: "value_example", isDefault: false)], type: CustomAttributeTypesEnum()) // GlobalCustomAttributePostModel |  (optional)

// Create global attribute
CustomAttributesAPI.apiV2CustomAttributesGlobalPost(globalCustomAttributePostModel: globalCustomAttributePostModel) { (response, error) in
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
 **globalCustomAttributePostModel** | [**GlobalCustomAttributePostModel**](GlobalCustomAttributePostModel.md) |  | [optional] 

### Return type

[**CustomAttributeModel**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesIdGet**
```swift
    open class func apiV2CustomAttributesIdGet(id: UUID, completion: @escaping (_ data: CustomAttributeModel?, _ error: Error?) -> Void)
```

Get attribute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of attribute

// Get attribute
CustomAttributesAPI.apiV2CustomAttributesIdGet(id: id) { (response, error) in
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
 **id** | **UUID** | Unique ID of attribute | 

### Return type

[**CustomAttributeModel**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesSearchPost**
```swift
    open class func apiV2CustomAttributesSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, customAttributeSearchQueryModel: CustomAttributeSearchQueryModel? = nil, completion: @escaping (_ data: [CustomAttributeModel]?, _ error: Error?) -> Void)
```

Search for attributes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let customAttributeSearchQueryModel = CustomAttributeSearchQueryModel(name: "name_example", projectIds: [123], customAttributeIds: [123], customAttributeTypes: [CustomAttributeTypesEnum()], isGlobal: false, isDeleted: false) // CustomAttributeSearchQueryModel |  (optional)

// Search for attributes
CustomAttributesAPI.apiV2CustomAttributesSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, customAttributeSearchQueryModel: customAttributeSearchQueryModel) { (response, error) in
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
 **customAttributeSearchQueryModel** | [**CustomAttributeSearchQueryModel**](CustomAttributeSearchQueryModel.md) |  | [optional] 

### Return type

[**[CustomAttributeModel]**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

