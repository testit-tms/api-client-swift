# TestResultUpdateV2Request

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**failureClassIds** | **[UUID]** |  | [optional] 
**outcome** | [**TestResultOutcome**](TestResultOutcome.md) |  | [optional] 
**statusCode** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**links** | [Link] |  | [optional] 
**stepResults** | [StepResultApiModel] |  | [optional] 
**attachments** | [AttachmentUpdateRequest] |  | [optional] 
**durationInMs** | **Int64** |  | [optional] 
**duration** | **Int64** |  | [optional] 
**stepComments** | [TestResultStepCommentUpdateRequest] |  | [optional] 
**setupResults** | [AutoTestStepResultUpdateRequest] |  | [optional] 
**teardownResults** | [AutoTestStepResultUpdateRequest] |  | [optional] 
**message** | **String** |  | [optional] 
**trace** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


