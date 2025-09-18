# ProjectSectionsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSectionsByProjectId**](ProjectSectionsAPI.md#getsectionsbyprojectid) | **GET** /api/v2/projects/{projectId}/sections | Get project sections


# **getSectionsByProjectId**
```swift
    open class func getSectionsByProjectId(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [SectionModel]?, _ error: Error?) -> Void)
```

Get project sections

  Use case    User sets project internal or global identifier and runs method execution    System search project    System search all sections related to the project    System returns array of sections (listed in response)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get project sections
ProjectSectionsAPI.getSectionsByProjectId(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[SectionModel]**](SectionModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

