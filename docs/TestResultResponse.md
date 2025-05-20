# TestResultResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**stepComments** | [StepCommentApiModel] |  | [optional] 
**failureClassIds** | **[UUID]** |  | 
**outcome** | [**TestResultOutcome**](TestResultOutcome.md) |  | [optional] 
**status** | [**TestStatusApiResult**](TestStatusApiResult.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**links** | [Link] |  | [optional] 
**stepResults** | [StepResultApiModel] |  | [optional] 
**attachments** | [AttachmentApiResult] |  | [optional] 
**autoTestId** | **UUID** |  | [optional] 
**configurationId** | **UUID** |  | 
**startedOn** | **Date** |  | [optional] 
**completedOn** | **Date** |  | [optional] 
**durationInMs** | **Int64** |  | [optional] 
**traces** | **String** |  | [optional] 
**failureType** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**runByUserId** | **UUID** |  | [optional] 
**stoppedByUserId** | **UUID** |  | [optional] 
**testPointId** | **UUID** |  | 
**testRunId** | **UUID** |  | 
**testPoint** | [**TestPoint**](TestPoint.md) |  | [optional] 
**autoTest** | [**AutoTest**](AutoTest.md) |  | [optional] 
**autoTestStepResults** | [AutoTestStepResult] |  | [optional] 
**setupResults** | [AutoTestStepResult] |  | [optional] 
**teardownResults** | [AutoTestStepResult] |  | [optional] 
**workItemVersionId** | **UUID** |  | 
**workItemVersionNumber** | **Int** |  | [optional] 
**parameters** | **[String: String]** |  | [optional] 
**properties** | **[String: String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


