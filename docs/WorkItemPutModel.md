# WorkItemPutModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [AttachmentPutModel] |  | 
**iterations** | [IterationPutModel] |  | [optional] 
**autoTests** | [AutoTestIdModel] |  | [optional] 
**id** | **UUID** |  | 
**sectionId** | **UUID** |  | 
**description** | **String** |  | [optional] 
**state** | [**WorkItemStates**](WorkItemStates.md) |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**steps** | [StepPutModel] |  | 
**preconditionSteps** | [StepPutModel] |  | 
**postconditionSteps** | [StepPutModel] |  | 
**duration** | **Int** |  | 
**attributes** | **[String: AnyCodable]** |  | 
**tags** | [TagPutModel] |  | 
**links** | [LinkPutModel] |  | 
**name** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


