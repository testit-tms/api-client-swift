# WorkItemModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**versionId** | **UUID** | used for versioning changes in workitem | 
**medianDuration** | **Int64** | used for getting a median duration of all autotests related to this workitem | 
**isDeleted** | **Bool** |  | 
**projectId** | **UUID** |  | 
**entityTypeName** | [**WorkItemEntityTypes**](WorkItemEntityTypes.md) |  | 
**isAutomated** | **Bool** |  | 
**autoTests** | [AutoTestModel] |  | [optional] 
**attachments** | [AttachmentModel] |  | [optional] 
**sectionPreconditionSteps** | [StepModel] |  | [optional] 
**sectionPostconditionSteps** | [StepModel] |  | [optional] 
**versionNumber** | **Int** | used for define chronology of workitem state in each version | 
**iterations** | [IterationModel] |  | [optional] 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**globalId** | **Int64** |  | 
**id** | **UUID** |  | 
**sectionId** | **UUID** |  | 
**description** | **String** |  | [optional] 
**state** | [**WorkItemStates**](WorkItemStates.md) |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**sourceType** | [**WorkItemSourceTypeModel**](WorkItemSourceTypeModel.md) |  | 
**steps** | [StepModel] |  | 
**preconditionSteps** | [StepModel] |  | 
**postconditionSteps** | [StepModel] |  | 
**duration** | **Int** |  | 
**attributes** | **[String: AnyCodable]** |  | 
**tags** | [TagModel] |  | 
**links** | [LinkModel] |  | 
**name** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


