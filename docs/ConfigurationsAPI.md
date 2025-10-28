# ConfigurationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ConfigurationsCreateByParametersPost**](ConfigurationsAPI.md#apiv2configurationscreatebyparameterspost) | **POST** /api/v2/configurations/createByParameters | Create configurations by parameters
[**apiV2ConfigurationsDeleteBulkPost**](ConfigurationsAPI.md#apiv2configurationsdeletebulkpost) | **POST** /api/v2/configurations/delete/bulk | Delete multiple configurations
[**apiV2ConfigurationsIdDelete**](ConfigurationsAPI.md#apiv2configurationsiddelete) | **DELETE** /api/v2/configurations/{id} | Delete configuration
[**apiV2ConfigurationsIdPatch**](ConfigurationsAPI.md#apiv2configurationsidpatch) | **PATCH** /api/v2/configurations/{id} | Patch configuration
[**apiV2ConfigurationsIdPurgePost**](ConfigurationsAPI.md#apiv2configurationsidpurgepost) | **POST** /api/v2/configurations/{id}/purge | Permanently delete configuration from archive
[**apiV2ConfigurationsIdRestorePost**](ConfigurationsAPI.md#apiv2configurationsidrestorepost) | **POST** /api/v2/configurations/{id}/restore | Restore configuration from the archive
[**apiV2ConfigurationsPurgeBulkPost**](ConfigurationsAPI.md#apiv2configurationspurgebulkpost) | **POST** /api/v2/configurations/purge/bulk | Permanently delete multiple archived configurations
[**apiV2ConfigurationsPut**](ConfigurationsAPI.md#apiv2configurationsput) | **PUT** /api/v2/configurations | Edit configuration
[**apiV2ConfigurationsRestoreBulkPost**](ConfigurationsAPI.md#apiv2configurationsrestorebulkpost) | **POST** /api/v2/configurations/restore/bulk | Restore multiple configurations from the archive
[**apiV2ConfigurationsSearchPost**](ConfigurationsAPI.md#apiv2configurationssearchpost) | **POST** /api/v2/configurations/search | Search for configurations
[**createConfiguration**](ConfigurationsAPI.md#createconfiguration) | **POST** /api/v2/configurations | Create Configuration
[**getConfigurationById**](ConfigurationsAPI.md#getconfigurationbyid) | **GET** /api/v2/configurations/{id} | Get configuration by internal or global ID


# **apiV2ConfigurationsCreateByParametersPost**
```swift
    open class func apiV2ConfigurationsCreateByParametersPost(configurationByParametersModel: ConfigurationByParametersModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Create configurations by parameters

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationByParametersModel = ConfigurationByParametersModel(projectId: 123, parameterIds: [123]) // ConfigurationByParametersModel |  (optional)

// Create configurations by parameters
ConfigurationsAPI.apiV2ConfigurationsCreateByParametersPost(configurationByParametersModel: configurationByParametersModel) { (response, error) in
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
 **configurationByParametersModel** | [**ConfigurationByParametersModel**](ConfigurationByParametersModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsDeleteBulkPost**
```swift
    open class func apiV2ConfigurationsDeleteBulkPost(configurationSelectModel: ConfigurationSelectModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Delete multiple configurations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationSelectModel = ConfigurationSelectModel(filter: ConfigurationFilterModel(projectIds: [123], name: "name_example", isDeleted: false, globalIds: [123]), extractionModel: ConfigurationExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]), projectIds: nil)) // ConfigurationSelectModel |  (optional)

// Delete multiple configurations
ConfigurationsAPI.apiV2ConfigurationsDeleteBulkPost(configurationSelectModel: configurationSelectModel) { (response, error) in
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
 **configurationSelectModel** | [**ConfigurationSelectModel**](ConfigurationSelectModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsIdDelete**
```swift
    open class func apiV2ConfigurationsIdDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the configuration

// Delete configuration
ConfigurationsAPI.apiV2ConfigurationsIdDelete(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the configuration | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsIdPatch**
```swift
    open class func apiV2ConfigurationsIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch configuration

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique ID of the configuration
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

// Patch configuration
ConfigurationsAPI.apiV2ConfigurationsIdPatch(id: id, operation: operation) { (response, error) in
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
 **id** | **UUID** | Unique ID of the configuration | 
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsIdPurgePost**
```swift
    open class func apiV2ConfigurationsIdPurgePost(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Permanently delete configuration from archive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the configuration

// Permanently delete configuration from archive
ConfigurationsAPI.apiV2ConfigurationsIdPurgePost(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the configuration | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsIdRestorePost**
```swift
    open class func apiV2ConfigurationsIdRestorePost(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore configuration from the archive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the configuration

// Restore configuration from the archive
ConfigurationsAPI.apiV2ConfigurationsIdRestorePost(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the configuration | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsPurgeBulkPost**
```swift
    open class func apiV2ConfigurationsPurgeBulkPost(configurationSelectModel: ConfigurationSelectModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Permanently delete multiple archived configurations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationSelectModel = ConfigurationSelectModel(filter: ConfigurationFilterModel(projectIds: [123], name: "name_example", isDeleted: false, globalIds: [123]), extractionModel: ConfigurationExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]), projectIds: nil)) // ConfigurationSelectModel |  (optional)

// Permanently delete multiple archived configurations
ConfigurationsAPI.apiV2ConfigurationsPurgeBulkPost(configurationSelectModel: configurationSelectModel) { (response, error) in
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
 **configurationSelectModel** | [**ConfigurationSelectModel**](ConfigurationSelectModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsPut**
```swift
    open class func apiV2ConfigurationsPut(configurationPutModel: ConfigurationPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Edit configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationPutModel = ConfigurationPutModel(id: 123, description: "description_example", parameters: "TODO", projectId: 123, isDefault: true, name: "name_example") // ConfigurationPutModel |  (optional)

// Edit configuration
ConfigurationsAPI.apiV2ConfigurationsPut(configurationPutModel: configurationPutModel) { (response, error) in
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
 **configurationPutModel** | [**ConfigurationPutModel**](ConfigurationPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsRestoreBulkPost**
```swift
    open class func apiV2ConfigurationsRestoreBulkPost(configurationSelectModel: ConfigurationSelectModel? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Restore multiple configurations from the archive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationSelectModel = ConfigurationSelectModel(filter: ConfigurationFilterModel(projectIds: [123], name: "name_example", isDeleted: false, globalIds: [123]), extractionModel: ConfigurationExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]), projectIds: nil)) // ConfigurationSelectModel |  (optional)

// Restore multiple configurations from the archive
ConfigurationsAPI.apiV2ConfigurationsRestoreBulkPost(configurationSelectModel: configurationSelectModel) { (response, error) in
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
 **configurationSelectModel** | [**ConfigurationSelectModel**](ConfigurationSelectModel.md) |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationsSearchPost**
```swift
    open class func apiV2ConfigurationsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, configurationFilterModel: ConfigurationFilterModel? = nil, completion: @escaping (_ data: [ConfigurationModel]?, _ error: Error?) -> Void)
```

Search for configurations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let configurationFilterModel = ConfigurationFilterModel(projectIds: [123], name: "name_example", isDeleted: false, globalIds: [123]) // ConfigurationFilterModel | Model containing all the filters (optional)

// Search for configurations
ConfigurationsAPI.apiV2ConfigurationsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, configurationFilterModel: configurationFilterModel) { (response, error) in
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
 **configurationFilterModel** | [**ConfigurationFilterModel**](ConfigurationFilterModel.md) | Model containing all the filters | [optional] 

### Return type

[**[ConfigurationModel]**](ConfigurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConfiguration**
```swift
    open class func createConfiguration(configurationPostModel: ConfigurationPostModel? = nil, completion: @escaping (_ data: ConfigurationModel?, _ error: Error?) -> Void)
```

Create Configuration

  Use case    User sets configuration model (listed in the request example)    User runs method execution    System creates configuration    System returns created configuration (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationPostModel = ConfigurationPostModel(description: "description_example", parameters: "TODO", projectId: 123, isDefault: true, name: "name_example") // ConfigurationPostModel |  (optional)

// Create Configuration
ConfigurationsAPI.createConfiguration(configurationPostModel: configurationPostModel) { (response, error) in
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
 **configurationPostModel** | [**ConfigurationPostModel**](ConfigurationPostModel.md) |  | [optional] 

### Return type

[**ConfigurationModel**](ConfigurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigurationById**
```swift
    open class func getConfigurationById(id: String, completion: @escaping (_ data: ConfigurationModel?, _ error: Error?) -> Void)
```

Get configuration by internal or global ID

  Use case    User sets configuration internal (guid format) or global (integer format) identifier    User runs method execution    System search configuration using the identifier    System returns configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Configuration internal (guid format) or global (integer format) identifier

// Get configuration by internal or global ID
ConfigurationsAPI.getConfigurationById(id: id) { (response, error) in
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
 **id** | **String** | Configuration internal (guid format) or global (integer format) identifier | 

### Return type

[**ConfigurationModel**](ConfigurationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

