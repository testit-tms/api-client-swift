# UserStoragesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2UserStoragesResourceGet**](UserStoragesAPI.md#apiv2userstoragesresourceget) | **GET** /api/v2/user-storages/{resource} | 
[**apiV2UserStoragesResourcePost**](UserStoragesAPI.md#apiv2userstoragesresourcepost) | **POST** /api/v2/user-storages/{resource} | 


# **apiV2UserStoragesResourceGet**
```swift
    open class func apiV2UserStoragesResourceGet(resource: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let resource = "resource_example" // String | 

UserStoragesAPI.apiV2UserStoragesResourceGet(resource: resource) { (response, error) in
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
 **resource** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2UserStoragesResourcePost**
```swift
    open class func apiV2UserStoragesResourcePost(resource: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let resource = "resource_example" // String | 

UserStoragesAPI.apiV2UserStoragesResourcePost(resource: resource) { (response, error) in
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
 **resource** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

