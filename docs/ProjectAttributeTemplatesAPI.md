# ProjectAttributeTemplatesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdAttributesTemplatesSearchPost**](ProjectAttributeTemplatesAPI.md#apiv2projectsprojectidattributestemplatessearchpost) | **POST** /api/v2/projects/{projectId}/attributes/templates/search | Search for custom attributes templates
[**apiV2ProjectsProjectIdAttributesTemplatesTemplateIdDelete**](ProjectAttributeTemplatesAPI.md#apiv2projectsprojectidattributestemplatestemplateiddelete) | **DELETE** /api/v2/projects/{projectId}/attributes/templates/{templateId} | Delete CustomAttributeTemplate from Project
[**apiV2ProjectsProjectIdAttributesTemplatesTemplateIdPost**](ProjectAttributeTemplatesAPI.md#apiv2projectsprojectidattributestemplatestemplateidpost) | **POST** /api/v2/projects/{projectId}/attributes/templates/{templateId} | Add CustomAttributeTemplate to Project


# **apiV2ProjectsProjectIdAttributesTemplatesSearchPost**
```swift
    open class func apiV2ProjectsProjectIdAttributesTemplatesSearchPost(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, projectCustomAttributesTemplatesFilterModel: ProjectCustomAttributesTemplatesFilterModel? = nil, completion: @escaping (_ data: [ProjectCustomAttributeTemplateGetModel]?, _ error: Error?) -> Void)
```

Search for custom attributes templates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | 
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let projectCustomAttributesTemplatesFilterModel = ProjectCustomAttributesTemplatesFilterModel(name: "name_example", customAttributeTypes: [CustomAttributeTypesEnum()]) // ProjectCustomAttributesTemplatesFilterModel |  (optional)

// Search for custom attributes templates
ProjectAttributeTemplatesAPI.apiV2ProjectsProjectIdAttributesTemplatesSearchPost(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, projectCustomAttributesTemplatesFilterModel: projectCustomAttributesTemplatesFilterModel) { (response, error) in
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
 **projectId** | **String** |  | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **projectCustomAttributesTemplatesFilterModel** | [**ProjectCustomAttributesTemplatesFilterModel**](ProjectCustomAttributesTemplatesFilterModel.md) |  | [optional] 

### Return type

[**[ProjectCustomAttributeTemplateGetModel]**](ProjectCustomAttributeTemplateGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdAttributesTemplatesTemplateIdDelete**
```swift
    open class func apiV2ProjectsProjectIdAttributesTemplatesTemplateIdDelete(projectId: String, templateId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete CustomAttributeTemplate from Project

 Use case   User sets project internal or global identifier    User sets attribute template internal identifier    User runs method execution   System delete attribute template from project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let templateId = 987 // UUID | CustomAttributeTemplate internal (UUID) identifier

// Delete CustomAttributeTemplate from Project
ProjectAttributeTemplatesAPI.apiV2ProjectsProjectIdAttributesTemplatesTemplateIdDelete(projectId: projectId, templateId: templateId) { (response, error) in
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
 **templateId** | **UUID** | CustomAttributeTemplate internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdAttributesTemplatesTemplateIdPost**
```swift
    open class func apiV2ProjectsProjectIdAttributesTemplatesTemplateIdPost(projectId: String, templateId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add CustomAttributeTemplate to Project

 Use case   User sets project internal or global identifier    User sets attribute template internal identifier    User runs method execution   System add attribute template to project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let templateId = 987 // UUID | CustomAttributeTemplate internal (UUID) identifier

// Add CustomAttributeTemplate to Project
ProjectAttributeTemplatesAPI.apiV2ProjectsProjectIdAttributesTemplatesTemplateIdPost(projectId: projectId, templateId: templateId) { (response, error) in
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
 **templateId** | **UUID** | CustomAttributeTemplate internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

