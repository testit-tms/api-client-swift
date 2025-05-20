# TestResultApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**startedOn** | **Date** |  | [optional] 
**completedOn** | **Date** |  | [optional] 
**durationInMs** | **Int64** |  | [optional] 
**traces** | **String** |  | [optional] 
**failureType** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**runByUserId** | **UUID** |  | [optional] 
**stoppedByUserId** | **UUID** |  | [optional] 
**outcome** | **String** |  | 
**autoTestId** | **UUID** |  | [optional] 
**testPointId** | **UUID** |  | [optional] 
**testRunId** | **UUID** |  | 
**configurationId** | **UUID** |  | 
**status** | [**TestStatusApiResult**](TestStatusApiResult.md) |  | 
**testPoint** | [**TestPointShortApiResult**](TestPointShortApiResult.md) |  | [optional] 
**autoTest** | [**AutoTestApiResult**](AutoTestApiResult.md) |  | [optional] 
**autoTestStepResults** | [AutoTestStepResultsApiResult] |  | [optional] 
**setupResults** | [AutoTestStepResultsApiResult] |  | [optional] 
**teardownResults** | [AutoTestStepResultsApiResult] |  | [optional] 
**workItemVersionId** | **UUID** |  | [optional] 
**workItemVersionNumber** | **Int** |  | [optional] 
**attachments** | [AttachmentApiResult] |  | 
**links** | [LinkApiResult] |  | 
**failureClasses** | [TestResultFailureClassApiResult] |  | 
**stepComments** | [StepCommentApiModel] |  | [optional] 
**parameters** | **[String: String]** |  | [optional] 
**properties** | **[String: String]** |  | [optional] 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**isDeleted** | **Bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


