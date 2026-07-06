# AutoTestProjectSettingsApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isFlakyAuto** | **Bool** | Indicates if the status \&quot;Flaky/Stable\&quot; sets automatically | [optional] [default to false]
**flakyStabilityPercentage** | **Int** | Stability percentage for autotest flaky computing | [optional] [default to 100]
**flakyTestRunCount** | **Int** | Last test run count for autotest flaky computing | [optional] [default to 100]
**rerunEnabled** | **Bool** | Auto rerun enabled | 
**rerunAttemptsCount** | **Int** | Auto rerun attempt count | 
**workItemUpdatingEnabled** | **Bool** | Autotest to work item updating enabled | [optional] [default to false]
**workItemUpdatingFields** | [**WorkItemUpdatingFieldsApiModel**](WorkItemUpdatingFieldsApiModel.md) | Autotest to work item updating fields | 
**archiveOutdatedTestRunsEnabled** | **Bool** | Indicates whether archiving of outdated test runs is enabled for the project. | 
**testRunsArchiveLimitEnabled** | **Bool** | Indicates whether a limit is enforced on the number of archived test runs. | 
**testRunsRetentionPeriodDays** | **Int** |  The retention period in days for test runs. After this period,  outdated test runs may be archived based on project settings | [optional] [default to 180]
**maxActiveTestRunsCount** | **Int** | Maximum number of active test runs to keep. When this limit is exceeded,  older test runs are automatically archived | [optional] [default to 500]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


