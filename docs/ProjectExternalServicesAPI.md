# ProjectExternalServicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsIdExternalServicesExternalServiceIdDelete**](ProjectExternalServicesAPI.md#apiv2projectsidexternalservicesexternalserviceiddelete) | **DELETE** /api/v2/projects/{id}/external-services/{externalServiceId} | Disable an external service
[**apiV2ProjectsIdExternalServicesExternalServiceIdGet**](ProjectExternalServicesAPI.md#apiv2projectsidexternalservicesexternalserviceidget) | **GET** /api/v2/projects/{id}/external-services/{externalServiceId} | Retrieves settings of an external service
[**apiV2ProjectsIdExternalServicesExternalServiceIdPatch**](ProjectExternalServicesAPI.md#apiv2projectsidexternalservicesexternalserviceidpatch) | **PATCH** /api/v2/projects/{id}/external-services/{externalServiceId} | Replaces one active external service with another
[**apiV2ProjectsIdExternalServicesExternalServiceIdPut**](ProjectExternalServicesAPI.md#apiv2projectsidexternalservicesexternalserviceidput) | **PUT** /api/v2/projects/{id}/external-services/{externalServiceId} | Enable an external service
[**apiV2ProjectsIdExternalServicesGet**](ProjectExternalServicesAPI.md#apiv2projectsidexternalservicesget) | **GET** /api/v2/projects/{id}/external-services | Retrieves information about external services, including their integration status (enabled or not)
[**apiV2ProjectsIdExternalServicesIssuesSearchPost**](ProjectExternalServicesAPI.md#apiv2projectsidexternalservicesissuessearchpost) | **POST** /api/v2/projects/{id}/external-services/issues/search | Searches for external issues using enabled external services in project


# **apiV2ProjectsIdExternalServicesExternalServiceIdDelete**
```swift
    open class func apiV2ProjectsIdExternalServicesExternalServiceIdDelete(id: String, externalServiceId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable an external service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project ID
let externalServiceId = 987 // UUID | External service ID

// Disable an external service
ProjectExternalServicesAPI.apiV2ProjectsIdExternalServicesExternalServiceIdDelete(id: id, externalServiceId: externalServiceId) { (response, error) in
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
 **id** | **String** | Project ID | 
 **externalServiceId** | **UUID** | External service ID | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdExternalServicesExternalServiceIdGet**
```swift
    open class func apiV2ProjectsIdExternalServicesExternalServiceIdGet(id: String, externalServiceId: UUID, completion: @escaping (_ data: ProjectExternalServiceSettingsApiResult?, _ error: Error?) -> Void)
```

Retrieves settings of an external service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project ID
let externalServiceId = 987 // UUID | External service ID

// Retrieves settings of an external service
ProjectExternalServicesAPI.apiV2ProjectsIdExternalServicesExternalServiceIdGet(id: id, externalServiceId: externalServiceId) { (response, error) in
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
 **id** | **String** | Project ID | 
 **externalServiceId** | **UUID** | External service ID | 

### Return type

[**ProjectExternalServiceSettingsApiResult**](ProjectExternalServiceSettingsApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdExternalServicesExternalServiceIdPatch**
```swift
    open class func apiV2ProjectsIdExternalServicesExternalServiceIdPatch(id: String, externalServiceId: UUID, replaceProjectExternalServiceApiModel: ReplaceProjectExternalServiceApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Replaces one active external service with another

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project ID
let externalServiceId = 987 // UUID | External service ID
let replaceProjectExternalServiceApiModel = ReplaceProjectExternalServiceApiModel(newExternalServiceId: 123, settings: 123) // ReplaceProjectExternalServiceApiModel |  (optional)

// Replaces one active external service with another
ProjectExternalServicesAPI.apiV2ProjectsIdExternalServicesExternalServiceIdPatch(id: id, externalServiceId: externalServiceId, replaceProjectExternalServiceApiModel: replaceProjectExternalServiceApiModel) { (response, error) in
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
 **id** | **String** | Project ID | 
 **externalServiceId** | **UUID** | External service ID | 
 **replaceProjectExternalServiceApiModel** | [**ReplaceProjectExternalServiceApiModel**](ReplaceProjectExternalServiceApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdExternalServicesExternalServiceIdPut**
```swift
    open class func apiV2ProjectsIdExternalServicesExternalServiceIdPut(id: String, externalServiceId: UUID, enableProjectExternalServiceApiModel: EnableProjectExternalServiceApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enable an external service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project ID
let externalServiceId = 987 // UUID | External service ID
let enableProjectExternalServiceApiModel = EnableProjectExternalServiceApiModel(settings: 123) // EnableProjectExternalServiceApiModel |  (optional)

// Enable an external service
ProjectExternalServicesAPI.apiV2ProjectsIdExternalServicesExternalServiceIdPut(id: id, externalServiceId: externalServiceId, enableProjectExternalServiceApiModel: enableProjectExternalServiceApiModel) { (response, error) in
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
 **id** | **String** | Project ID | 
 **externalServiceId** | **UUID** | External service ID | 
 **enableProjectExternalServiceApiModel** | [**EnableProjectExternalServiceApiModel**](EnableProjectExternalServiceApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdExternalServicesGet**
```swift
    open class func apiV2ProjectsIdExternalServicesGet(id: String, category: ApiExternalServiceCategory? = nil, completion: @escaping (_ data: ProjectExternalServicesApiResult?, _ error: Error?) -> Void)
```

Retrieves information about external services, including their integration status (enabled or not)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project ID
let category = ApiExternalServiceCategory() // ApiExternalServiceCategory |  (optional)

// Retrieves information about external services, including their integration status (enabled or not)
ProjectExternalServicesAPI.apiV2ProjectsIdExternalServicesGet(id: id, category: category) { (response, error) in
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
 **id** | **String** | Project ID | 
 **category** | [**ApiExternalServiceCategory**](.md) |  | [optional] 

### Return type

[**ProjectExternalServicesApiResult**](ProjectExternalServicesApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdExternalServicesIssuesSearchPost**
```swift
    open class func apiV2ProjectsIdExternalServicesIssuesSearchPost(id: String, searchExternalIssuesApiModel: SearchExternalIssuesApiModel? = nil, completion: @escaping (_ data: [ExternalIssueApiResult]?, _ error: Error?) -> Void)
```

Searches for external issues using enabled external services in project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Internal (UUID) or global (integer) identifier
let searchExternalIssuesApiModel = SearchExternalIssuesApiModel(url: "url_example") // SearchExternalIssuesApiModel |  (optional)

// Searches for external issues using enabled external services in project
ProjectExternalServicesAPI.apiV2ProjectsIdExternalServicesIssuesSearchPost(id: id, searchExternalIssuesApiModel: searchExternalIssuesApiModel) { (response, error) in
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
 **id** | **String** | Internal (UUID) or global (integer) identifier | 
 **searchExternalIssuesApiModel** | [**SearchExternalIssuesApiModel**](SearchExternalIssuesApiModel.md) |  | [optional] 

### Return type

[**[ExternalIssueApiResult]**](ExternalIssueApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

