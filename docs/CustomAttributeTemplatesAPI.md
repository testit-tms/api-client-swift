# CustomAttributeTemplatesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2CustomAttributesTemplatesIdCustomAttributesExcludePost**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatesidcustomattributesexcludepost) | **POST** /api/v2/customAttributes/templates/{id}/customAttributes/exclude | Exclude CustomAttributes from CustomAttributeTemplate
[**apiV2CustomAttributesTemplatesIdCustomAttributesIncludePost**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatesidcustomattributesincludepost) | **POST** /api/v2/customAttributes/templates/{id}/customAttributes/include | Include CustomAttributes to CustomAttributeTemplate
[**apiV2CustomAttributesTemplatesIdDelete**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatesiddelete) | **DELETE** /api/v2/customAttributes/templates/{id} | Delete CustomAttributeTemplate
[**apiV2CustomAttributesTemplatesIdGet**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatesidget) | **GET** /api/v2/customAttributes/templates/{id} | Get CustomAttributeTemplate by ID
[**apiV2CustomAttributesTemplatesNameGet**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatesnameget) | **GET** /api/v2/customAttributes/templates/{name} | Get CustomAttributeTemplate by name
[**apiV2CustomAttributesTemplatesPost**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatespost) | **POST** /api/v2/customAttributes/templates | Create CustomAttributeTemplate
[**apiV2CustomAttributesTemplatesPut**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatesput) | **PUT** /api/v2/customAttributes/templates | Update custom attributes template
[**apiV2CustomAttributesTemplatesSearchPost**](CustomAttributeTemplatesAPI.md#apiv2customattributestemplatessearchpost) | **POST** /api/v2/customAttributes/templates/search | Search CustomAttributeTemplates


# **apiV2CustomAttributesTemplatesIdCustomAttributesExcludePost**
```swift
    internal class func apiV2CustomAttributesTemplatesIdCustomAttributesExcludePost(id: UUID, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Exclude CustomAttributes from CustomAttributeTemplate

 Use case   User sets attribute template internal identifier   User sets attribute internal identifiers    User runs method execution   System delete attributes from attributes tempalte

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Attribute template internal (UUID) identifier
let requestBody = [123] // Set<UUID> |  (optional)

// Exclude CustomAttributes from CustomAttributeTemplate
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesIdCustomAttributesExcludePost(id: id, requestBody: requestBody) { (response, error) in
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
 **id** | **UUID** | Attribute template internal (UUID) identifier | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesIdCustomAttributesIncludePost**
```swift
    internal class func apiV2CustomAttributesTemplatesIdCustomAttributesIncludePost(id: UUID, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Include CustomAttributes to CustomAttributeTemplate

 Use case   User sets attribute template internal identifier   User sets attribute internal identifiers    User runs method execution   System add attributes to attributes tempalte

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Attribute template internal (UUID) identifier
let requestBody = [123] // Set<UUID> |  (optional)

// Include CustomAttributes to CustomAttributeTemplate
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesIdCustomAttributesIncludePost(id: id, requestBody: requestBody) { (response, error) in
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
 **id** | **UUID** | Attribute template internal (UUID) identifier | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesIdDelete**
```swift
    internal class func apiV2CustomAttributesTemplatesIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete CustomAttributeTemplate

 Use case   User sets attribute template internal identifier   User runs method execution   System search and delete attribute template   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Attribute template internal (UUID) identifier

// Delete CustomAttributeTemplate
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** | Attribute template internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesIdGet**
```swift
    internal class func apiV2CustomAttributesTemplatesIdGet(id: UUID, completion: @escaping (_ data: CustomAttributeTemplateModel?, _ error: Error?) -> Void)
```

Get CustomAttributeTemplate by ID

 Use case   User sets attribute template internal identifier    User runs method execution   System return attribute template (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | CustomAttributeTemplate internal (UUID) identifier

// Get CustomAttributeTemplate by ID
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesIdGet(id: id) { (response, error) in
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
 **id** | **UUID** | CustomAttributeTemplate internal (UUID) identifier | 

### Return type

[**CustomAttributeTemplateModel**](CustomAttributeTemplateModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesNameGet**
```swift
    internal class func apiV2CustomAttributesTemplatesNameGet(name: String, completion: @escaping (_ data: CustomAttributeTemplateModel?, _ error: Error?) -> Void)
```

Get CustomAttributeTemplate by name

 Use case   User sets attribute template name   User runs method execution   System search and return list of attribute templates (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let name = "name_example" // String | CustomAttributeTemplate name for search

// Get CustomAttributeTemplate by name
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesNameGet(name: name) { (response, error) in
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
 **name** | **String** | CustomAttributeTemplate name for search | 

### Return type

[**CustomAttributeTemplateModel**](CustomAttributeTemplateModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesPost**
```swift
    internal class func apiV2CustomAttributesTemplatesPost(customAttributeTemplatePostModel: CustomAttributeTemplatePostModel? = nil, completion: @escaping (_ data: CustomAttributeTemplateModel?, _ error: Error?) -> Void)
```

Create CustomAttributeTemplate

 Use case   User sets attribute template parameters (listed in request example)   User runs method execution   System creates attribute template   System returns attribute template model (example listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let customAttributeTemplatePostModel = CustomAttributeTemplatePostModel(customAttributeIds: [123], name: "name_example") // CustomAttributeTemplatePostModel |  (optional)

// Create CustomAttributeTemplate
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesPost(customAttributeTemplatePostModel: customAttributeTemplatePostModel) { (response, error) in
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
 **customAttributeTemplatePostModel** | [**CustomAttributeTemplatePostModel**](CustomAttributeTemplatePostModel.md) |  | [optional] 

### Return type

[**CustomAttributeTemplateModel**](CustomAttributeTemplateModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesPut**
```swift
    internal class func apiV2CustomAttributesTemplatesPut(customAttributeTemplatePutModel: CustomAttributeTemplatePutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update custom attributes template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let customAttributeTemplatePutModel = CustomAttributeTemplatePutModel(id: 123, customAttributeIds: [123], name: "name_example") // CustomAttributeTemplatePutModel |  (optional)

// Update custom attributes template
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesPut(customAttributeTemplatePutModel: customAttributeTemplatePutModel) { (response, error) in
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
 **customAttributeTemplatePutModel** | [**CustomAttributeTemplatePutModel**](CustomAttributeTemplatePutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2CustomAttributesTemplatesSearchPost**
```swift
    internal class func apiV2CustomAttributesTemplatesSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, customAttributeTemplateSearchQueryModel: CustomAttributeTemplateSearchQueryModel? = nil, completion: @escaping (_ data: [SearchCustomAttributeTemplateGetModel]?, _ error: Error?) -> Void)
```

Search CustomAttributeTemplates

 Use case   User sets search params model (listed in request example)   User runs method execution   System return attribute templates (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let customAttributeTemplateSearchQueryModel = CustomAttributeTemplateSearchQueryModel(name: "name_example", projectIds: [123], customAttributeTypes: [CustomAttributeTypesEnum()], isDeleted: false) // CustomAttributeTemplateSearchQueryModel |  (optional)

// Search CustomAttributeTemplates
CustomAttributeTemplatesAPI.apiV2CustomAttributesTemplatesSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, customAttributeTemplateSearchQueryModel: customAttributeTemplateSearchQueryModel) { (response, error) in
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
 **customAttributeTemplateSearchQueryModel** | [**CustomAttributeTemplateSearchQueryModel**](CustomAttributeTemplateSearchQueryModel.md) |  | [optional] 

### Return type

[**[SearchCustomAttributeTemplateGetModel]**](SearchCustomAttributeTemplateGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

