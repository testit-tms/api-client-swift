# UsersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2UsersExistsGet**](UsersAPI.md#apiv2usersexistsget) | **GET** /api/v2/users/exists | 
[**apiV2UsersPost**](UsersAPI.md#apiv2userspost) | **POST** /api/v2/users | 
[**apiV2UsersUserIdDelete**](UsersAPI.md#apiv2usersuseriddelete) | **DELETE** /api/v2/users/{userId} | 
[**apiV2UsersUserIdGet**](UsersAPI.md#apiv2usersuseridget) | **GET** /api/v2/users/{userId} | 


# **apiV2UsersExistsGet**
```swift
    open class func apiV2UsersExistsGet(userName: String? = nil, completion: @escaping (_ data: UserCustomNameValidationResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let userName = "userName_example" // String |  (optional)

UsersAPI.apiV2UsersExistsGet(userName: userName) { (response, error) in
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
 **userName** | **String** |  | [optional] 

### Return type

[**UserCustomNameValidationResponse**](UserCustomNameValidationResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2UsersPost**
```swift
    open class func apiV2UsersPost(createUserApiModel: CreateUserApiModel? = nil, completion: @escaping (_ data: UserApiModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createUserApiModel = CreateUserApiModel(userName: "userName_example", firstName: "firstName_example", lastName: "lastName_example", displayName: "displayName_example", password: "password_example", email: "email_example", providerId: 123, externalId: "externalId_example") // CreateUserApiModel |  (optional)

UsersAPI.apiV2UsersPost(createUserApiModel: createUserApiModel) { (response, error) in
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
 **createUserApiModel** | [**CreateUserApiModel**](CreateUserApiModel.md) |  | [optional] 

### Return type

[**UserApiModel**](UserApiModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2UsersUserIdDelete**
```swift
    open class func apiV2UsersUserIdDelete(userId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let userId = 987 // UUID | 

UsersAPI.apiV2UsersUserIdDelete(userId: userId) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2UsersUserIdGet**
```swift
    open class func apiV2UsersUserIdGet(userId: UUID, completion: @escaping (_ data: UserApiModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let userId = 987 // UUID | 

UsersAPI.apiV2UsersUserIdGet(userId: userId) { (response, error) in
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

### Return type

[**UserApiModel**](UserApiModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

