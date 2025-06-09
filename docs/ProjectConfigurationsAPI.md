# ProjectConfigurationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getConfigurationsByProjectId**](ProjectConfigurationsAPI.md#getconfigurationsbyprojectid) | **GET** /api/v2/projects/{projectId}/configurations | Get project configurations


# **getConfigurationsByProjectId**
```swift
    open class func getConfigurationsByProjectId(projectId: String, completion: @escaping (_ data: [ConfigurationModel]?, _ error: Error?) -> Void)
```

Get project configurations

 Use case  User sets project internal or global identifier  User runs method execution  System search project  System search all configurations related to project  System returns array of found configurations (listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier

// Get project configurations
ProjectConfigurationsAPI.getConfigurationsByProjectId(projectId: projectId) { (response, error) in
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

[**[ConfigurationModel]**](ConfigurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

