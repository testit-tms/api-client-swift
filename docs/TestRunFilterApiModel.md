# TestRunFilterApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectIds** | **[UUID]** | Specifies a test run project IDs to search for | [optional] 
**name** | **String** | Specifies test run name | [optional] 
**states** | [TestRunState] | Specifies a test run states to search for | [optional] 
**statusCodes** | **[String]** | Specifies a test run status codes to search for | [optional] 
**createdDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test run range of created date to search for | [optional] 
**startedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test run range of started date to search for | [optional] 
**createdByIds** | **[UUID]** | Specifies a test run creator IDs to search for | [optional] 
**modifiedByIds** | **[UUID]** | Specifies a test run last editor IDs to search for | [optional] 
**isDeleted** | **Bool** | Specifies a test run deleted status to search for | [optional] 
**autoTestsCount** | [**Int32RangeSelectorModel**](Int32RangeSelectorModel.md) | Number of autoTests run in the test run | [optional] 
**testResultsOutcome** | [TestResultOutcome] | Specifies test results outcomes | [optional] 
**testResultsStatusCodes** | **[String]** | Specifies test results status codes | [optional] 
**failureCategory** | [FailureCategory] | Specifies failure categories | [optional] 
**completedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test run range of completed date to search for | [optional] 
**testResultsConfigurationIds** | **[UUID]** | Specifies a test result configuration IDs to search for | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


