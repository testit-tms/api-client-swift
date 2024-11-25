# ProjectTestPlanAttributesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomAttributeTestPlanProjectRelations**](ProjectTestPlanAttributesAPI.md#createcustomattributetestplanprojectrelations) | **POST** /api/v2/projects/{projectId}/testPlans/attributes | Add attributes to project&#39;s test plans
[**deleteCustomAttributeTestPlanProjectRelations**](ProjectTestPlanAttributesAPI.md#deletecustomattributetestplanprojectrelations) | **DELETE** /api/v2/projects/{projectId}/testPlans/attributes/{attributeId} | Delete attribute from project&#39;s test plans
[**getCustomAttributeTestPlanProjectRelations**](ProjectTestPlanAttributesAPI.md#getcustomattributetestplanprojectrelations) | **GET** /api/v2/projects/{projectId}/testPlans/attributes | Get project&#39;s test plan attributes
[**searchTestPlanAttributesInProject**](ProjectTestPlanAttributesAPI.md#searchtestplanattributesinproject) | **POST** /api/v2/projects/{projectId}/testPlans/attributes/search | Search for attributes used in the project test plans
[**updateCustomAttributeTestPlanProjectRelations**](ProjectTestPlanAttributesAPI.md#updatecustomattributetestplanprojectrelations) | **PUT** /api/v2/projects/{projectId}/testPlans/attributes | Update attribute of project&#39;s test plans


# **createCustomAttributeTestPlanProjectRelations**
```swift
    internal class func createCustomAttributeTestPlanProjectRelations(projectId: String, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add attributes to project's test plans

 Use case   User sets project internal or global identifier and attributes identifiers   User runs method execution   System updates project and add attributes to project for test plans   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let requestBody = [123] // Set<UUID> |  (optional)

// Add attributes to project's test plans
ProjectTestPlanAttributesAPI.createCustomAttributeTestPlanProjectRelations(projectId: projectId, requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomAttributeTestPlanProjectRelations**
```swift
    internal class func deleteCustomAttributeTestPlanProjectRelations(projectId: String, attributeId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete attribute from project's test plans

 Use case   User sets project internal or global identifier and attribute identifier   User runs method execution   System updates project and delete attribute from project for test plans   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let attributeId = 987 // UUID | 

// Delete attribute from project's test plans
ProjectTestPlanAttributesAPI.deleteCustomAttributeTestPlanProjectRelations(projectId: projectId, attributeId: attributeId) { (response, error) in
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
 **attributeId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomAttributeTestPlanProjectRelations**
```swift
    internal class func getCustomAttributeTestPlanProjectRelations(projectId: String, completion: @escaping (_ data: [CustomAttributeModel]?, _ error: Error?) -> Void)
```

Get project's test plan attributes

 Use case   User runs method execution   System returns project for test plans attributes by project identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier

// Get project's test plan attributes
ProjectTestPlanAttributesAPI.getCustomAttributeTestPlanProjectRelations(projectId: projectId) { (response, error) in
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

### Return type

[**[CustomAttributeModel]**](CustomAttributeModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTestPlanAttributesInProject**
```swift
    internal class func searchTestPlanAttributesInProject(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, projectAttributesFilterModel: ProjectAttributesFilterModel? = nil, completion: @escaping (_ data: [CustomAttributeGetModel]?, _ error: Error?) -> Void)
```

Search for attributes used in the project test plans

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Unique or global project ID
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let projectAttributesFilterModel = ProjectAttributesFilterModel(name: "name_example", isRequired: false, isGlobal: false, types: [CustomAttributeTypesEnum()], isEnabled: false) // ProjectAttributesFilterModel |  (optional)

// Search for attributes used in the project test plans
ProjectTestPlanAttributesAPI.searchTestPlanAttributesInProject(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, projectAttributesFilterModel: projectAttributesFilterModel) { (response, error) in
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

# **updateCustomAttributeTestPlanProjectRelations**
```swift
    internal class func updateCustomAttributeTestPlanProjectRelations(projectId: String, customAttributeTestPlanProjectRelationPutModel: CustomAttributeTestPlanProjectRelationPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update attribute of project's test plans

 Use case   User sets project internal or global identifier and attribute model   User runs method execution   System updates project and project attribute for test plan   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let customAttributeTestPlanProjectRelationPutModel = CustomAttributeTestPlanProjectRelationPutModel(id: 123, isEnabled: false, isRequired: false) // CustomAttributeTestPlanProjectRelationPutModel |  (optional)

// Update attribute of project's test plans
ProjectTestPlanAttributesAPI.updateCustomAttributeTestPlanProjectRelations(projectId: projectId, customAttributeTestPlanProjectRelationPutModel: customAttributeTestPlanProjectRelationPutModel) { (response, error) in
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
 **customAttributeTestPlanProjectRelationPutModel** | [**CustomAttributeTestPlanProjectRelationPutModel**](CustomAttributeTestPlanProjectRelationPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

