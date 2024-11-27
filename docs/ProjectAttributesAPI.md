# ProjectAttributesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProjectsAttribute**](ProjectAttributesAPI.md#createprojectsattribute) | **POST** /api/v2/projects/{projectId}/attributes | Create project attribute
[**deleteProjectsAttribute**](ProjectAttributesAPI.md#deleteprojectsattribute) | **DELETE** /api/v2/projects/{projectId}/attributes/{attributeId} | Delete project attribute
[**getAttributeByProjectId**](ProjectAttributesAPI.md#getattributebyprojectid) | **GET** /api/v2/projects/{projectId}/attributes/{attributeId} | Get project attribute
[**getAttributesByProjectId**](ProjectAttributesAPI.md#getattributesbyprojectid) | **GET** /api/v2/projects/{projectId}/attributes | Get project attributes
[**searchAttributesInProject**](ProjectAttributesAPI.md#searchattributesinproject) | **POST** /api/v2/projects/{projectId}/attributes/search | Search for attributes used in the project
[**updateProjectsAttribute**](ProjectAttributesAPI.md#updateprojectsattribute) | **PUT** /api/v2/projects/{projectId}/attributes | Edit attribute of the project


# **createProjectsAttribute**
```swift
    open class func createProjectsAttribute(projectId: String, customAttributePostModel: CustomAttributePostModel? = nil, completion: @escaping (_ data: CustomAttributeModel?, _ error: Error?) -> Void)
```

Create project attribute

 Use case   User sets attribute parameters (listed in request example) and runs method execution   System search project   System creates attribute and relates it to the project   System returns project attribute properties (example listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let customAttributePostModel = CustomAttributePostModel(options: [CustomAttributeOptionPostModel(value: "value_example", isDefault: false)], type: CustomAttributeTypesEnum(), name: "name_example", isEnabled: false, isRequired: false, isGlobal: false) // CustomAttributePostModel |  (optional)

// Create project attribute
ProjectAttributesAPI.createProjectsAttribute(projectId: projectId, customAttributePostModel: customAttributePostModel) { (response, error) in
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
 **customAttributePostModel** | [**CustomAttributePostModel**](CustomAttributePostModel.md) |  | [optional] 

### Return type

[**CustomAttributeModel**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProjectsAttribute**
```swift
    open class func deleteProjectsAttribute(projectId: String, attributeId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete project attribute

 Use case   User sets project identifier and runs method execution   User sets attribute identifier   User runs method execution   System search project   System search and delete attribute   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let attributeId = 987 // UUID | Project attribute internal (UUID)

// Delete project attribute
ProjectAttributesAPI.deleteProjectsAttribute(projectId: projectId, attributeId: attributeId) { (response, error) in
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
 **attributeId** | **UUID** | Project attribute internal (UUID) | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributeByProjectId**
```swift
    open class func getAttributeByProjectId(projectId: String, attributeId: UUID, completion: @escaping (_ data: CustomAttributeModel?, _ error: Error?) -> Void)
```

Get project attribute

 Use case   User sets project internal or global identifier   User sets project attribute identifier   User runs method execution   System search project   System search project attribute    System returns project attribute (listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let attributeId = 987 // UUID | Project attribute internal (UUID) or global (integer) identifier

// Get project attribute
ProjectAttributesAPI.getAttributeByProjectId(projectId: projectId, attributeId: attributeId) { (response, error) in
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
 **attributeId** | **UUID** | Project attribute internal (UUID) or global (integer) identifier | 

### Return type

[**CustomAttributeModel**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributesByProjectId**
```swift
    open class func getAttributesByProjectId(projectId: String, isDeleted: DeletionState? = nil, completion: @escaping (_ data: [CustomAttributeModel]?, _ error: Error?) -> Void)
```

Get project attributes

 Use case   User sets project internal or global identifier   [Optional] User sets isDeleted field value   User runs method execution   System search project   [Optional] If User sets isDeleted field value as true, System search all deleted attributes related to project   [Optional] If User sets isDeleted field value as false, System search all attributes related to project which are not deleted   [Optional] If User did not set isDeleted field value, System search all attributes related to project   System returns array of found attributes (listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let isDeleted = DeletionState() // DeletionState |  (optional)

// Get project attributes
ProjectAttributesAPI.getAttributesByProjectId(projectId: projectId, isDeleted: isDeleted) { (response, error) in
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
 **isDeleted** | [**DeletionState**](.md) |  | [optional] 

### Return type

[**[CustomAttributeModel]**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAttributesInProject**
```swift
    open class func searchAttributesInProject(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, projectAttributesFilterModel: ProjectAttributesFilterModel? = nil, completion: @escaping (_ data: [CustomAttributeGetModel]?, _ error: Error?) -> Void)
```

Search for attributes used in the project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global project ID
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let projectAttributesFilterModel = ProjectAttributesFilterModel(name: "name_example", isRequired: false, isGlobal: false, types: [CustomAttributeTypesEnum()], isEnabled: false) // ProjectAttributesFilterModel |  (optional)

// Search for attributes used in the project
ProjectAttributesAPI.searchAttributesInProject(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, projectAttributesFilterModel: projectAttributesFilterModel) { (response, error) in
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
 **projectId** | **String** | Unique or global project ID | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **projectAttributesFilterModel** | [**ProjectAttributesFilterModel**](ProjectAttributesFilterModel.md) |  | [optional] 

### Return type

[**[CustomAttributeGetModel]**](CustomAttributeGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProjectsAttribute**
```swift
    open class func updateProjectsAttribute(projectId: String, customAttributePutModel: CustomAttributePutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Edit attribute of the project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global project ID
let customAttributePutModel = CustomAttributePutModel(id: 123, options: [CustomAttributeOptionModel(id: 123, isDeleted: false, value: "value_example", isDefault: false)], type: CustomAttributeTypesEnum(), isDeleted: false, name: "name_example", isEnabled: false, isRequired: false, isGlobal: false) // CustomAttributePutModel |  (optional)

// Edit attribute of the project
ProjectAttributesAPI.updateProjectsAttribute(projectId: projectId, customAttributePutModel: customAttributePutModel) { (response, error) in
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
 **projectId** | **String** | Unique or global project ID | 
 **customAttributePutModel** | [**CustomAttributePutModel**](CustomAttributePutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

