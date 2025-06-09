# ProjectSettingsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdSettingsAutotestsPost**](ProjectSettingsAPI.md#apiv2projectsprojectidsettingsautotestspost) | **POST** /api/v2/projects/{projectId}/settings/autotests | Set autotest project settings.
[**getAutotestProjectSettings**](ProjectSettingsAPI.md#getautotestprojectsettings) | **GET** /api/v2/projects/{projectId}/settings/autotests | Get autotest project settings.


# **apiV2ProjectsProjectIdSettingsAutotestsPost**
```swift
    open class func apiV2ProjectsProjectIdSettingsAutotestsPost(projectId: String, autoTestProjectSettingsPostModel: AutoTestProjectSettingsPostModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set autotest project settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | 
let autoTestProjectSettingsPostModel = AutoTestProjectSettingsPostModel(isFlakyAuto: false, flakyStabilityPercentage: 123, flakyTestRunCount: 123, rerunEnabled: false, rerunAttemptsCount: 123) // AutoTestProjectSettingsPostModel |  (optional)

// Set autotest project settings.
ProjectSettingsAPI.apiV2ProjectsProjectIdSettingsAutotestsPost(projectId: projectId, autoTestProjectSettingsPostModel: autoTestProjectSettingsPostModel) { (response, error) in
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
 **autoTestProjectSettingsPostModel** | [**AutoTestProjectSettingsPostModel**](AutoTestProjectSettingsPostModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutotestProjectSettings**
```swift
    open class func getAutotestProjectSettings(projectId: String, completion: @escaping (_ data: AutoTestProjectSettingsGetModel?, _ error: Error?) -> Void)
```

Get autotest project settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | 

// Get autotest project settings.
ProjectSettingsAPI.getAutotestProjectSettings(projectId: projectId) { (response, error) in
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

### Return type

[**AutoTestProjectSettingsGetModel**](AutoTestProjectSettingsGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

