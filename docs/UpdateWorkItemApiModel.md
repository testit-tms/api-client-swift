# UpdateWorkItemApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique identifier of the work item | 
**sectionId** | **UUID** | Unique identifier of the section within a project | 
**name** | **String** | Name of the work item | 
**description** | **String** | Description of the work item | [optional] 
**duration** | **Int64** | Duration of the work item in milliseconds | 
**state** | [**WorkItemStateApiModel**](WorkItemStateApiModel.md) | Current state of the work item | 
**priority** | [**WorkItemPriorityApiModel**](WorkItemPriorityApiModel.md) | Priority level assigned to the work item | 
**attributes** | **[String: AnyCodable]** | Set of custom attributes associated with the work item | [optional] 
**tags** | [TagModel] | Set of tags applied to the work item | [optional] 
**preconditionSteps** | [UpdateStepApiModel] | Set of precondition steps that must be executed before the main steps | [optional] 
**steps** | [UpdateStepApiModel] | Set of main steps or actions defined for the work item | [optional] 
**postconditionSteps** | [UpdateStepApiModel] | Set of postcondition steps that are executed after completing the main steps | [optional] 
**iterations** | [AssignIterationApiModel] | Set of iterations associated with the work item | [optional] 
**autoTests** | [AutoTestIdModel] | Set of automated tests linked to the work item | [optional] 
**attachments** | [AssignAttachmentApiModel] | Set of files attached to the work item | [optional] 
**links** | [UpdateLinkApiModel] | Set of links related to the work item | [optional] 
**parameters** | [WorkItemParameterKeyApiModel] | Set of parameter keys associated with the work item | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


