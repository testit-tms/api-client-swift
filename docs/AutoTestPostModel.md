# AutoTestPostModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workItemIdsForLinkWithAutoTest** | **Set<UUID>** | Specifies the IDs of work items to link your autotest to. You can specify several IDs. | [optional] 
**shouldCreateWorkItem** | **Bool** | Creates a test case linked to the autotest. | [optional] 
**attributes** | **[String: AnyCodable]** | Key value pair of custom work item attributes | [optional] 
**externalId** | **String** | External ID of the autotest | 
**links** | [LinkPostModel] | Collection of the autotest links | [optional] 
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


