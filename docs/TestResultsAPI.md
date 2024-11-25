# TestResultsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TestResultsIdAggregatedGet**](TestResultsAPI.md#apiv2testresultsidaggregatedget) | **GET** /api/v2/testResults/{id}/aggregated | Get test result by ID aggregated with previous results
[**apiV2TestResultsIdAttachmentsAttachmentIdPut**](TestResultsAPI.md#apiv2testresultsidattachmentsattachmentidput) | **PUT** /api/v2/testResults/{id}/attachments/{attachmentId} | Attach file to the test result
[**apiV2TestResultsIdAttachmentsInfoGet**](TestResultsAPI.md#apiv2testresultsidattachmentsinfoget) | **GET** /api/v2/testResults/{id}/attachments/info | Get test result attachments meta-information
[**apiV2TestResultsIdGet**](TestResultsAPI.md#apiv2testresultsidget) | **GET** /api/v2/testResults/{id} | Get test result by ID
[**apiV2TestResultsIdPut**](TestResultsAPI.md#apiv2testresultsidput) | **PUT** /api/v2/testResults/{id} | Edit test result by ID
[**apiV2TestResultsSearchPost**](TestResultsAPI.md#apiv2testresultssearchpost) | **POST** /api/v2/testResults/search | Search for test results
[**apiV2TestResultsStatisticsFilterPost**](TestResultsAPI.md#apiv2testresultsstatisticsfilterpost) | **POST** /api/v2/testResults/statistics/filter | Search for test results and extract statistics
[**createAttachment**](TestResultsAPI.md#createattachment) | **POST** /api/v2/testResults/{id}/attachments | Upload and link attachment to TestResult
[**deleteAttachment**](TestResultsAPI.md#deleteattachment) | **DELETE** /api/v2/testResults/{id}/attachments/{attachmentId} | Remove attachment and unlink from TestResult
[**downloadAttachment**](TestResultsAPI.md#downloadattachment) | **GET** /api/v2/testResults/{id}/attachments/{attachmentId} | Get attachment of TestResult
[**getAttachment**](TestResultsAPI.md#getattachment) | **GET** /api/v2/testResults/{id}/attachments/{attachmentId}/info | Get Metadata of TestResult&#39;s attachment
[**getAttachments**](TestResultsAPI.md#getattachments) | **GET** /api/v2/testResults/{id}/attachments | Get all attachments of TestResult


# **apiV2TestResultsIdAggregatedGet**
```swift
    internal class func apiV2TestResultsIdAggregatedGet(id: UUID, completion: @escaping (_ data: TestResultModel?, _ error: Error?) -> Void)
```

Get test result by ID aggregated with previous results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result unique ID

// Get test result by ID aggregated with previous results
TestResultsAPI.apiV2TestResultsIdAggregatedGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test result unique ID | 

### Return type

[**TestResultModel**](TestResultModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdAttachmentsAttachmentIdPut**
```swift
    internal class func apiV2TestResultsIdAttachmentsAttachmentIdPut(id: UUID, attachmentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Attach file to the test result

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result unique ID
let attachmentId = 987 // UUID | Attachment unique ID

// Attach file to the test result
TestResultsAPI.apiV2TestResultsIdAttachmentsAttachmentIdPut(id: id, attachmentId: attachmentId) { (response, error) in
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
 **id** | **UUID** | Test result unique ID | 
 **attachmentId** | **UUID** | Attachment unique ID | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdAttachmentsInfoGet**
```swift
    internal class func apiV2TestResultsIdAttachmentsInfoGet(id: UUID, completion: @escaping (_ data: [AttachmentModel]?, _ error: Error?) -> Void)
```

Get test result attachments meta-information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result unique ID

// Get test result attachments meta-information
TestResultsAPI.apiV2TestResultsIdAttachmentsInfoGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test result unique ID | 

### Return type

[**[AttachmentModel]**](AttachmentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdGet**
```swift
    internal class func apiV2TestResultsIdGet(id: UUID, completion: @escaping (_ data: TestResultModel?, _ error: Error?) -> Void)
```

Get test result by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result unique ID

// Get test result by ID
TestResultsAPI.apiV2TestResultsIdGet(id: id) { (response, error) in
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
 **id** | **UUID** | Test result unique ID | 

### Return type

[**TestResultModel**](TestResultModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdPut**
```swift
    internal class func apiV2TestResultsIdPut(id: UUID, testResultUpdateModel: TestResultUpdateModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Edit test result by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result unique ID
let testResultUpdateModel = TestResultUpdateModel(failureClassIds: [123], outcome: TestResultOutcome(), comment: "comment_example", links: [LinkModel(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], stepResults: [StepResultModel(stepId: 123, outcome: "outcome_example", sharedStepVersionId: 123, sharedStepResults: [SharedStepResultModel(stepId: 123, outcome: "outcome_example")], comment: StepCommentModel(id: 123, text: "text_example", stepId: 123, parentStepId: 123, attachments: [AttachmentModel(fileId: "fileId_example", type: "type_example", size: 123, createdDate: Date(), modifiedDate: Date(), createdById: 123, modifiedById: 123, name: "name_example", id: 123)], testResultId: 123, createdById: 123, modifiedById: 123, createdDate: Date(), modifiedDate: Date()))], attachments: [AttachmentPutModel(id: 123)], durationInMs: 123, duration: 123, stepComments: [TestResultStepCommentPutModel(id: 123, text: "text_example", stepId: 123, parentStepId: 123, attachments: [nil])], setupResults: [AttachmentPutModelAutoTestStepResultsModel(title: "title_example", description: "description_example", info: "info_example", startedOn: Date(), completedOn: Date(), duration: 123, outcome: AvailableTestResultOutcome(), stepResults: [nil], attachments: [nil], parameters: "TODO")], teardownResults: [nil], message: "message_example", trace: "trace_example") // TestResultUpdateModel |  (optional)

// Edit test result by ID
TestResultsAPI.apiV2TestResultsIdPut(id: id, testResultUpdateModel: testResultUpdateModel) { (response, error) in
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
 **id** | **UUID** | Test result unique ID | 
 **testResultUpdateModel** | [**TestResultUpdateModel**](TestResultUpdateModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsSearchPost**
```swift
    internal class func apiV2TestResultsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testResultsFilterModel: TestResultsFilterModel? = nil, completion: @escaping (_ data: [TestResultShortGetModel]?, _ error: Error?) -> Void)
```

Search for test results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testResultsFilterModel = TestResultsFilterModel(testRunIds: [123], autoTestGlobalIds: [123], name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, startedOn: nil, completedOn: nil, duration: Int64RangeSelectorModel(from: 123, to: 123), resultReasons: ["resultReasons_example"], configurationIds: [123], outcomes: [TestResultOutcome()], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example") // TestResultsFilterModel |  (optional)

// Search for test results
TestResultsAPI.apiV2TestResultsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testResultsFilterModel: testResultsFilterModel) { (response, error) in
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
 **testResultsFilterModel** | [**TestResultsFilterModel**](TestResultsFilterModel.md) |  | [optional] 

### Return type

[**[TestResultShortGetModel]**](TestResultShortGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsStatisticsFilterPost**
```swift
    internal class func apiV2TestResultsStatisticsFilterPost(testResultsFilterModel: TestResultsFilterModel? = nil, completion: @escaping (_ data: TestResultsStatisticsGetModel?, _ error: Error?) -> Void)
```

Search for test results and extract statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let testResultsFilterModel = TestResultsFilterModel(testRunIds: [123], autoTestGlobalIds: [123], name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, startedOn: nil, completedOn: nil, duration: Int64RangeSelectorModel(from: 123, to: 123), resultReasons: ["resultReasons_example"], configurationIds: [123], outcomes: [TestResultOutcome()], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example") // TestResultsFilterModel |  (optional)

// Search for test results and extract statistics
TestResultsAPI.apiV2TestResultsStatisticsFilterPost(testResultsFilterModel: testResultsFilterModel) { (response, error) in
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
 **testResultsFilterModel** | [**TestResultsFilterModel**](TestResultsFilterModel.md) |  | [optional] 

### Return type

[**TestResultsStatisticsGetModel**](TestResultsStatisticsGetModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAttachment**
```swift
    internal class func createAttachment(id: UUID, file: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload and link attachment to TestResult

 Use case   User sets testResultId   User attaches a file   System creates attachment and links it to the test result   System returns attachment identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result internal identifier (guid format)
let file = URL(string: "https://example.com")! // URL | Select file (optional)

// Upload and link attachment to TestResult
TestResultsAPI.createAttachment(id: id, file: file) { (response, error) in
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
 **id** | **UUID** | Test result internal identifier (guid format) | 
 **file** | **URL** | Select file | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachment**
```swift
    internal class func deleteAttachment(id: UUID, attachmentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove attachment and unlink from TestResult

 Use case   User sets testResultId and attachmentId   User attaches a file   User runs method execution   System deletes attachment and unlinks it from the test result   System returns attachment identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result internal identifier (guid format)
let attachmentId = 987 // UUID | Attachment internal identifier (guid format)

// Remove attachment and unlink from TestResult
TestResultsAPI.deleteAttachment(id: id, attachmentId: attachmentId) { (response, error) in
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
 **id** | **UUID** | Test result internal identifier (guid format) | 
 **attachmentId** | **UUID** | Attachment internal identifier (guid format) | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadAttachment**
```swift
    internal class func downloadAttachment(attachmentId: UUID, id: UUID, width: Int? = nil, height: Int? = nil, resizeType: ImageResizeType? = nil, backgroundColor: String? = nil, preview: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get attachment of TestResult

 Use case   User sets attachmentId and testResultId   [Optional] User sets resize configuration   User runs method execution   System search attachments by the attachmentId and the testResultId                         [Optional] If resize configuration is set, System resizes the attachment according to the resize                      configuration                     [Optional] Otherwise, System does not resize the attachment   System returns attachment as a file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let attachmentId = 987 // UUID | Attachment internal identifier (guid format)
let id = 987 // UUID | Test result internal identifier (guid format)
let width = 987 // Int | Width of the result image (optional)
let height = 987 // Int | Height of the result image (optional)
let resizeType = ImageResizeType() // ImageResizeType | Type of resizing to apply to the result image (optional)
let backgroundColor = "backgroundColor_example" // String | Color of the background if the `resizeType` is `AddBackgroundStripes` (optional)
let preview = true // Bool | If image must be converted to a preview (lower quality, no animation) (optional)

// Get attachment of TestResult
TestResultsAPI.downloadAttachment(attachmentId: attachmentId, id: id, width: width, height: height, resizeType: resizeType, backgroundColor: backgroundColor, preview: preview) { (response, error) in
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
 **attachmentId** | **UUID** | Attachment internal identifier (guid format) | 
 **id** | **UUID** | Test result internal identifier (guid format) | 
 **width** | **Int** | Width of the result image | [optional] 
 **height** | **Int** | Height of the result image | [optional] 
 **resizeType** | [**ImageResizeType**](.md) | Type of resizing to apply to the result image | [optional] 
 **backgroundColor** | **String** | Color of the background if the &#x60;resizeType&#x60; is &#x60;AddBackgroundStripes&#x60; | [optional] 
 **preview** | **Bool** | If image must be converted to a preview (lower quality, no animation) | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachment**
```swift
    internal class func getAttachment(id: UUID, attachmentId: UUID, completion: @escaping (_ data: AttachmentModel?, _ error: Error?) -> Void)
```

Get Metadata of TestResult's attachment

 Use case   User sets attachmentId and testResultId   User runs method execution   System search attachment by the attachmentId and the testResultId   System returns attachment data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result internal identifier (guid format)
let attachmentId = 987 // UUID | Attachment internal identifier (guid format)

// Get Metadata of TestResult's attachment
TestResultsAPI.getAttachment(id: id, attachmentId: attachmentId) { (response, error) in
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
 **id** | **UUID** | Test result internal identifier (guid format) | 
 **attachmentId** | **UUID** | Attachment internal identifier (guid format) | 

### Return type

[**AttachmentModel**](AttachmentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachments**
```swift
    internal class func getAttachments(id: UUID, completion: @escaping (_ data: [AttachmentModel]?, _ error: Error?) -> Void)
```

Get all attachments of TestResult

 Use case   User sets testResultId   User runs method execution   System search all attachments of the test result   System returns attachments enumeration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | Test result internal identifier (guid format)

// Get all attachments of TestResult
TestResultsAPI.getAttachments(id: id) { (response, error) in
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
 **id** | **UUID** | Test result internal identifier (guid format) | 

### Return type

[**[AttachmentModel]**](AttachmentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

