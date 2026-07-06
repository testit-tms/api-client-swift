# CreateWorkItemApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Unique identifier of the project | 
**sectionId** | **UUID** | Unique identifier of the section within a project | [optional] 
**name** | **String** | Name of the work item | 
**description** | **String** | Description of the work item | [optional] 
**entityTypeName** | [**WorkItemEntityTypeApiModel**](WorkItemEntityTypeApiModel.md) | Type of entity associated with this work item | 
**duration** | **Int64** | Duration of the work item in milliseconds | 
**state** | [**WorkItemStateApiModel**](WorkItemStateApiModel.md) | Current state of the work item | 
**priority** | [**WorkItemPriorityApiModel**](WorkItemPriorityApiModel.md) | Priority level assigned to the work item | 
**attributes** | **[String: AnyCodable]** | Set of custom attributes associated with the work item | [optional] 
**tags** | [TagModel] | Set of tags applied to the work item | [optional] 
**preconditionSteps** | [CreateStepApiModel] | Set of precondition steps that must be executed before the main steps | [optional] 
**steps** | [CreateStepApiModel] | Set of main steps or actions defined for the work item | [optional] 
**postconditionSteps** | [CreateStepApiModel] | Set of postcondition steps that are executed after completing the main steps | [optional] 
**iterations** | [AssignIterationApiModel] | Set of iterations associated with the work item | [optional] 
**autoTests** | [AutoTestIdModel] | Set of automated tests linked to the work item | [optional] 
**attachments** | [AssignAttachmentApiModel] | Set of files attached to the work item | [optional] 
**links** | [CreateLinkApiModel] | Set of links related to the work item | [optional] 
**parameters** | [WorkItemParameterKeyApiModel] | Set of parameter keys associated with the work item | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


