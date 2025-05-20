# TestResultHistoryReportModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | 
**userId** | **UUID** | If test run was stopped, this property equals identifier of user who stopped it.Otherwise, the property equals identifier of user who created the test result | 
**testRunId** | **UUID** |  | [optional] 
**testRunName** | **String** |  | [optional] 
**createdByUserName** | **String** |  | [optional] 
**testPlanId** | **UUID** |  | [optional] 
**testPlanGlobalId** | **Int64** |  | [optional] 
**testPlanName** | **String** |  | [optional] 
**configurationName** | **String** | If test point related to the test result has configuration, this property will be equal to the test point configuration name. Otherwise, this property will be equal to the test result configuration name | [optional] 
**isAutomated** | **Bool** |  | 
**outcome** | **String** | If any test result related to the test run is linked with autotest and the run has an outcome, the outcome value equalsto the worst outcome of the last modified test result.Otherwise, the outcome equals to the outcome of first created test result in the test run | [optional] 
**comment** | **String** | If any test result related to the test run is linked with autotest, comment will have default valueOtherwise, the comment equals to the comment of first created test result in the test run | [optional] 
**links** | [LinkModel] | If any test result related to the test run is linked with autotest, link will be equal to the links of last modified test result.Otherwise, the links equals to the links of first created test result in the test run | [optional] 
**startedOn** | **Date** |  | [optional] 
**completedOn** | **Date** |  | [optional] 
**duration** | **Int64** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**attachments** | [AttachmentModel] | If any test result related to the test run is linked with autotest, attachments will be equal to the attachments of last modified test result.Otherwise, the attachments equals to the attachments of first created test result in the test run | [optional] 
**workItemVersionId** | **UUID** |  | [optional] 
**workItemVersionNumber** | **Int** |  | [optional] 
**launchSource** | **String** |  | [optional] 
**failureClassIds** | **[UUID]** |  | 
**parameters** | **[String: String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


