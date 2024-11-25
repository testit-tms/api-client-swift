# SearchAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SearchGlobalSearchPost**](SearchAPI.md#apiv2searchglobalsearchpost) | **POST** /api/v2/search/globalSearch | 


# **apiV2SearchGlobalSearchPost**
```swift
    internal class func apiV2SearchGlobalSearchPost(globalSearchRequest: GlobalSearchRequest? = nil, completion: @escaping (_ data: GlobalSearchResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let globalSearchRequest = GlobalSearchRequest(query: "query_example", resourceType: "resourceType_example", take: 123, skip: 123) // GlobalSearchRequest |  (optional)

SearchAPI.apiV2SearchGlobalSearchPost(globalSearchRequest: globalSearchRequest) { (response, error) in
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
 **globalSearchRequest** | [**GlobalSearchRequest**](GlobalSearchRequest.md) |  | [optional] 

### Return type

[**GlobalSearchResponse**](GlobalSearchResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

