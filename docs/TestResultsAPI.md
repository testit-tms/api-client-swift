# TestResultsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TestResultsExternalProjectsExternalProjectIdDefectsExternalFormsPost**](TestResultsAPI.md#apiv2testresultsexternalprojectsexternalprojectiddefectsexternalformspost) | **POST** /api/v2/testResults/external-projects/{externalProjectId}/defects/external-forms | 
[**apiV2TestResultsExternalProjectsExternalProjectIdDefectsPost**](TestResultsAPI.md#apiv2testresultsexternalprojectsexternalprojectiddefectspost) | **POST** /api/v2/testResults/external-projects/{externalProjectId}/defects | 
[**apiV2TestResultsIdAggregatedGet**](TestResultsAPI.md#apiv2testresultsidaggregatedget) | **GET** /api/v2/testResults/{id}/aggregated | Get test result by ID aggregated with previous results
[**apiV2TestResultsIdAttachmentsAttachmentIdPut**](TestResultsAPI.md#apiv2testresultsidattachmentsattachmentidput) | **PUT** /api/v2/testResults/{id}/attachments/{attachmentId} | Attach file to the test result
[**apiV2TestResultsIdAttachmentsInfoGet**](TestResultsAPI.md#apiv2testresultsidattachmentsinfoget) | **GET** /api/v2/testResults/{id}/attachments/info | Get test result attachments meta-information
[**apiV2TestResultsIdGet**](TestResultsAPI.md#apiv2testresultsidget) | **GET** /api/v2/testResults/{id} | Get test result by ID
[**apiV2TestResultsIdPut**](TestResultsAPI.md#apiv2testresultsidput) | **PUT** /api/v2/testResults/{id} | Edit test result by ID
[**apiV2TestResultsIdRerunsGet**](TestResultsAPI.md#apiv2testresultsidrerunsget) | **GET** /api/v2/testResults/{id}/reruns | Get reruns
[**apiV2TestResultsSearchPost**](TestResultsAPI.md#apiv2testresultssearchpost) | **POST** /api/v2/testResults/search | Search for test results
[**apiV2TestResultsStatisticsFilterPost**](TestResultsAPI.md#apiv2testresultsstatisticsfilterpost) | **POST** /api/v2/testResults/statistics/filter | Search for test results and extract statistics
[**createAttachment**](TestResultsAPI.md#createattachment) | **POST** /api/v2/testResults/{id}/attachments | Upload and link attachment to TestResult
[**deleteAttachment**](TestResultsAPI.md#deleteattachment) | **DELETE** /api/v2/testResults/{id}/attachments/{attachmentId} | Remove attachment and unlink from TestResult
[**downloadAttachment**](TestResultsAPI.md#downloadattachment) | **GET** /api/v2/testResults/{id}/attachments/{attachmentId} | Get attachment of TestResult
[**getAttachment**](TestResultsAPI.md#getattachment) | **GET** /api/v2/testResults/{id}/attachments/{attachmentId}/info | Get Metadata of TestResult&#39;s attachment
[**getAttachments**](TestResultsAPI.md#getattachments) | **GET** /api/v2/testResults/{id}/attachments | Get all attachments of TestResult


# **apiV2TestResultsExternalProjectsExternalProjectIdDefectsExternalFormsPost**
```swift
    open class func apiV2TestResultsExternalProjectsExternalProjectIdDefectsExternalFormsPost(externalProjectId: UUID, testResultsSelectApiModel: TestResultsSelectApiModel? = nil, completion: @escaping (_ data: GetExternalFormApiResult?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let externalProjectId = 987 // UUID | 
let testResultsSelectApiModel = TestResultsSelectApiModel(filter: TestResultsFilterApiModel(configurationIds: [123], outcomes: [TestResultOutcome()], statusCodes: ["statusCodes_example"], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example", autoTestGlobalIds: [123], name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, startedOn: nil, completedOn: nil, duration: Int64RangeSelectorModel(from: 123, to: 123), resultReasons: ["resultReasons_example"], testRunIds: [123]), extractionModel: TestResultsExtractionApiModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // TestResultsSelectApiModel |  (optional)

TestResultsAPI.apiV2TestResultsExternalProjectsExternalProjectIdDefectsExternalFormsPost(externalProjectId: externalProjectId, testResultsSelectApiModel: testResultsSelectApiModel) { (response, error) in
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
 **externalProjectId** | **UUID** |  | 
 **testResultsSelectApiModel** | [**TestResultsSelectApiModel**](TestResultsSelectApiModel.md) |  | [optional] 

### Return type

[**GetExternalFormApiResult**](GetExternalFormApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsExternalProjectsExternalProjectIdDefectsPost**
```swift
    open class func apiV2TestResultsExternalProjectsExternalProjectIdDefectsPost(externalProjectId: UUID, createDefectApiModel: CreateDefectApiModel? = nil, completion: @escaping (_ data: DefectApiModel?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let externalProjectId = 987 // UUID | 
let createDefectApiModel = CreateDefectApiModel(testResultIds: [123], form: ExternalFormCreateModel(possibleValues: "TODO", fields: [ExternalFormFieldModel(fieldId: "fieldId_example", fieldName: "fieldName_example", helpText: "helpText_example", type: "type_example", arrayValuesType: "arrayValuesType_example", defaultValue: 123, isCustomValueAllowed: false, autoCompleteUrl: "autoCompleteUrl_example", controlType: "controlType_example", minLength: 123, maxLength: 123, isRequired: false, min: 123, max: 123)], links: [ExternalFormLinkModel(name: "name_example", url: "url_example")], values: "TODO")) // CreateDefectApiModel |  (optional)

TestResultsAPI.apiV2TestResultsExternalProjectsExternalProjectIdDefectsPost(externalProjectId: externalProjectId, createDefectApiModel: createDefectApiModel) { (response, error) in
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
 **externalProjectId** | **UUID** |  | 
 **createDefectApiModel** | [**CreateDefectApiModel**](CreateDefectApiModel.md) |  | [optional] 

### Return type

[**DefectApiModel**](DefectApiModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdAggregatedGet**
```swift
    open class func apiV2TestResultsIdAggregatedGet(id: UUID, completion: @escaping (_ data: TestResultResponse?, _ error: Error?) -> Void)
```

Get test result by ID aggregated with previous results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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

[**TestResultResponse**](TestResultResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdAttachmentsAttachmentIdPut**
```swift
    open class func apiV2TestResultsIdAttachmentsAttachmentIdPut(id: UUID, attachmentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Attach file to the test result

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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
    open class func apiV2TestResultsIdAttachmentsInfoGet(id: UUID, completion: @escaping (_ data: [AttachmentModel]?, _ error: Error?) -> Void)
```

Get test result attachments meta-information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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
    open class func apiV2TestResultsIdGet(id: UUID, completion: @escaping (_ data: TestResultResponse?, _ error: Error?) -> Void)
```

Get test result by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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

[**TestResultResponse**](TestResultResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdPut**
```swift
    open class func apiV2TestResultsIdPut(id: UUID, testResultUpdateV2Request: TestResultUpdateV2Request? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Edit test result by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test result unique ID
let testResultUpdateV2Request = TestResultUpdateV2Request(failureClassIds: [123], outcome: TestResultOutcome(), statusCode: "statusCode_example", comment: "comment_example", links: [Link(id: 123, title: "title_example", url: "url_example", description: "description_example", type: LinkType(), hasInfo: false)], stepResults: [StepResultApiModel(stepId: 123, outcome: "outcome_example", sharedStepVersionId: 123, sharedStepResults: [SharedStepResultApiModel(stepId: 123, outcome: "outcome_example")], comment: StepCommentApiModel(id: 123, text: "text_example", stepId: 123, parentStepId: 123, attachments: [AttachmentApiResult(id: 123, fileId: "fileId_example", type: "type_example", size: 123, createdDate: Date(), modifiedDate: Date(), createdById: 123, modifiedById: 123, name: "name_example")], testResultId: 123, createdById: 123, modifiedById: 123, createdDate: Date(), modifiedDate: Date()))], attachments: [AttachmentUpdateRequest(id: 123)], durationInMs: 123, duration: 123, stepComments: [TestResultStepCommentUpdateRequest(id: 123, text: "text_example", stepId: 123, parentStepId: 123, attachments: [nil])], setupResults: [AutoTestStepResultUpdateRequest(title: "title_example", description: "description_example", info: "info_example", startedOn: Date(), completedOn: Date(), duration: 123, outcome: AvailableTestResultOutcome(), stepResults: [nil], attachments: [nil], parameters: "TODO")], teardownResults: [nil], message: "message_example", trace: "trace_example") // TestResultUpdateV2Request |  (optional)

// Edit test result by ID
TestResultsAPI.apiV2TestResultsIdPut(id: id, testResultUpdateV2Request: testResultUpdateV2Request) { (response, error) in
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
 **testResultUpdateV2Request** | [**TestResultUpdateV2Request**](TestResultUpdateV2Request.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsIdRerunsGet**
```swift
    open class func apiV2TestResultsIdRerunsGet(id: UUID, completion: @escaping (_ data: RerunsModel?, _ error: Error?) -> Void)
```

Get reruns

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Test result unique ID

// Get reruns
TestResultsAPI.apiV2TestResultsIdRerunsGet(id: id) { (response, error) in
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

[**RerunsModel**](RerunsModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsSearchPost**
```swift
    open class func apiV2TestResultsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, testResultsFilterApiModel: TestResultsFilterApiModel? = nil, completion: @escaping (_ data: [TestResultShortResponse]?, _ error: Error?) -> Void)
```

Search for test results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let testResultsFilterApiModel = TestResultsFilterApiModel(configurationIds: [123], outcomes: [TestResultOutcome()], statusCodes: ["statusCodes_example"], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example", autoTestGlobalIds: [123], name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, startedOn: nil, completedOn: nil, duration: Int64RangeSelectorModel(from: 123, to: 123), resultReasons: ["resultReasons_example"], testRunIds: [123]) // TestResultsFilterApiModel |  (optional)

// Search for test results
TestResultsAPI.apiV2TestResultsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, testResultsFilterApiModel: testResultsFilterApiModel) { (response, error) in
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
 **testResultsFilterApiModel** | [**TestResultsFilterApiModel**](TestResultsFilterApiModel.md) |  | [optional] 

### Return type

[**[TestResultShortResponse]**](TestResultShortResponse.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2TestResultsStatisticsFilterPost**
```swift
    open class func apiV2TestResultsStatisticsFilterPost(testResultsFilterApiModel: TestResultsFilterApiModel? = nil, completion: @escaping (_ data: TestResultsStatisticsApiResult?, _ error: Error?) -> Void)
```

Search for test results and extract statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let testResultsFilterApiModel = TestResultsFilterApiModel(configurationIds: [123], outcomes: [TestResultOutcome()], statusCodes: ["statusCodes_example"], failureCategories: [FailureCategoryModel()], namespace: "namespace_example", className: "className_example", autoTestGlobalIds: [123], name: "name_example", createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, startedOn: nil, completedOn: nil, duration: Int64RangeSelectorModel(from: 123, to: 123), resultReasons: ["resultReasons_example"], testRunIds: [123]) // TestResultsFilterApiModel |  (optional)

// Search for test results and extract statistics
TestResultsAPI.apiV2TestResultsStatisticsFilterPost(testResultsFilterApiModel: testResultsFilterApiModel) { (response, error) in
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
 **testResultsFilterApiModel** | [**TestResultsFilterApiModel**](TestResultsFilterApiModel.md) |  | [optional] 

### Return type

[**TestResultsStatisticsApiResult**](TestResultsStatisticsApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAttachment**
```swift
    open class func createAttachment(id: UUID, file: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload and link attachment to TestResult

  Use case    User sets testResultId    User attaches a file    System creates attachment and links it to the test result    System returns attachment identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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
    open class func deleteAttachment(id: UUID, attachmentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove attachment and unlink from TestResult

  Use case    User sets testResultId and attachmentId    User attaches a file    User runs method execution    System deletes attachment and unlinks it from the test result    System returns attachment identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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
    open class func downloadAttachment(attachmentId: UUID, id: UUID, width: Int? = nil, height: Int? = nil, resizeType: ImageResizeType? = nil, backgroundColor: String? = nil, preview: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get attachment of TestResult

  Use case    User sets attachmentId and testResultId    [Optional] User sets resize configuration    User runs method execution    System search attachments by the attachmentId and the testResultId    [Optional] If resize configuration is set, System resizes the attachment according to the resize                      configuration    [Optional] Otherwise, System does not resize the attachment    System returns attachment as a file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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
    open class func getAttachment(id: UUID, attachmentId: UUID, completion: @escaping (_ data: AttachmentModel?, _ error: Error?) -> Void)
```

Get Metadata of TestResult's attachment

  Use case    User sets attachmentId and testResultId    User runs method execution    System search attachment by the attachmentId and the testResultId    System returns attachment data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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
    open class func getAttachments(id: UUID, completion: @escaping (_ data: [AttachmentModel]?, _ error: Error?) -> Void)
```

Get all attachments of TestResult

  Use case    User sets testResultId    User runs method execution    System search all attachments of the test result    System returns attachments enumeration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

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

