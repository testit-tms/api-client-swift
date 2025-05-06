# AutoTestResultHistoryApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**testPlanId** | **UUID** |  | [optional] 
**testPlanGlobalId** | **Int64** |  | [optional] 
**testPlanName** | **String** |  | [optional] 
**duration** | **Int64** |  | [optional] 
**testRunId** | **UUID** |  | 
**testRunName** | **String** |  | [optional] 
**configurationId** | **UUID** |  | 
**configurationName** | **String** |  | 
**outcome** | [**AutotestResultOutcome**](AutotestResultOutcome.md) |  | 
**status** | [**TestStatusApiResult**](TestStatusApiResult.md) |  | 
**launchSource** | **String** |  | [optional] 
**rerunCount** | **Int** |  | 
**rerunTestResults** | [RerunTestResultApiResult] |  | 
**createdDate** | **Date** |  | 
**createdById** | **UUID** |  | 
**createdByName** | **String** |  | [optional] 
**modifiedDate** | **Date** |  | [optional] 
**modifiedById** | **UUID** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


