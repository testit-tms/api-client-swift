# AutoTestProjectSettingsApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Unique ID of the project. | 
**isFlakyAuto** | **Bool** | Indicates if the status \&quot;Flaky/Stable\&quot; sets automatically | 
**flakyStabilityPercentage** | **Int** | Stability percentage for autotest flaky computing | 
**flakyTestRunCount** | **Int** | Last test run count for autotest flaky computing | 
**rerunEnabled** | **Bool** | Auto rerun enabled | 
**rerunAttemptsCount** | **Int** | Auto rerun attempt count | 
**workItemUpdatingEnabled** | **Bool** | Autotest to work item updating enabled | 
**workItemUpdatingFields** | [**WorkItemUpdatingFieldsApiResult**](WorkItemUpdatingFieldsApiResult.md) | Autotest to work item updating fields | 
**archiveOutdatedTestRunsEnabled** | **Bool** | Indicates whether archiving of outdated test runs is enabled for the project. | 
**testRunsArchiveLimitEnabled** | **Bool** | Indicates whether a limit is enforced on the number of archived test runs. | 
**testRunsRetentionPeriodDays** | **Int** |  The retention period in days for test runs. After this period,  outdated test runs may be archived based on project settings | 
**maxActiveTestRunsCount** | **Int** | Maximum number of active test runs to keep. When this limit is exceeded,  older test runs are automatically archived | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


