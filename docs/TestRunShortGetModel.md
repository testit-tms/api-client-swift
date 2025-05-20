# TestRunShortGetModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique ID of the test run | 
**name** | **String** | Name of the test run | 
**state** | [**TestRunState**](TestRunState.md) | Current state of the test run | 
**createdDate** | **Date** | Date when the test run was created | 
**startedDate** | **Date** | Date when the test run was started | [optional] 
**completedDate** | **Date** | Completion date of the test run | [optional] 
**createdById** | **UUID** | Unique ID of user who created the test run | 
**modifiedById** | **UUID** | Unique ID of user who modified the test run last time | [optional] 
**isDeleted** | **Bool** | Is the test run is deleted | 
**autoTestsCount** | **Int** | Number of AutoTests run in the test run | 
**statistics** | [**TestResultsStatisticsGetModel**](TestResultsStatisticsGetModel.md) | Statistics of the test run | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


