# AutoTestsProjectAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdAutoTestsImportPost**](AutoTestsProjectAPI.md#apiv2projectsprojectidautotestsimportpost) | **POST** /api/v2/projects/{projectId}/auto-tests/import | Schedules import of auto tests JUnit XML report.


# **apiV2ProjectsProjectIdAutoTestsImportPost**
```swift
    open class func apiV2ProjectsProjectIdAutoTestsImportPost(projectId: UUID, scheduleAutoTestsReportImportsApiModel: ScheduleAutoTestsReportImportsApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Schedules import of auto tests JUnit XML report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = 987 // UUID | Project ID
let scheduleAutoTestsReportImportsApiModel = ScheduleAutoTestsReportImportsApiModel(reports: [ScheduleAutoTestsReportImportApiModel(attachmentId: 123, configurationId: 123, layerName: "layerName_example")]) // ScheduleAutoTestsReportImportsApiModel | The request model with collection of reports to import. (optional)

// Schedules import of auto tests JUnit XML report.
AutoTestsProjectAPI.apiV2ProjectsProjectIdAutoTestsImportPost(projectId: projectId, scheduleAutoTestsReportImportsApiModel: scheduleAutoTestsReportImportsApiModel) { (response, error) in
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
 **projectId** | **UUID** | Project ID | 
 **scheduleAutoTestsReportImportsApiModel** | [**ScheduleAutoTestsReportImportsApiModel**](ScheduleAutoTestsReportImportsApiModel.md) | The request model with collection of reports to import. | [optional] 

### Return type

Void (empty response body)

### Authorization

[PrivateToken](../README.md#PrivateToken), [Cookies](../README.md#Cookies)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

