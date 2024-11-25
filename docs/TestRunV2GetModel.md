# TestRunV2GetModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startedOn** | **Date** |  | [optional] 
**completedOn** | **Date** |  | [optional] 
**stateName** | [**TestRunState**](TestRunState.md) |  | 
**projectId** | **UUID** | This property is used to link test run with project | 
**testPlanId** | **UUID** | This property is used to link test run with test plan | [optional] 
**testResults** | [TestResultV2GetModel] |  | [optional] 
**createdDate** | **Date** |  | 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**createdByUserName** | **String** |  | [optional] 
**attachments** | [AttachmentModel] |  | 
**links** | [LinkModel] |  | 
**customParameters** | **[String: String]** |  | [optional] 
**webhooks** | [NamedEntityModel] |  | 
**id** | **UUID** |  | 
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**launchSource** | **String** | Once launch source is specified it cannot be updated | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


