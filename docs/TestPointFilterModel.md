# TestPointFilterModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**testPlanIds** | **[UUID]** | Specifies a test point test plan IDS to search for | [optional] 
**testSuiteIds** | **[UUID]** | Specifies a test point test suite IDs to search for | [optional] 
**workItemGlobalIds** | **[Int64]** | Specifies a test point work item global IDs to search for | [optional] 
**workItemMedianDuration** | [**Int64RangeSelectorModel**](Int64RangeSelectorModel.md) | Specifies a test point work item median duration range to search for | [optional] 
**workItemIsDeleted** | **Bool** | Specifies a test point work item is deleted flag to search for | [optional] 
**statuses** | [TestPointStatus] | Specifies a test point statuses to search for | [optional] 
**statusCodes** | **[String]** | Specifies a test point status codes to search for | [optional] 
**priorities** | [WorkItemPriorityModel] | Specifies a test point priorities to search for | [optional] 
**sourceTypes** | [WorkItemSourceTypeModel] | Specifies a test point source types to search for | [optional] 
**isAutomated** | **Bool** | Specifies a test point automation status to search for | [optional] 
**name** | **String** | Specifies a test point name to search for | [optional] 
**configurationIds** | **[UUID]** | Specifies a test point configuration IDs to search for | [optional] 
**testerIds** | **[UUID]** | Specifies a test point assigned user IDs to search for | [optional] 
**duration** | [**Int64RangeSelectorModel**](Int64RangeSelectorModel.md) | Specifies a test point range of duration to search for | [optional] 
**sectionIds** | **[UUID]** | Specifies a test point work item section IDs to search for | [optional] 
**createdDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test point range of creation date to search for | [optional] 
**createdByIds** | **[UUID]** | Specifies a test point creator IDs to search for | [optional] 
**modifiedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a test point range of last modification date to search for | [optional] 
**modifiedByIds** | **[UUID]** | Specifies a test point last editor IDs to search for | [optional] 
**tags** | **[String]** | Specifies a test point tags to search for | [optional] 
**attributes** | [String: Set<String>] | Specifies a test point attributes to search for | [optional] 
**workItemCreatedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a work item range of creation date to search for | [optional] 
**workItemCreatedByIds** | **[UUID]** | Specifies a work item creator IDs to search for | [optional] 
**workItemModifiedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a work item range of last modification date to search for | [optional] 
**workItemModifiedByIds** | **[UUID]** | Specifies a work item last editor IDs to search for | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


