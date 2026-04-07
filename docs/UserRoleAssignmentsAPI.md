# UserRoleAssignmentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2UsersUserIdRolesRoleIdDelete**](UserRoleAssignmentsAPI.md#apiv2usersuseridrolesroleiddelete) | **DELETE** /api/v2/users/{userId}/roles/{roleId} | 
[**apiV2UsersUserIdRolesRoleIdPost**](UserRoleAssignmentsAPI.md#apiv2usersuseridrolesroleidpost) | **POST** /api/v2/users/{userId}/roles/{roleId} | 


# **apiV2UsersUserIdRolesRoleIdDelete**
```swift
    open class func apiV2UsersUserIdRolesRoleIdDelete(userId: UUID, roleId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let userId = 987 // UUID | 
let roleId = 987 // UUID | 

UserRoleAssignmentsAPI.apiV2UsersUserIdRolesRoleIdDelete(userId: userId, roleId: roleId) { (response, error) in
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
 **userId** | **UUID** |  | 
 **roleId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2UsersUserIdRolesRoleIdPost**
```swift
    open class func apiV2UsersUserIdRolesRoleIdPost(userId: UUID, roleId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let userId = 987 // UUID | 
let roleId = 987 // UUID | 

UserRoleAssignmentsAPI.apiV2UsersUserIdRolesRoleIdPost(userId: userId, roleId: roleId) { (response, error) in
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
 **userId** | **UUID** |  | 
 **roleId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

