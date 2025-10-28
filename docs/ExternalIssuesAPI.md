# ExternalIssuesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ExternalIssuesSuggestionsPost**](ExternalIssuesAPI.md#apiv2externalissuessuggestionspost) | **POST** /api/v2/external-issues/suggestions | Returns list of suggestions from available external issues


# **apiV2ExternalIssuesSuggestionsPost**
```swift
    open class func apiV2ExternalIssuesSuggestionsPost(getExternalIssueSuggestionsApiModel: GetExternalIssueSuggestionsApiModel? = nil, completion: @escaping (_ data: ExternalIssueApiFieldSuggestionReply?, _ error: Error?) -> Void)
```

Returns list of suggestions from available external issues

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let getExternalIssueSuggestionsApiModel = GetExternalIssueSuggestionsApiModel(field: ExternalIssueApiField(), projectIds: [123], inquiry: Inquiry(filter: CompositeFilter(filters: [IFilter(filters: [nil], _operator: CollectionOperator(), value: "value_example", field: "field_example", filter: nil)], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123))) // GetExternalIssueSuggestionsApiModel |  (optional)

// Returns list of suggestions from available external issues
ExternalIssuesAPI.apiV2ExternalIssuesSuggestionsPost(getExternalIssueSuggestionsApiModel: getExternalIssueSuggestionsApiModel) { (response, error) in
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
 **getExternalIssueSuggestionsApiModel** | [**GetExternalIssueSuggestionsApiModel**](GetExternalIssueSuggestionsApiModel.md) |  | [optional] 

### Return type

[**ExternalIssueApiFieldSuggestionReply**](ExternalIssueApiFieldSuggestionReply.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

