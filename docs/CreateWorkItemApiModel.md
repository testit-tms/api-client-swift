# CreateWorkItemApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Unique identifier of the project | 
**sectionId** | **UUID** | Unique identifier of the section within a project | [optional] 
**name** | **String** | Name of the work item | 
**description** | **String** | Description of the work item | [optional] 
**entityTypeName** | [**WorkItemEntityTypeApiModel**](WorkItemEntityTypeApiModel.md) | Type of entity associated with this work item | 
**duration** | **Int** | Duration of the work item in milliseconds | 
**state** | [**WorkItemStateApiModel**](WorkItemStateApiModel.md) | State of the work item | 
**priority** | [**WorkItemPriorityApiModel**](WorkItemPriorityApiModel.md) | Priority level of the work item | 
**attributes** | **[String: AnyCodable]** | Set of custom attributes associated with the work item | 
**tags** | [TagModel] | Set of tags applied to the work item | 
**preconditionSteps** | [CreateStepApiModel] | Set of precondition steps that need to be executed before starting the main steps | 
**steps** | [CreateStepApiModel] | Main steps or actions defined for the work item | 
**postconditionSteps** | [CreateStepApiModel] | Set of postcondition steps that are executed after completing the main steps | 
**iterations** | [AssignIterationApiModel] | Associated iterations linked to the work item | [optional] 
**autoTests** | [AutoTestIdModel] | Automated tests associated with the work item | [optional] 
**attachments** | [AssignAttachmentApiModel] | Files attached to the work item | [optional] 
**links** | [CreateLinkApiModel] | Set of links related to the work item | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


