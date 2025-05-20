# WebHookPostModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Unique ID of the webhook project | 
**eventType** | [**WebHookEventTypeModel**](WebHookEventTypeModel.md) | Type of event which triggers the webhook | 
**description** | **String** | Description of the webhook | [optional] 
**url** | **String** | Request URL of the webhook | 
**requestType** | [**RequestTypeModel**](RequestTypeModel.md) | Request method of the webhook | 
**shouldSendBody** | **Bool** | Indicates if the webhook sends body | 
**headers** | **[String: String]** | Collection of the webhook headers | 
**queryParameters** | **[String: String]** | Collection of the webhook query parameters | 
**isEnabled** | **Bool** | Indicates if the webhook is active | 
**shouldSendCustomBody** | **Bool** | Indicates if the webhook sends custom body | 
**customBody** | **String** | Custom body of the webhook | [optional] 
**shouldReplaceParameters** | **Bool** | Indicates if the webhook injects parameters | 
**shouldEscapeParameters** | **Bool** | Indicates if the webhook escapes invalid characters in parameters | 
**name** | **String** | Name of the webhook | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


