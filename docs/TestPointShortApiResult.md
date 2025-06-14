# TestPointShortApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Test point unique internal identifier | 
**isDeleted** | **Bool** | Indicates if the entity is deleted | 
**testerId** | **UUID** | Tester who is responded for the test unique internal identifier | [optional] 
**workItemId** | **UUID** | Workitem to which test point relates unique identifier | [optional] 
**configurationId** | **UUID** | Configuration to which test point relates unique identifier | [optional] 
**status** | **String** | Test point status  Applies one of these values: Blocked, NoResults, Failed, Passed | [optional] 
**statusModel** | [**TestStatusApiResult**](TestStatusApiResult.md) | Test point status | 
**lastTestResultId** | **UUID** | Last test result unique identifier | [optional] 
**iterationId** | **UUID** | Iteration unique identifier | 
**workItemMedianDuration** | **Int64** | Median duration of work item the test point represents | [optional] 
**testSuiteId** | **UUID** | Test suite to which test point relates unique identifier | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


