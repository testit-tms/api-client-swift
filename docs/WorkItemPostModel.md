# WorkItemPostModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityTypeName** | [**WorkItemEntityTypes**](WorkItemEntityTypes.md) |  | 
**description** | **String** |  | [optional] 
**state** | [**WorkItemStates**](WorkItemStates.md) |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**steps** | [StepPostModel] |  | 
**preconditionSteps** | [StepPostModel] |  | 
**postconditionSteps** | [StepPostModel] |  | 
**duration** | **Int** | Must be 0 for shared steps and greater than 0 for the other types of work items | 
**attributes** | **[String: AnyCodable]** |  | 
**tags** | [TagPostModel] |  | 
**attachments** | [AttachmentPutModel] |  | [optional] 
**iterations** | [IterationPutModel] |  | [optional] 
**links** | [LinkPostModel] |  | 
**name** | **String** |  | 
**projectId** | **UUID** | This property is used to link workitem with project | 
**sectionId** | **UUID** |  | 
**autoTests** | [AutoTestIdModel] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


