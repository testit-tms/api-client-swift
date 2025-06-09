# SharedStepReferenceModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**globalId** | **Int64** |  | 
**name** | **String** |  | 
**entityTypeName** | **String** |  | 
**hasThisSharedStepAsStep** | **Bool** |  | 
**hasThisSharedStepAsPrecondition** | **Bool** |  | 
**hasThisSharedStepAsPostcondition** | **Bool** |  | 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**createdDate** | **Date** |  | [optional] 
**modifiedDate** | **Date** |  | [optional] 
**state** | **String** |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**sourceType** | [**WorkItemSourceTypeModel**](WorkItemSourceTypeModel.md) |  | 
**isDeleted** | **Bool** |  | 
**versionId** | **UUID** | used for versioning changes in workitem | 
**isAutomated** | **Bool** |  | 
**sectionId** | **UUID** |  | 
**tags** | [TagModel] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


