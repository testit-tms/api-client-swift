# TestPointWithLastResultResponseModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**workItemName** | **String** |  | [optional] 
**isAutomated** | **Bool** |  | 
**testerId** | **UUID** |  | [optional] 
**workItemId** | **UUID** |  | 
**configurationId** | **UUID** |  | [optional] 
**testSuiteId** | **UUID** |  | 
**lastTestResult** | [**LastTestResultModel**](LastTestResultModel.md) |  | [optional] 
**status** | **String** |  | [optional] 
**statusModel** | [**TestStatusApiResult**](TestStatusApiResult.md) |  | [optional] 
**workItemGlobalId** | **Int64** |  | [optional] 
**workItemEntityTypeName** | **String** |  | [optional] 
**sectionId** | **UUID** |  | 
**sectionName** | **String** |  | [optional] 
**createdDate** | **Date** |  | [optional] 
**modifiedDate** | **Date** |  | [optional] 
**createdById** | **UUID** |  | 
**modifiedById** | **UUID** |  | [optional] 
**attributes** | **[String: AnyCodable]** |  | [optional] 
**tagNames** | **[String]** |  | [optional] 
**duration** | **Int** |  | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) |  | 
**testSuiteNameBreadCrumbs** | **[String]** |  | [optional] 
**groupCount** | **Int** |  | [optional] 
**iteration** | [**IterationModel**](IterationModel.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


