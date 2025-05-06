# TestRunApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique ID of the entity | 
**isDeleted** | **Bool** | Indicates if the entity is deleted | 
**startedDate** | **Date** |  | [optional] 
**completedDate** | **Date** |  | [optional] 
**build** | **String** |  | 
**description** | **String** |  | [optional] 
**stateName** | [**TestRunState**](TestRunState.md) |  | 
**status** | [**TestStatusApiResult**](TestStatusApiResult.md) |  | 
**projectId** | **UUID** |  | 
**testPlanId** | **UUID** |  | [optional] 
**runByUserId** | **UUID** |  | [optional] 
**stoppedByUserId** | **UUID** |  | [optional] 
**name** | **String** |  | [optional] 
**launchSource** | **String** |  | [optional] 
**autoTests** | [AutoTestApiResult] |  | 
**autoTestsCount** | **Int** |  | 
**testSuiteIds** | **[UUID]** |  | 
**isAutomated** | **Bool** |  | 
**analytic** | [**TestRunAnalyticApiResult**](TestRunAnalyticApiResult.md) |  | 
**testResults** | [TestResultApiResult] |  | 
**testPlan** | [**TestPlanApiResult**](TestPlanApiResult.md) |  | [optional] 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**createdByUserName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


