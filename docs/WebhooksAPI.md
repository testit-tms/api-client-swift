# WebhooksAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2WebhooksGet**](WebhooksAPI.md#apiv2webhooksget) | **GET** /api/v2/webhooks | Get all webhooks
[**apiV2WebhooksIdDelete**](WebhooksAPI.md#apiv2webhooksiddelete) | **DELETE** /api/v2/webhooks/{id} | Delete webhook by ID
[**apiV2WebhooksIdGet**](WebhooksAPI.md#apiv2webhooksidget) | **GET** /api/v2/webhooks/{id} | Get webhook by ID
[**apiV2WebhooksIdPut**](WebhooksAPI.md#apiv2webhooksidput) | **PUT** /api/v2/webhooks/{id} | Edit webhook by ID
[**apiV2WebhooksPost**](WebhooksAPI.md#apiv2webhookspost) | **POST** /api/v2/webhooks | Create webhook
[**apiV2WebhooksSearchPost**](WebhooksAPI.md#apiv2webhookssearchpost) | **POST** /api/v2/webhooks/search | Search for webhooks
[**apiV2WebhooksSpecialVariablesGet**](WebhooksAPI.md#apiv2webhooksspecialvariablesget) | **GET** /api/v2/webhooks/specialVariables | Get special variables for webhook event type
[**apiV2WebhooksTestPost**](WebhooksAPI.md#apiv2webhookstestpost) | **POST** /api/v2/webhooks/test | Test webhook&#39;s url


# **apiV2WebhooksGet**
```swift
    internal class func apiV2WebhooksGet(projectId: UUID? = nil, completion: @escaping (_ data: [WebHookModel]?, _ error: Error?) -> Void)
```

Get all webhooks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let projectId = 987 // UUID | Project unique ID (optional)

// Get all webhooks
WebhooksAPI.apiV2WebhooksGet(projectId: projectId) { (response, error) in
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
 **projectId** | **UUID** | Project unique ID | [optional] 

### Return type

[**[WebHookModel]**](WebHookModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksIdDelete**
```swift
    internal class func apiV2WebhooksIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete webhook by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Webhook unique ID

// Delete webhook by ID
WebhooksAPI.apiV2WebhooksIdDelete(id: id) { (response, error) in
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
 **id** | **UUID** | Webhook unique ID | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksIdGet**
```swift
    internal class func apiV2WebhooksIdGet(id: UUID, completion: @escaping (_ data: WebHookModel?, _ error: Error?) -> Void)
```

Get webhook by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Webhook unique ID

// Get webhook by ID
WebhooksAPI.apiV2WebhooksIdGet(id: id) { (response, error) in
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
 **id** | **UUID** | Webhook unique ID | 

### Return type

[**WebHookModel**](WebHookModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksIdPut**
```swift
    internal class func apiV2WebhooksIdPut(id: UUID, webHookPostModel: WebHookPostModel? = nil, completion: @escaping (_ data: WebHookModel?, _ error: Error?) -> Void)
```

Edit webhook by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Webhook unique ID
let webHookPostModel = WebHookPostModel(projectId: 123, eventType: WebHookEventTypeModel(), description: "description_example", url: "url_example", requestType: RequestTypeModel(), shouldSendBody: false, headers: "TODO", queryParameters: "TODO", isEnabled: false, shouldSendCustomBody: false, customBody: "customBody_example", shouldReplaceParameters: false, shouldEscapeParameters: false, name: "name_example") // WebHookPostModel |  (optional)

// Edit webhook by ID
WebhooksAPI.apiV2WebhooksIdPut(id: id, webHookPostModel: webHookPostModel) { (response, error) in
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
 **id** | **UUID** | Webhook unique ID | 
 **webHookPostModel** | [**WebHookPostModel**](WebHookPostModel.md) |  | [optional] 

### Return type

[**WebHookModel**](WebHookModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksPost**
```swift
    internal class func apiV2WebhooksPost(webHookPostModel: WebHookPostModel? = nil, completion: @escaping (_ data: WebHookModel?, _ error: Error?) -> Void)
```

Create webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let webHookPostModel = WebHookPostModel(projectId: 123, eventType: WebHookEventTypeModel(), description: "description_example", url: "url_example", requestType: RequestTypeModel(), shouldSendBody: false, headers: "TODO", queryParameters: "TODO", isEnabled: false, shouldSendCustomBody: false, customBody: "customBody_example", shouldReplaceParameters: false, shouldEscapeParameters: false, name: "name_example") // WebHookPostModel |  (optional)

// Create webhook
WebhooksAPI.apiV2WebhooksPost(webHookPostModel: webHookPostModel) { (response, error) in
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
 **webHookPostModel** | [**WebHookPostModel**](WebHookPostModel.md) |  | [optional] 

### Return type

[**WebHookModel**](WebHookModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksSearchPost**
```swift
    internal class func apiV2WebhooksSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, searchWebhooksQueryModel: SearchWebhooksQueryModel? = nil, completion: @escaping (_ data: [WebHookModel]?, _ error: Error?) -> Void)
```

Search for webhooks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let searchWebhooksQueryModel = SearchWebhooksQueryModel(name: "name_example", eventTypes: [WebHookEventTypeModel()], methods: [RequestTypeModel()], projectIds: [123], isEnabled: false) // SearchWebhooksQueryModel |  (optional)

// Search for webhooks
WebhooksAPI.apiV2WebhooksSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, searchWebhooksQueryModel: searchWebhooksQueryModel) { (response, error) in
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
 **searchWebhooksQueryModel** | [**SearchWebhooksQueryModel**](SearchWebhooksQueryModel.md) |  | [optional] 

### Return type

[**[WebHookModel]**](WebHookModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksSpecialVariablesGet**
```swift
    internal class func apiV2WebhooksSpecialVariablesGet(eventType: WebHookEventType? = nil, variablesType: WebhookVariablesType? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Get special variables for webhook event type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let eventType = WebHookEventType() // WebHookEventType | Webhook event type (optional)
let variablesType = WebhookVariablesType() // WebhookVariablesType |  (optional)

// Get special variables for webhook event type
WebhooksAPI.apiV2WebhooksSpecialVariablesGet(eventType: eventType, variablesType: variablesType) { (response, error) in
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
 **eventType** | [**WebHookEventType**](.md) | Webhook event type | [optional] 
 **variablesType** | [**WebhookVariablesType**](.md) |  | [optional] 

### Return type

**[String]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2WebhooksTestPost**
```swift
    internal class func apiV2WebhooksTestPost(webHookTestModel: WebHookTestModel? = nil, completion: @escaping (_ data: WebhookResponse?, _ error: Error?) -> Void)
```

Test webhook's url

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let webHookTestModel = WebHookTestModel(requestType: RequestTypeModel(), url: "url_example") // WebHookTestModel |  (optional)

// Test webhook's url
WebhooksAPI.apiV2WebhooksTestPost(webHookTestModel: webHookTestModel) { (response, error) in
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
 **webHookTestModel** | [**WebHookTestModel**](WebHookTestModel.md) |  | [optional] 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

