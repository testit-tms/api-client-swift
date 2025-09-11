# ParametersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ParametersBulkPost**](ParametersAPI.md#apiv2parametersbulkpost) | **POST** /api/v2/parameters/bulk | Create multiple parameters
[**apiV2ParametersBulkPut**](ParametersAPI.md#apiv2parametersbulkput) | **PUT** /api/v2/parameters/bulk | Update multiple parameters
[**apiV2ParametersGroupsGet**](ParametersAPI.md#apiv2parametersgroupsget) | **GET** /api/v2/parameters/groups | Get parameters as group
[**apiV2ParametersKeyNameNameExistsGet**](ParametersAPI.md#apiv2parameterskeynamenameexistsget) | **GET** /api/v2/parameters/key/name/{name}/exists | Check existence parameter key in system
[**apiV2ParametersKeyValuesGet**](ParametersAPI.md#apiv2parameterskeyvaluesget) | **GET** /api/v2/parameters/{key}/values | Get all parameter key values
[**apiV2ParametersKeysGet**](ParametersAPI.md#apiv2parameterskeysget) | **GET** /api/v2/parameters/keys | Get all parameter keys
[**apiV2ParametersSearchGroupsPost**](ParametersAPI.md#apiv2parameterssearchgroupspost) | **POST** /api/v2/parameters/search/groups | Search for parameters as group
[**apiV2ParametersSearchPost**](ParametersAPI.md#apiv2parameterssearchpost) | **POST** /api/v2/parameters/search | Search for parameters
[**createParameter**](ParametersAPI.md#createparameter) | **POST** /api/v2/parameters | Create parameter
[**deleteByName**](ParametersAPI.md#deletebyname) | **DELETE** /api/v2/parameters/name/{name} | Delete parameter by name
[**deleteByParameterKeyId**](ParametersAPI.md#deletebyparameterkeyid) | **DELETE** /api/v2/parameters/keyId/{keyId} | Delete parameters by parameter key identifier
[**deleteParameter**](ParametersAPI.md#deleteparameter) | **DELETE** /api/v2/parameters/{id} | Delete parameter
[**getAllParameters**](ParametersAPI.md#getallparameters) | **GET** /api/v2/parameters | Get all parameters
[**getParameterById**](ParametersAPI.md#getparameterbyid) | **GET** /api/v2/parameters/{id} | Get parameter by ID
[**updateParameter**](ParametersAPI.md#updateparameter) | **PUT** /api/v2/parameters | Update parameter


# **apiV2ParametersBulkPost**
```swift
    open class func apiV2ParametersBulkPost(createParameterApiModel: [CreateParameterApiModel]? = nil, completion: @escaping (_ data: [ParameterApiResult]?, _ error: Error?) -> Void)
```

Create multiple parameters

 Use case  User sets list of parameter model (listed in the request example)  User runs method execution  System creates parameters  System returns list of parameter model (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createParameterApiModel = [CreateParameterApiModel(name: "name_example", value: "value_example", projectIds: [123])] // [CreateParameterApiModel] |  (optional)

// Create multiple parameters
ParametersAPI.apiV2ParametersBulkPost(createParameterApiModel: createParameterApiModel) { (response, error) in
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
 **createParameterApiModel** | [**[CreateParameterApiModel]**](CreateParameterApiModel.md) |  | [optional] 

### Return type

[**[ParameterApiResult]**](ParameterApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersBulkPut**
```swift
    open class func apiV2ParametersBulkPut(updateParameterApiModel: [UpdateParameterApiModel]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update multiple parameters

 Use case  User sets list of parameter model (listed in the request example)  User runs method execution  System updates parameters

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let updateParameterApiModel = [UpdateParameterApiModel(id: 123, name: "name_example", value: "value_example", projectIds: [123])] // [UpdateParameterApiModel] |  (optional)

// Update multiple parameters
ParametersAPI.apiV2ParametersBulkPut(updateParameterApiModel: updateParameterApiModel) { (response, error) in
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
 **updateParameterApiModel** | [**[UpdateParameterApiModel]**](UpdateParameterApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersGroupsGet**
```swift
    open class func apiV2ParametersGroupsGet(parameterKeyIds: Set<UUID>? = nil, name: String? = nil, isDeleted: Bool? = nil, projectIds: [UUID]? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [ParameterGroupApiResult]?, _ error: Error?) -> Void)
```

Get parameters as group

 Use case  User runs method execution  System search parameters  System returns parameters models as groups (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let parameterKeyIds = [123] // Set<UUID> |  (optional)
let name = "name_example" // String |  (optional)
let isDeleted = true // Bool |  (optional)
let projectIds = [123] // [UUID] |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get parameters as group
ParametersAPI.apiV2ParametersGroupsGet(parameterKeyIds: parameterKeyIds, name: name, isDeleted: isDeleted, projectIds: projectIds, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **parameterKeyIds** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 
 **name** | **String** |  | [optional] 
 **isDeleted** | **Bool** |  | [optional] 
 **projectIds** | [**[UUID]**](UUID.md) |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[ParameterGroupApiResult]**](ParameterGroupApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersKeyNameNameExistsGet**
```swift
    open class func apiV2ParametersKeyNameNameExistsGet(name: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Check existence parameter key in system

 Use case  User sets name of parameter key  User runs method execution  System search parameter key  System returns the flag for the existence of the parameter key in the system

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | 

// Check existence parameter key in system
ParametersAPI.apiV2ParametersKeyNameNameExistsGet(name: name) { (response, error) in
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

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersKeyValuesGet**
```swift
    open class func apiV2ParametersKeyValuesGet(key: String, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get all parameter key values

 Use case  User sets parameter key (string format)  User runs method execution  System search parameter values using the key  System returns parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let key = "key_example" // String | Parameter key (string format)

// Get all parameter key values
ParametersAPI.apiV2ParametersKeyValuesGet(key: key) { (response, error) in
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
 **key** | **String** | Parameter key (string format) | 

### Return type

**[String]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersKeysGet**
```swift
    open class func apiV2ParametersKeysGet(projectIds: [UUID]? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get all parameter keys

 Use case  User runs method execution  System search all parameter keys  System returns parameter keys

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectIds = [123] // [UUID] |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get all parameter keys
ParametersAPI.apiV2ParametersKeysGet(projectIds: projectIds, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **projectIds** | [**[UUID]**](UUID.md) |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

**[String]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersSearchGroupsPost**
```swift
    open class func apiV2ParametersSearchGroupsPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, parameterGroupsFilterApiModel: ParameterGroupsFilterApiModel? = nil, completion: @escaping (_ data: [ParameterGroupApiResult]?, _ error: Error?) -> Void)
```

Search for parameters as group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let parameterGroupsFilterApiModel = ParameterGroupsFilterApiModel(parameterKeyIds: [123], name: "name_example", isDeleted: false, projectIds: [123]) // ParameterGroupsFilterApiModel |  (optional)

// Search for parameters as group
ParametersAPI.apiV2ParametersSearchGroupsPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, parameterGroupsFilterApiModel: parameterGroupsFilterApiModel) { (response, error) in
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
 **parameterGroupsFilterApiModel** | [**ParameterGroupsFilterApiModel**](ParameterGroupsFilterApiModel.md) |  | [optional] 

### Return type

[**[ParameterGroupApiResult]**](ParameterGroupApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ParametersSearchPost**
```swift
    open class func apiV2ParametersSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, parametersFilterApiModel: ParametersFilterApiModel? = nil, completion: @escaping (_ data: [ParameterApiResult]?, _ error: Error?) -> Void)
```

Search for parameters

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let parametersFilterApiModel = ParametersFilterApiModel(name: "name_example", isDeleted: false, projectIds: [123]) // ParametersFilterApiModel |  (optional)

// Search for parameters
ParametersAPI.apiV2ParametersSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, parametersFilterApiModel: parametersFilterApiModel) { (response, error) in
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
 **parametersFilterApiModel** | [**ParametersFilterApiModel**](ParametersFilterApiModel.md) |  | [optional] 

### Return type

[**[ParameterApiResult]**](ParameterApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createParameter**
```swift
    open class func createParameter(createParameterApiModel: CreateParameterApiModel? = nil, completion: @escaping (_ data: ParameterApiResult?, _ error: Error?) -> Void)
```

Create parameter

 Use case  User sets parameter model (listed in the request example)  User runs method execution  System creates parameter  System returns parameter model

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createParameterApiModel = CreateParameterApiModel(name: "name_example", value: "value_example", projectIds: [123]) // CreateParameterApiModel |  (optional)

// Create parameter
ParametersAPI.createParameter(createParameterApiModel: createParameterApiModel) { (response, error) in
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
 **createParameterApiModel** | [**CreateParameterApiModel**](CreateParameterApiModel.md) |  | [optional] 

### Return type

[**ParameterApiResult**](ParameterApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByName**
```swift
    open class func deleteByName(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete parameter by name

Deletes parameter and all it's values

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | Name of the parameter

// Delete parameter by name
ParametersAPI.deleteByName(name: name) { (response, error) in
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
 **name** | **String** | Name of the parameter | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByParameterKeyId**
```swift
    open class func deleteByParameterKeyId(keyId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete parameters by parameter key identifier

Deletes parameter and all it's values by parameter key identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let keyId = 987 // UUID | Identifier of the parameter key

// Delete parameters by parameter key identifier
ParametersAPI.deleteByParameterKeyId(keyId: keyId) { (response, error) in
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
 **keyId** | **UUID** | Identifier of the parameter key | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteParameter**
```swift
    open class func deleteParameter(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete parameter

 Use case  User sets parameter internal (guid format) identifier  System search and delete parameter  System returns deleted parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Parameter internal (UUID) identifier

// Delete parameter
ParametersAPI.deleteParameter(id: id) { (response, error) in
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
 **id** | **UUID** | Parameter internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllParameters**
```swift
    open class func getAllParameters(isDeleted: Bool? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [ParameterApiResult]?, _ error: Error?) -> Void)
```

Get all parameters

 Use case  [Optional] User sets isDeleted field value  [Optional] If User sets isDeleted field value as true, System search all deleted parameters  [Optional] If User sets isDeleted field value as false, System search all parameters which are not deleted  If User did not set isDeleted field value, System search all parameters  System returns array of all found parameters(listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let isDeleted = true // Bool | If result must consist of only actual/deleted parameters (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get all parameters
ParametersAPI.getAllParameters(isDeleted: isDeleted, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **isDeleted** | **Bool** | If result must consist of only actual/deleted parameters | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[ParameterApiResult]**](ParameterApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParameterById**
```swift
    open class func getParameterById(id: UUID, completion: @escaping (_ data: ParameterApiResult?, _ error: Error?) -> Void)
```

Get parameter by ID

 Use case  User sets parameter internal (guid format) identifier  User runs method execution  System search parameter using the identifier  System returns parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Parameter internal (UUID) identifier

// Get parameter by ID
ParametersAPI.getParameterById(id: id) { (response, error) in
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
 **id** | **UUID** | Parameter internal (UUID) identifier | 

### Return type

[**ParameterApiResult**](ParameterApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateParameter**
```swift
    open class func updateParameter(updateParameterApiModel: UpdateParameterApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update parameter

 Use case  User sets parameter updated properties(listed in the request example)  User runs method execution  System updated parameter using updated properties  System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let updateParameterApiModel = UpdateParameterApiModel(id: 123, name: "name_example", value: "value_example", projectIds: [123]) // UpdateParameterApiModel |  (optional)

// Update parameter
ParametersAPI.updateParameter(updateParameterApiModel: updateParameterApiModel) { (response, error) in
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
 **updateParameterApiModel** | [**UpdateParameterApiModel**](UpdateParameterApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

