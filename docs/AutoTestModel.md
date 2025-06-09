# AutoTestModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**globalId** | **Int64** | Global ID of the autotest | 
**isDeleted** | **Bool** | Indicates if the autotest is deleted | 
**mustBeApproved** | **Bool** | Indicates if the autotest has unapproved changes from linked work items | 
**id** | **UUID** | Unique ID of the autotest | 
**createdDate** | **Date** | Creation date of the autotest | 
**modifiedDate** | **Date** | Last modification date of the project | [optional] 
**createdById** | **UUID** | Unique ID of the project creator | 
**modifiedById** | **UUID** | Unique ID of the project last editor | [optional] 
**lastTestRunId** | **UUID** | Unique ID of the autotest last test run | [optional] 
**lastTestRunName** | **String** | Name of the autotest last test run | [optional] 
**lastTestResultId** | **UUID** | Unique ID of the autotest last test result | [optional] 
**lastTestResultConfiguration** | [**ConfigurationShortModel**](ConfigurationShortModel.md) | Configuration of the autotest last test result | [optional] 
**lastTestResultOutcome** | **String** | Outcome of the autotest last test result | [optional] 
**lastTestResultStatus** | [**TestStatusModel**](TestStatusModel.md) | Status of the autotest last test result | 
**stabilityPercentage** | **Int** | Stability percentage of the autotest | [optional] 
**externalId** | **String** | External ID of the autotest | 
**links** | [LinkPutModel] | Collection of the autotest links | [optional] 
**projectId** | **UUID** | Unique ID of the autotest project | 
**name** | **String** | Name of the autotest | 
**namespace** | **String** | Name of the autotest namespace | [optional] 
**classname** | **String** | Name of the autotest class | [optional] 
**steps** | [AutoTestStepModel] | Collection of the autotest steps | [optional] 
**setup** | [AutoTestStepModel] | Collection of the autotest setup steps | [optional] 
**teardown** | [AutoTestStepModel] | Collection of the autotest teardown steps | [optional] 
**title** | **String** | Name of the autotest in autotest&#39;s card | [optional] 
**description** | **String** | Description of the autotest in autotest&#39;s card | [optional] 
**labels** | [LabelShortModel] | Collection of the autotest labels | [optional] 
**isFlaky** | **Bool** | Indicates if the autotest is marked as flaky | [optional] 
**externalKey** | **String** | External key of the autotest | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


