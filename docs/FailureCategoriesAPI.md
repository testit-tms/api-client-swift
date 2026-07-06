# FailureCategoriesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AutotestsFailureCategoriesGroupingSearchPost**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriesgroupingsearchpost) | **POST** /api/v2/autotests/failure-categories/grouping-search | Get failure categories with support for filtering, sorting and grouping
[**apiV2AutotestsFailureCategoriesIdDelete**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriesiddelete) | **DELETE** /api/v2/autotests/failure-categories/{id} | Delete failure category
[**apiV2AutotestsFailureCategoriesIdGet**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriesidget) | **GET** /api/v2/autotests/failure-categories/{id} | Get failure category by ID
[**apiV2AutotestsFailureCategoriesNameNameExistsGet**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriesnamenameexistsget) | **GET** /api/v2/autotests/failure-categories/name/{name}/exists | Check failure category with the specified name already exists
[**apiV2AutotestsFailureCategoriesPost**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriespost) | **POST** /api/v2/autotests/failure-categories | Create failure category
[**apiV2AutotestsFailureCategoriesPut**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriesput) | **PUT** /api/v2/autotests/failure-categories | Update failure category
[**apiV2AutotestsFailureCategoriesSearchPost**](FailureCategoriesAPI.md#apiv2autotestsfailurecategoriessearchpost) | **POST** /api/v2/autotests/failure-categories/search | 
[**apiV2AutotestsResultReasonsGroupingSearchPost**](FailureCategoriesAPI.md#apiv2autotestsresultreasonsgroupingsearchpost) | **POST** /api/v2/autotests/resultReasons/grouping-search | Get failure categories with support for filtering, sorting and grouping
[**apiV2AutotestsResultReasonsIdDelete**](FailureCategoriesAPI.md#apiv2autotestsresultreasonsiddelete) | **DELETE** /api/v2/autotests/resultReasons/{id} | Delete failure category
[**apiV2AutotestsResultReasonsIdGet**](FailureCategoriesAPI.md#apiv2autotestsresultreasonsidget) | **GET** /api/v2/autotests/resultReasons/{id} | Get failure category by ID
[**apiV2AutotestsResultReasonsNameNameExistsGet**](FailureCategoriesAPI.md#apiv2autotestsresultreasonsnamenameexistsget) | **GET** /api/v2/autotests/resultReasons/name/{name}/exists | Check failure category with the specified name already exists
[**apiV2AutotestsResultReasonsPost**](FailureCategoriesAPI.md#apiv2autotestsresultreasonspost) | **POST** /api/v2/autotests/resultReasons | Create failure category
[**apiV2AutotestsResultReasonsPut**](FailureCategoriesAPI.md#apiv2autotestsresultreasonsput) | **PUT** /api/v2/autotests/resultReasons | Update failure category
[**apiV2AutotestsResultReasonsSearchPost**](FailureCategoriesAPI.md#apiv2autotestsresultreasonssearchpost) | **POST** /api/v2/autotests/resultReasons/search | 


# **apiV2AutotestsFailureCategoriesGroupingSearchPost**
```swift
    open class func apiV2AutotestsFailureCategoriesGroupingSearchPost(failureCategoryGroupSearchApiModel: FailureCategoryGroupSearchApiModel? = nil, completion: @escaping (_ data: FailureCategoryGroupItemApiResultReply?, _ error: Error?) -> Void)
```

Get failure categories with support for filtering, sorting and grouping

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let failureCategoryGroupSearchApiModel = FailureCategoryGroupSearchApiModel(inquiry: Inquiry(group: Group(field: "field_example", displayField: "displayField_example"), filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: "value_example", field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123)), group: FailureCategoryGroupApiModel(field: "field_example", displayField: "displayField_example")) // FailureCategoryGroupSearchApiModel |  (optional)

// Get failure categories with support for filtering, sorting and grouping
FailureCategoriesAPI.apiV2AutotestsFailureCategoriesGroupingSearchPost(failureCategoryGroupSearchApiModel: failureCategoryGroupSearchApiModel) { (response, error) in
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
 **failureCategoryGroupSearchApiModel** | [**FailureCategoryGroupSearchApiModel**](FailureCategoryGroupSearchApiModel.md) |  | [optional] 

### Return type

[**FailureCategoryGroupItemApiResultReply**](FailureCategoryGroupItemApiResultReply.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsFailureCategoriesIdDelete**
```swift
    open class func apiV2AutotestsFailureCategoriesIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Delete failure category
FailureCategoriesAPI.apiV2AutotestsFailureCategoriesIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsFailureCategoriesIdGet**
```swift
    open class func apiV2AutotestsFailureCategoriesIdGet(id: UUID, isDeleted: Bool? = nil, completion: @escaping (_ data: FailureCategoryApiResult?, _ error: Error?) -> Void)
```

Get failure category by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let isDeleted = true // Bool |  (optional)

// Get failure category by ID
FailureCategoriesAPI.apiV2AutotestsFailureCategoriesIdGet(id: id, isDeleted: isDeleted) { (response, error) in
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
 **id** | **UUID** |  | 
 **isDeleted** | **Bool** |  | [optional] 

### Return type

[**FailureCategoryApiResult**](FailureCategoryApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsFailureCategoriesNameNameExistsGet**
```swift
    open class func apiV2AutotestsFailureCategoriesNameNameExistsGet(name: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Check failure category with the specified name already exists

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | 

// Check failure category with the specified name already exists
FailureCategoriesAPI.apiV2AutotestsFailureCategoriesNameNameExistsGet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

**Bool**

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsFailureCategoriesPost**
```swift
    open class func apiV2AutotestsFailureCategoriesPost(createFailureCategoryApiModel: CreateFailureCategoryApiModel? = nil, completion: @escaping (_ data: FailureCategoryApiResult?, _ error: Error?) -> Void)
```

Create failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createFailureCategoryApiModel = CreateFailureCategoryApiModel(name: "name_example", failureCategory: FailureCategory(), failureClassRegexes: [CreateFailureClassRegexApiModel(regexText: "regexText_example")], projectIds: [123]) // CreateFailureCategoryApiModel |  (optional)

// Create failure category
FailureCategoriesAPI.apiV2AutotestsFailureCategoriesPost(createFailureCategoryApiModel: createFailureCategoryApiModel) { (response, error) in
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
 **createFailureCategoryApiModel** | [**CreateFailureCategoryApiModel**](CreateFailureCategoryApiModel.md) |  | [optional] 

### Return type

[**FailureCategoryApiResult**](FailureCategoryApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsFailureCategoriesPut**
```swift
    open class func apiV2AutotestsFailureCategoriesPut(updateFailureCategoryApiModel: UpdateFailureCategoryApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let updateFailureCategoryApiModel = UpdateFailureCategoryApiModel(id: 123, name: "name_example", failureCategory: FailureCategory(), failureClassRegexes: [UpdateFailureClassRegexApiModel(id: 123, regexText: "regexText_example")], projectIds: [123]) // UpdateFailureCategoryApiModel |  (optional)

// Update failure category
FailureCategoriesAPI.apiV2AutotestsFailureCategoriesPut(updateFailureCategoryApiModel: updateFailureCategoryApiModel) { (response, error) in
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
 **updateFailureCategoryApiModel** | [**UpdateFailureCategoryApiModel**](UpdateFailureCategoryApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsFailureCategoriesSearchPost**
```swift
    open class func apiV2AutotestsFailureCategoriesSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, autotestResultReasonFilterModel: AutotestResultReasonFilterModel? = nil, completion: @escaping (_ data: [AutotestResultReasonShortGetModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let autotestResultReasonFilterModel = AutotestResultReasonFilterModel(failureCategories: [AvailableFailureCategory()], name: "name_example", regexCount: Int32RangeSelectorModel(from: 123, to: 123), isDeleted: false) // AutotestResultReasonFilterModel |  (optional)

FailureCategoriesAPI.apiV2AutotestsFailureCategoriesSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, autotestResultReasonFilterModel: autotestResultReasonFilterModel) { (response, error) in
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
 **autotestResultReasonFilterModel** | [**AutotestResultReasonFilterModel**](AutotestResultReasonFilterModel.md) |  | [optional] 

### Return type

[**[AutotestResultReasonShortGetModel]**](AutotestResultReasonShortGetModel.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsGroupingSearchPost**
```swift
    open class func apiV2AutotestsResultReasonsGroupingSearchPost(failureCategoryGroupSearchApiModel: FailureCategoryGroupSearchApiModel? = nil, completion: @escaping (_ data: FailureCategoryGroupItemApiResultReply?, _ error: Error?) -> Void)
```

Get failure categories with support for filtering, sorting and grouping

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let failureCategoryGroupSearchApiModel = FailureCategoryGroupSearchApiModel(inquiry: Inquiry(group: Group(field: "field_example", displayField: "displayField_example"), filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: "value_example", field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123)), group: FailureCategoryGroupApiModel(field: "field_example", displayField: "displayField_example")) // FailureCategoryGroupSearchApiModel |  (optional)

// Get failure categories with support for filtering, sorting and grouping
FailureCategoriesAPI.apiV2AutotestsResultReasonsGroupingSearchPost(failureCategoryGroupSearchApiModel: failureCategoryGroupSearchApiModel) { (response, error) in
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
 **failureCategoryGroupSearchApiModel** | [**FailureCategoryGroupSearchApiModel**](FailureCategoryGroupSearchApiModel.md) |  | [optional] 

### Return type

[**FailureCategoryGroupItemApiResultReply**](FailureCategoryGroupItemApiResultReply.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsIdDelete**
```swift
    open class func apiV2AutotestsResultReasonsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Delete failure category
FailureCategoriesAPI.apiV2AutotestsResultReasonsIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsIdGet**
```swift
    open class func apiV2AutotestsResultReasonsIdGet(id: UUID, isDeleted: Bool? = nil, completion: @escaping (_ data: FailureCategoryApiResult?, _ error: Error?) -> Void)
```

Get failure category by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let isDeleted = true // Bool |  (optional)

// Get failure category by ID
FailureCategoriesAPI.apiV2AutotestsResultReasonsIdGet(id: id, isDeleted: isDeleted) { (response, error) in
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
 **id** | **UUID** |  | 
 **isDeleted** | **Bool** |  | [optional] 

### Return type

[**FailureCategoryApiResult**](FailureCategoryApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsNameNameExistsGet**
```swift
    open class func apiV2AutotestsResultReasonsNameNameExistsGet(name: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Check failure category with the specified name already exists

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | 

// Check failure category with the specified name already exists
FailureCategoriesAPI.apiV2AutotestsResultReasonsNameNameExistsGet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

**Bool**

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsPost**
```swift
    open class func apiV2AutotestsResultReasonsPost(createFailureCategoryApiModel: CreateFailureCategoryApiModel? = nil, completion: @escaping (_ data: FailureCategoryApiResult?, _ error: Error?) -> Void)
```

Create failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createFailureCategoryApiModel = CreateFailureCategoryApiModel(name: "name_example", failureCategory: FailureCategory(), failureClassRegexes: [CreateFailureClassRegexApiModel(regexText: "regexText_example")], projectIds: [123]) // CreateFailureCategoryApiModel |  (optional)

// Create failure category
FailureCategoriesAPI.apiV2AutotestsResultReasonsPost(createFailureCategoryApiModel: createFailureCategoryApiModel) { (response, error) in
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
 **createFailureCategoryApiModel** | [**CreateFailureCategoryApiModel**](CreateFailureCategoryApiModel.md) |  | [optional] 

### Return type

[**FailureCategoryApiResult**](FailureCategoryApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsPut**
```swift
    open class func apiV2AutotestsResultReasonsPut(updateFailureCategoryApiModel: UpdateFailureCategoryApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update failure category

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let updateFailureCategoryApiModel = UpdateFailureCategoryApiModel(id: 123, name: "name_example", failureCategory: FailureCategory(), failureClassRegexes: [UpdateFailureClassRegexApiModel(id: 123, regexText: "regexText_example")], projectIds: [123]) // UpdateFailureCategoryApiModel |  (optional)

// Update failure category
FailureCategoriesAPI.apiV2AutotestsResultReasonsPut(updateFailureCategoryApiModel: updateFailureCategoryApiModel) { (response, error) in
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
 **updateFailureCategoryApiModel** | [**UpdateFailureCategoryApiModel**](UpdateFailureCategoryApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AutotestsResultReasonsSearchPost**
```swift
    open class func apiV2AutotestsResultReasonsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, autotestResultReasonFilterModel: AutotestResultReasonFilterModel? = nil, completion: @escaping (_ data: [AutotestResultReasonShortGetModel]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let autotestResultReasonFilterModel = AutotestResultReasonFilterModel(failureCategories: [AvailableFailureCategory()], name: "name_example", regexCount: Int32RangeSelectorModel(from: 123, to: 123), isDeleted: false) // AutotestResultReasonFilterModel |  (optional)

FailureCategoriesAPI.apiV2AutotestsResultReasonsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, autotestResultReasonFilterModel: autotestResultReasonFilterModel) { (response, error) in
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
 **autotestResultReasonFilterModel** | [**AutotestResultReasonFilterModel**](AutotestResultReasonFilterModel.md) |  | [optional] 

### Return type

[**[AutotestResultReasonShortGetModel]**](AutotestResultReasonShortGetModel.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

