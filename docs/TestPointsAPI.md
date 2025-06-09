# TestPointsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TestPointsIdTestRunsGet**](TestPointsAPI.md#apiv2testpointsidtestrunsget) | **GET** /api/v2/testPoints/{id}/testRuns | Get all test runs which use test point
[**apiV2TestPointsIdWorkItemGet**](TestPointsAPI.md#apiv2testpointsidworkitemget) | **GET** /api/v2/testPoints/{id}/workItem | Get work item represented by test point
[**apiV2TestPointsSearchIdPost**](TestPointsAPI.md#apiv2testpointssearchidpost) | **POST** /api/v2/testPoints/search/id | Search for test points and extract IDs only
[**apiV2TestPointsSearchPost**](TestPointsAPI.md#apiv2testpointssearchpost) | **POST** /api/v2/testPoints/search | Search for test points


# **apiV2TestPointsIdTestRunsGet**
```swift
    open class func apiV2TestPointsIdTestRunsGet(id: UUID, completion: @escaping (_ data: [TestRunApiResult]?, _ error: Error?) -> Void)
```

Get all test runs which use test point

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test point unique ID

// Get all test runs which use test point
TestPointsAPI.apiV2TestPointsIdTestRunsGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test point unique ID | 

### Return type

[**[TestRunApiResult]**](TestRunApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPointsIdWorkItemGet**
```swift
    open class func apiV2TestPointsIdWorkItemGet(id: UUID, completion: @escaping (_ data: WorkItemModel?, _ error: Error?) -> Void)
```

Get work item represented by test point

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test point unique ID

// Get work item represented by test point
TestPointsAPI.apiV2TestPointsIdWorkItemGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test point unique ID | 

### Return type

[**WorkItemModel**](WorkItemModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPointsSearchIdPost**
```swift
    open class func apiV2TestPointsSearchIdPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testPointFilterRequestModel: TestPointFilterRequestModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Search for test points and extract IDs only

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testPointFilterRequestModel = TestPointFilterRequestModel(testPlanIds: [123], testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), workItemIsDeleted: false, statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]) // TestPointFilterRequestModel |  (optional)

// Search for test points and extract IDs only
TestPointsAPI.apiV2TestPointsSearchIdPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testPointFilterRequestModel: testPointFilterRequestModel) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **testPointFilterRequestModel** | [**TestPointFilterRequestModel**](TestPointFilterRequestModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestPointsSearchPost**
```swift
    open class func apiV2TestPointsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testPointFilterRequestModel: TestPointFilterRequestModel? = nil, completion: @escaping (_ data: [TestPointShortResponseModel]?, _ error: Error?) -> Void)
```

Search for test points

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testPointFilterRequestModel = TestPointFilterRequestModel(testPlanIds: [123], testSuiteIds: [123], workItemGlobalIds: [123], workItemMedianDuration: Int64RangeSelectorModel(from: 123, to: 123), workItemIsDeleted: false, statuses: [TestPointStatus()], statusCodes: ["statusCodes_example"], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], isAutomated: false, name: "name_example", configurationIds: [123], testerIds: [123], duration: nil, sectionIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], modifiedDate: nil, modifiedByIds: [123], tags: ["tags_example"], attributes: "TODO", workItemCreatedDate: nil, workItemCreatedByIds: [123], workItemModifiedDate: nil, workItemModifiedByIds: [123]) // TestPointFilterRequestModel |  (optional)

// Search for test points
TestPointsAPI.apiV2TestPointsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testPointFilterRequestModel: testPointFilterRequestModel) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **testPointFilterRequestModel** | [**TestPointFilterRequestModel**](TestPointFilterRequestModel.md) |  | [optional] 

### Return type

[**[TestPointShortResponseModel]**](TestPointShortResponseModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

