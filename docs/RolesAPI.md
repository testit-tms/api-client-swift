# RolesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2RolesGet**](RolesAPI.md#apiv2rolesget) | **GET** /api/v2/roles | 


# **apiV2RolesGet**
```swift
    open class func apiV2RolesGet(completion: @escaping (_ data: RoleApiModelApiCollection?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient


RolesAPI.apiV2RolesGet() { (response, error) in
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

[**RoleApiModelApiCollection**](RoleApiModelApiCollection.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

