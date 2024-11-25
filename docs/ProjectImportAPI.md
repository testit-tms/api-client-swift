# ProjectImportAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**backgroundImportToExistingProject**](ProjectImportAPI.md#backgroundimporttoexistingproject) | **POST** /api/v2/projects/{projectId}/import/json | Import project from JSON file into existing project in background job
[**backgroundImportZipToExistingProject**](ProjectImportAPI.md#backgroundimportziptoexistingproject) | **POST** /api/v2/projects/{projectId}/import/zip | Import project from Zip file into existing project in background job
[**importToExistingProject**](ProjectImportAPI.md#importtoexistingproject) | **POST** /api/v2/projects/{projectId}/import | Import project from JSON file into existing project


# **backgroundImportToExistingProject**
```swift
    internal class func backgroundImportToExistingProject(projectId: String, file: URL? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Import project from JSON file into existing project in background job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let file = URL(string: "https://example.com")! // URL | Select file (optional)

// Import project from JSON file into existing project in background job
ProjectImportAPI.backgroundImportToExistingProject(projectId: projectId, file: file) { (response, error) in
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
 **file** | **URL** | Select file | [optional] 

### Return type

**UUID**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **backgroundImportZipToExistingProject**
```swift
    internal class func backgroundImportZipToExistingProject(projectId: String, file: URL? = nil, completion: @escaping (_ data: UUID?, _ error: Error?) -> Void)
```

Import project from Zip file into existing project in background job

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let file = URL(string: "https://example.com")! // URL | Select file (optional)

// Import project from Zip file into existing project in background job
ProjectImportAPI.backgroundImportZipToExistingProject(projectId: projectId, file: file) { (response, error) in
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
 **file** | **URL** | Select file | [optional] 

### Return type

**UUID**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importToExistingProject**
```swift
    internal class func importToExistingProject(projectId: String, includeAttachments: Bool? = nil, file: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Import project from JSON file into existing project

 Use case   User attaches project as json file taken from export or export-by-testPlans method   User runs method execution   System updates project   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let includeAttachments = true // Bool |  (optional)
let file = URL(string: "https://example.com")! // URL | Select file (optional)

// Import project from JSON file into existing project
ProjectImportAPI.importToExistingProject(projectId: projectId, includeAttachments: includeAttachments, file: file) { (response, error) in
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
 **includeAttachments** | **Bool** |  | [optional] 
 **file** | **URL** | Select file | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

