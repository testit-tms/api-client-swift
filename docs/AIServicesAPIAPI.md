# AIServicesAPIAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ExternalServicesIdAiModelsPost**](AIServicesAPIAPI.md#apiv2externalservicesidaimodelspost) | **POST** /api/v2/external-services/{id}/ai/models | Ask for models with inquiry filter, cached


# **apiV2ExternalServicesIdAiModelsPost**
```swift
    open class func apiV2ExternalServicesIdAiModelsPost(id: UUID, getAIServiceModelsApiModel: GetAIServiceModelsApiModel? = nil, completion: @escaping (_ data: AIServiceModelApiResultIReply?, _ error: Error?) -> Void)
```

Ask for models with inquiry filter, cached

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let getAIServiceModelsApiModel = GetAIServiceModelsApiModel(inquiry: Inquiry(group: Group(field: "field_example", displayField: "displayField_example"), filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: "value_example", field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123))) // GetAIServiceModelsApiModel |  (optional)

// Ask for models with inquiry filter, cached
AIServicesAPIAPI.apiV2ExternalServicesIdAiModelsPost(id: id, getAIServiceModelsApiModel: getAIServiceModelsApiModel) { (response, error) in
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
 **getAIServiceModelsApiModel** | [**GetAIServiceModelsApiModel**](GetAIServiceModelsApiModel.md) |  | [optional] 

### Return type

[**AIServiceModelApiResultIReply**](AIServiceModelApiResultIReply.md)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

