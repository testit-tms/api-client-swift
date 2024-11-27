# TestResultV2GetModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configuration** | [**ConfigurationModel**](ConfigurationModel.md) |  | [optional] 
**autoTest** | [**AutoTestModelV2GetModel**](AutoTestModelV2GetModel.md) |  | [optional] 
**id** | **UUID** |  | 
**configurationId** | **UUID** |  | 
**workItemVersionId** | **UUID** |  | 
**autoTestId** | **UUID** |  | [optional] 
**message** | **String** |  | [optional] 
**traces** | **String** |  | [optional] 
**startedOn** | **Date** |  | [optional] 
**completedOn** | **Date** |  | [optional] 
**runByUserId** | **UUID** |  | [optional] 
**stoppedByUserId** | **UUID** |  | [optional] 
**testPointId** | **UUID** |  | [optional] 
**testPoint** | [**TestPointShortModel**](TestPointShortModel.md) |  | [optional] 
**testRunId** | **UUID** |  | 
**outcome** | **String** | Property can contain one of these values: Passed, Failed, InProgress, Blocked, Skipped | 
**comment** | **String** |  | [optional] 
**links** | [LinkModel] |  | [optional] 
**attachments** | [AttachmentModel] |  | [optional] 
**parameters** | **[String: String]** |  | [optional] 
**properties** | **[String: String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


