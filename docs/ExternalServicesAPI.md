# ExternalServicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ExternalServicesMetadataGet**](ExternalServicesAPI.md#apiv2externalservicesmetadataget) | **GET** /api/v2/external-services/metadata | Retrieves the metadata for all available external services


# **apiV2ExternalServicesMetadataGet**
```swift
    open class func apiV2ExternalServicesMetadataGet(completion: @escaping (_ data: ExternalServicesMetadataApiResult?, _ error: Error?) -> Void)
```

Retrieves the metadata for all available external services

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient


// Retrieves the metadata for all available external services
ExternalServicesAPI.apiV2ExternalServicesMetadataGet() { (response, error) in
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

[**ExternalServicesMetadataApiResult**](ExternalServicesMetadataApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

