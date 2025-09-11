# WorkItemApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique identifier of the work item | 
**globalId** | **Int64** | Global identifier of the work item | 
**versionId** | **UUID** | Version identifier of the work item | 
**versionNumber** | **Int** | Version number of the work item | 
**projectId** | **UUID** | Unique identifier of the project | 
**sectionId** | **UUID** | Unique identifier of the section within a project | 
**name** | **String** | Name of the work item | 
**description** | **String** | Description of the work item | [optional] 
**sourceType** | [**WorkItemSourceTypeApiModel**](WorkItemSourceTypeApiModel.md) | Source type of the work item | 
**entityTypeName** | [**WorkItemEntityTypeApiModel**](WorkItemEntityTypeApiModel.md) | Type of entity associated with this work item | 
**duration** | **Int** | Duration of the work item in milliseconds | 
**medianDuration** | **Int64** | Median duration of the work item in milliseconds | 
**state** | [**WorkItemStateApiModel**](WorkItemStateApiModel.md) | State of the work item | 
**priority** | [**WorkItemPriorityApiModel**](WorkItemPriorityApiModel.md) | Priority level of the work item | 
**isAutomated** | **Bool** |  | 
**attributes** | **[String: AnyCodable]** | Set of custom attributes associated with the work item | 
**tags** | [TagModel] | Set of tags applied to the work item | 
**sectionPreconditionSteps** | [StepModel] | Set of section precondition steps that need to be executed before starting the work item steps | 
**sectionPostconditionSteps** | [StepModel] | Set of section postcondition steps that need to be executed after completing the work item steps | 
**preconditionSteps** | [StepModel] | Set of precondition steps that need to be executed before starting the main steps | 
**steps** | [StepModel] | Main steps or actions defined for the work item | 
**postconditionSteps** | [StepModel] | Set of postcondition steps that are executed after completing the main steps | 
**iterations** | [IterationModel] | Associated iterations linked to the work item | 
**autoTests** | [AutoTestModel] | Automated tests associated with the work item | 
**attachments** | [AttachmentModel] | Files attached to the work item | 
**links** | [LinkModel] | Set of links related to the work item | 
**createdDate** | **Date** | Creation date of the work item | 
**createdById** | **UUID** | Unique identifier of the work item creator | 
**modifiedDate** | **Date** | Modification date of the work item | [optional] 
**modifiedById** | **UUID** | Unique identifier of the work item modifier | [optional] 
**isDeleted** | **Bool** | Indicates whether the work item is marked as deleted | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


