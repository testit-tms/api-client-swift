# UpdateWorkItemApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Workitem internal identifier | 
**sectionId** | **UUID** | Internal identifier of section where workitem is located | 
**description** | **String** | Workitem description | [optional] 
**state** | [**WorkItemStates**](WorkItemStates.md) |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**sourceType** | [**WorkItemSourceTypeModel**](WorkItemSourceTypeModel.md) |  | [optional] 
**steps** | [UpdateStepApiModel] | Collection of workitem steps | 
**preconditionSteps** | [UpdateStepApiModel] | Collection of workitem precondtion steps | 
**postconditionSteps** | [UpdateStepApiModel] | Collection of workitem postcondition steps | 
**duration** | **Int64** | Workitem duration in milliseconds | 
**attributes** | **[String: AnyCodable]** | Key value pair of custom workitem attributes | 
**tags** | [TagModel] | Collection of workitem tags | 
**links** | [UpdateLinkApiModel] | Collection of workitem links | 
**name** | **String** | Workitem name | 
**attachments** | [AssignAttachmentApiModel] |  | 
**iterations** | [AssignIterationApiModel] | Collection of parameter id sets | [optional] 
**autoTests** | [AutoTestIdModel] | Collection of autotest internal ids | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


