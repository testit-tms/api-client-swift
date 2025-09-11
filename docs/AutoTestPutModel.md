# AutoTestPutModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Used for search autotest. If value is null or equals Guid mask filled with zeros, search will be executed using ExternalId | [optional] 
**workItemIdsForLinkWithAutoTest** | **Set<UUID>** |  | [optional] 
**workItemIds** | **[UUID]** |  | [optional] 
**externalId** | **String** | External ID of the autotest | 
**links** | [LinkPutModel] | Collection of the autotest links | [optional] 
**projectId** | **UUID** | Unique ID of the autotest project | 
**name** | **String** | Name of the autotest | 
**namespace** | **String** | Name of the autotest namespace | [optional] 
**classname** | **String** | Name of the autotest class | [optional] 
**steps** | [AutoTestStepModel] | Collection of the autotest steps | [optional] 
**setup** | [AutoTestStepModel] | Collection of the autotest setup steps | [optional] 
**teardown** | [AutoTestStepModel] | Collection of the autotest teardown steps | [optional] 
**title** | **String** | Name of the autotest in autotest&#39;s card | [optional] 
**description** | **String** | Description of the autotest in autotest&#39;s card | [optional] 
**labels** | [LabelPostModel] | Collection of the autotest labels | [optional] 
**isFlaky** | **Bool** | Indicates if the autotest is marked as flaky | [optional] 
**externalKey** | **String** | External key of the autotest | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


