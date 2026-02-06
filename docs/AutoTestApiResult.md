# AutoTestApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**projectId** | **UUID** |  | 
**externalId** | **String** |  | [optional] 
**name** | **String** |  | 
**namespace** | **String** |  | [optional] 
**classname** | **String** |  | [optional] 
**steps** | [AutoTestStepApiResult] |  | [optional] 
**setup** | [AutoTestStepApiResult] |  | [optional] 
**teardown** | [AutoTestStepApiResult] |  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**isFlaky** | **Bool** |  | 
**externalKey** | **String** |  | [optional] 
**globalId** | **Int64** |  | 
**isDeleted** | **Bool** |  | 
**mustBeApproved** | **Bool** |  | 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**lastTestRunId** | **UUID** |  | [optional] 
**lastTestRunName** | **String** |  | [optional] 
**lastTestResultId** | **UUID** |  | [optional] 
**lastTestResultConfiguration** | [**ConfigurationShortApiResult**](ConfigurationShortApiResult.md) |  | [optional] 
**lastTestResultOutcome** | **String** |  | [optional] 
**lastTestResultStatus** | [**TestStatusApiResult**](TestStatusApiResult.md) |  | [optional] 
**stabilityPercentage** | **Int64** |  | [optional] 
**links** | [LinkApiResult] |  | [optional] 
**labels** | [LabelApiResult] |  | [optional] 
**tags** | **[String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


