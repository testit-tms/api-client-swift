# AutoTestUpdateApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Autotest unique internal identifier | [optional] 
**externalId** | **String** | External ID of the autotest | 
**externalKey** | **String** | External key of the autotest | [optional] 
**projectId** | **UUID** | Unique ID of the autotest project | 
**name** | **String** | Name of the autotest | 
**namespace** | **String** | Name of the autotest namespace | [optional] 
**classname** | **String** | Name of the autotest class | [optional] 
**steps** | [AutoTestStepApiModel] | Collection of the autotest steps | [optional] 
**setup** | [AutoTestStepApiModel] | Collection of the autotest setup steps | [optional] 
**teardown** | [AutoTestStepApiModel] | Collection of the autotest teardown steps | [optional] 
**title** | **String** | Name of the autotest in autotest&#39;s card | [optional] 
**description** | **String** | Description of the autotest in autotest&#39;s card | [optional] 
**labels** | [LabelApiModel] | Collection of the autotest labels | [optional] 
**links** | [LinkUpdateApiModel] | Collection of the autotest links | [optional] 
**isFlaky** | **Bool** | Indicates if the autotest is marked as flaky | [optional] 
**workItemIdsForLinkWithAutoTest** | **[UUID]** | Specifies the IDs of work items to link your autotest to. You can specify several IDs. | [optional] 
**workItemIds** | **[UUID]** | Specifies the IDs of work items to link your autotest to. You can specify several IDs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


