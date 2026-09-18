# ConfigurationParametersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ConfigurationParametersConfigurationParameterIdDelete**](ConfigurationParametersAPI.md#apiv2configurationparametersconfigurationparameteriddelete) | **DELETE** /api/v2/configuration-parameters/{configurationParameterId} | Deletes configuration parameter
[**apiV2ConfigurationParametersConfigurationParameterIdGet**](ConfigurationParametersAPI.md#apiv2configurationparametersconfigurationparameteridget) | **GET** /api/v2/configuration-parameters/{configurationParameterId} | Gets configuration parameter by its identifier
[**apiV2ConfigurationParametersConfigurationParameterIdPut**](ConfigurationParametersAPI.md#apiv2configurationparametersconfigurationparameteridput) | **PUT** /api/v2/configuration-parameters/{configurationParameterId} | Updates configuration parameter
[**apiV2ConfigurationParametersPost**](ConfigurationParametersAPI.md#apiv2configurationparameterspost) | **POST** /api/v2/configuration-parameters | Creates new configuration parameter
[**apiV2ConfigurationParametersSearchPost**](ConfigurationParametersAPI.md#apiv2configurationparameterssearchpost) | **POST** /api/v2/configuration-parameters/search | Searches for configuration parameters


# **apiV2ConfigurationParametersConfigurationParameterIdDelete**
```swift
    open class func apiV2ConfigurationParametersConfigurationParameterIdDelete(configurationParameterId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes configuration parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationParameterId = 987 // UUID | 

// Deletes configuration parameter
ConfigurationParametersAPI.apiV2ConfigurationParametersConfigurationParameterIdDelete(configurationParameterId: configurationParameterId) { (response, error) in
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
 **configurationParameterId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Identity.Application](../README.md#Identity.Application)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationParametersConfigurationParameterIdGet**
```swift
    open class func apiV2ConfigurationParametersConfigurationParameterIdGet(configurationParameterId: UUID, completion: @escaping (_ data: ConfigurationParameterApiResult?, _ error: Error?) -> Void)
```

Gets configuration parameter by its identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationParameterId = 987 // UUID | 

// Gets configuration parameter by its identifier
ConfigurationParametersAPI.apiV2ConfigurationParametersConfigurationParameterIdGet(configurationParameterId: configurationParameterId) { (response, error) in
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
 **configurationParameterId** | **UUID** |  | 

### Return type

[**ConfigurationParameterApiResult**](ConfigurationParameterApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Identity.Application](../README.md#Identity.Application)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationParametersConfigurationParameterIdPut**
```swift
    open class func apiV2ConfigurationParametersConfigurationParameterIdPut(configurationParameterId: UUID, configurationParameterApiModel: ConfigurationParameterApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Updates configuration parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationParameterId = 987 // UUID | 
let configurationParameterApiModel = ConfigurationParameterApiModel(name: "name_example", values: [ConfigurationParameterValueApiModel(value: "value_example")], projects: [ConfigurationParameterProjectApiModel(id: 123)]) // ConfigurationParameterApiModel |  (optional)

// Updates configuration parameter
ConfigurationParametersAPI.apiV2ConfigurationParametersConfigurationParameterIdPut(configurationParameterId: configurationParameterId, configurationParameterApiModel: configurationParameterApiModel) { (response, error) in
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
 **configurationParameterId** | **UUID** |  | 
 **configurationParameterApiModel** | [**ConfigurationParameterApiModel**](ConfigurationParameterApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Identity.Application](../README.md#Identity.Application)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationParametersPost**
```swift
    open class func apiV2ConfigurationParametersPost(configurationParameterApiModel: ConfigurationParameterApiModel? = nil, completion: @escaping (_ data: ConfigurationParameterApiResult?, _ error: Error?) -> Void)
```

Creates new configuration parameter

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let configurationParameterApiModel = ConfigurationParameterApiModel(name: "name_example", values: [ConfigurationParameterValueApiModel(value: "value_example")], projects: [ConfigurationParameterProjectApiModel(id: 123)]) // ConfigurationParameterApiModel |  (optional)

// Creates new configuration parameter
ConfigurationParametersAPI.apiV2ConfigurationParametersPost(configurationParameterApiModel: configurationParameterApiModel) { (response, error) in
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
 **configurationParameterApiModel** | [**ConfigurationParameterApiModel**](ConfigurationParameterApiModel.md) |  | [optional] 

### Return type

[**ConfigurationParameterApiResult**](ConfigurationParameterApiResult.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Identity.Application](../README.md#Identity.Application)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ConfigurationParametersSearchPost**
```swift
    open class func apiV2ConfigurationParametersSearchPost(searchConfigurationParametersApiModel: SearchConfigurationParametersApiModel? = nil, completion: @escaping (_ data: ConfigurationParameterPreviewApiResultIReply?, _ error: Error?) -> Void)
```

Searches for configuration parameters

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let searchConfigurationParametersApiModel = SearchConfigurationParametersApiModel(projectIds: [123], inquiry: Inquiry(group: Group(field: "field_example", displayField: "displayField_example"), filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: JsonElement(valueKind: JsonValueKind()), field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123), mode: Mode()), valuesFilters: [FieldFilter(_operator: FilterOperator(), value: "value_example")], projectsFilters: [nil]) // SearchConfigurationParametersApiModel |  (optional)

// Searches for configuration parameters
ConfigurationParametersAPI.apiV2ConfigurationParametersSearchPost(searchConfigurationParametersApiModel: searchConfigurationParametersApiModel) { (response, error) in
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
 **searchConfigurationParametersApiModel** | [**SearchConfigurationParametersApiModel**](SearchConfigurationParametersApiModel.md) |  | [optional] 

### Return type

[**ConfigurationParameterPreviewApiResultIReply**](ConfigurationParameterPreviewApiResultIReply.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Identity.Application](../README.md#Identity.Application)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

