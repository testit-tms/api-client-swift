# OpenIdConnectionsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2OpenidConnectionsGet**](OpenIdConnectionsAPI.md#apiv2openidconnectionsget) | **GET** /api/v2/openid-connections | 


# **apiV2OpenidConnectionsGet**
```swift
    open class func apiV2OpenidConnectionsGet(completion: @escaping (_ data: [OpenIdConnectionClientShortModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient


OpenIdConnectionsAPI.apiV2OpenidConnectionsGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[OpenIdConnectionClientShortModel]**](OpenIdConnectionClientShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

