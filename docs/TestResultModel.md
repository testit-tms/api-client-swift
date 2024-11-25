# TestResultModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
**testPoint** | [**TestPointPutModel**](TestPointPutModel.md) |  | [optional] 
**autoTest** | [**AutoTestModel**](AutoTestModel.md) |  | [optional] 
**autoTestStepResults** | [AttachmentModelAutoTestStepResultsModel] |  | [optional] 
**setupResults** | [AttachmentModelAutoTestStepResultsModel] |  | [optional] 
**teardownResults** | [AttachmentModelAutoTestStepResultsModel] |  | [optional] 
**workItemVersionId** | **UUID** |  | 
**workItemVersionNumber** | **Int** |  | [optional] 
**parameters** | **[String: String]** |  | [optional] 
**properties** | **[String: String]** |  | [optional] 
**id** | **UUID** |  | 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**stepComments** | [StepCommentModel] |  | [optional] 
**failureClassIds** | **[UUID]** |  | 
**outcome** | [**TestResultOutcome**](TestResultOutcome.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**links** | [LinkModel] |  | [optional] 
**stepResults** | [StepResultModel] |  | [optional] 
**attachments** | [AttachmentModel] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


