# TestResultsFilterApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configurationIds** | **[UUID]** | Specifies a test result configuration IDs to search for | [optional] 
**outcomes** | [TestResultOutcome] | Specifies a test result outcomes to search for | [optional] 
**statusCodes** | **[String]** | Specifies a test result status codes to search for | [optional] 
**failureCategories** | [FailureCategoryModel] | Specifies a test result failure categories to search for | [optional] 
**namespace** | **String** | Specifies a test result namespace to search for | [optional] 
**className** | **String** | Specifies a test result class name to search for | [optional] 
**autoTestGlobalIds** | **[Int64]** | Specifies an autotest global IDs to search results for | [optional] 
**name** | **String** | Specifies an autotest name to search results for | [optional] 
**createdDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test result creation date and time range to search for | [optional] 
**modifiedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test result modified date and time range to search for | [optional] 
**startedOn** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test result started on date and time range to search for | [optional] 
**completedOn** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test result completed on date and time range to search for | [optional] 
**duration** | [**Int64RangeSelectorModel**](Int64RangeSelectorModel.md) | Specifies a test result duration range to search for | [optional] 
**resultReasons** | **[String]** | Specifies result reasons for searching test results | [optional] 
**testRunIds** | **[UUID]** | Specifies a test result test run IDs to search for | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


