# CreateTestPlanApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tags** | [TagPostModel] | Test plan tag names collection | [optional] 
**name** | **String** | Test plan name | 
**startDate** | **Date** | Date and time of test plan start | [optional] 
**endDate** | **Date** | Date and time of test plan end | [optional] 
**description** | **String** | Test plan description | [optional] 
**build** | **String** | Build of the application on which test plan is executed | [optional] 
**projectId** | **UUID** | Project unique identifier | 
**productName** | **String** | Name of the testing product | [optional] 
**hasAutomaticDurationTimer** | **Bool** | Boolean flag defines if test plan has automatic duration timer | [optional] 
**attributes** | **[String: AnyCodable]** | Key value pair of test plan custom attributes | 
**testSuite** | [**TestSuiteTestPlanApiModel**](TestSuiteTestPlanApiModel.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


