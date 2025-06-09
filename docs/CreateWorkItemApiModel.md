# CreateWorkItemApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityTypeName** | [**WorkItemEntityTypes**](WorkItemEntityTypes.md) |  | 
**description** | **String** | Workitem description | [optional] 
**state** | [**WorkItemStates**](WorkItemStates.md) |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**steps** | [CreateStepApiModel] | Collection of workitem steps | 
**preconditionSteps** | [CreateStepApiModel] | Collection of workitem precondition steps | 
**postconditionSteps** | [CreateStepApiModel] | Collection of workitem postcondition steps | 
**duration** | **Int** | WorkItem duration in milliseconds, must be 0 for shared steps and greater than 0 for the other types of work items | 
**attributes** | **[String: AnyCodable]** | Key value pair of custom workitem attributes | 
**tags** | [TagModel] | Collection of workitem tags | 
**attachments** | [AssignAttachmentApiModel] | Collection of workitem attachments | [optional] 
**iterations** | [AssignIterationApiModel] | Collection of parameter sets | [optional] 
**links** | [CreateLinkApiModel] | Collection of workitem links | 
**name** | **String** | Workitem name | 
**projectId** | **UUID** | Project unique identifier - used to link workitem with project | 
**sectionId** | **UUID** | Internal identifier of section where workitem is located | 
**autoTests** | [AutoTestIdModel] | Collection of autotest internal ids | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


