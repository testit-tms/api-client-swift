# TestPlanModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**TestPlanStatusModel**](TestPlanStatusModel.md) |  | 
**startedOn** | **Date** | Set when test plan is starter (status changed to: In Progress) | [optional] 
**completedOn** | **Date** | set when test plan status is completed (status changed to: Completed) | [optional] 
**createdDate** | **Date** |  | [optional] 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**globalId** | **Int64** | Used for search Test plan | 
**isDeleted** | **Bool** |  | 
**lockedDate** | **Date** |  | [optional] 
**id** | **UUID** |  | 
**lockedById** | **UUID** |  | [optional] 
**tags** | [TagModel] |  | [optional] 
**name** | **String** |  | 
**startDate** | **Date** | Used for analytics | [optional] 
**endDate** | **Date** | Used for analytics | [optional] 
**description** | **String** |  | [optional] 
**build** | **String** |  | [optional] 
**projectId** | **UUID** |  | 
**productName** | **String** |  | [optional] 
**hasAutomaticDurationTimer** | **Bool** |  | [optional] 
**attributes** | **[String: AnyCodable]** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


