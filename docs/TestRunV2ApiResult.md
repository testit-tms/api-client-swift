# TestRunV2ApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Test run unique identifier | 
**name** | **String** | Test run name | 
**description** | **String** | Test run description | [optional] 
**launchSource** | **String** | Test run launch source                Once launch source is specified it cannot be updated. | [optional] 
**startedOn** | **Date** | Date and time of test run start | [optional] 
**completedOn** | **Date** | Date and time of test run end | [optional] 
**stateName** | [**TestRunState**](TestRunState.md) | Test run state | 
**status** | [**TestStatusApiResult**](TestStatusApiResult.md) | Test run status | 
**projectId** | **UUID** | Project unique identifier                This property is used to link test run with project. | 
**testPlanId** | **UUID** | Test plan unique identifier                This property is used to link test run with test plan. | [optional] 
**testResults** | [TestResultV2GetModel] | Enumeration of test results related to test run | [optional] 
**createdDate** | **Date** | Date and time of test run creation | 
**modifiedDate** | **Date** | Date and time of last test run  modification | [optional] 
**createdById** | **UUID** | Unique identifier of user who created test run | 
**modifiedById** | **UUID** | Unique identifier of user who applied last test run  modification | [optional] 
**createdByUserName** | **String** | Username of user who created test run | [optional] 
**attachments** | [AttachmentApiResult] | Collection of attachments related to the test run | 
**links** | [LinkApiResult] | Collection of links related to the test run | 
**customParameters** | **[String: String]** | Customers test run parameters | [optional] 
**webhooks** | [NamedEntityApiModel] | Enabled webhooks | 
**runCount** | **Int** | Run count | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


