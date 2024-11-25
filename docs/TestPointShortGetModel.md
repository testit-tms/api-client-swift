# TestPointShortGetModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique ID of the test point | 
**createdDate** | **Date** | Creation date of the test point | 
**createdById** | **UUID** | Unique ID of the test point creator | 
**modifiedDate** | **Date** | Last modification date of the test point | [optional] 
**modifiedById** | **UUID** | Unique ID of the test point last editor | [optional] 
**testerId** | **UUID** | Unique ID of the test point assigned user | [optional] 
**parameters** | **[String: String]** | Collection of the test point parameters | [optional] 
**attributes** | **[String: AnyCodable]** | Collection of attributes of work item the test point represents | 
**tags** | **[String]** | Collection of the test point tags | 
**links** | **[String]** | Collection of the test point links | 
**testSuiteId** | **UUID** | Unique ID of test suite the test point assigned to | 
**testSuiteName** | **String** | Name of the test suite | 
**workItemId** | **UUID** | Unique ID of work item the test point represents | 
**workItemGlobalId** | **Int64** | Global ID of work item the test point represents | 
**workItemVersionId** | **UUID** | Unique ID of work item version the test point represents | 
**workItemVersionNumber** | **Int** | Number of work item version the test point represents | 
**workItemMedianDuration** | **Int64** | Median duration of work item the test point represents | [optional] 
**status** | [**TestPointStatus**](TestPointStatus.md) | Status of the test point | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) | Priority of the test point | 
**isAutomated** | **Bool** | Indicates if the test point represents an autotest | 
**name** | **String** | Name of the test point | 
**configurationId** | **UUID** | Unique ID of the test point configuration | 
**duration** | **Int** | Duration of the test point | 
**sectionId** | **UUID** | Unique ID of section where work item the test point represents is located | 
**sectionName** | **String** | Name of section where work item the test point represents is located | [optional] 
**projectId** | **UUID** | Unique ID of the test point project | 
**lastTestResult** | [**LastTestResultModel**](LastTestResultModel.md) | Model of the test point last test result | 
**iterationId** | **UUID** | Unique ID of work item iteration the test point represents | 
**workItemState** | [**WorkItemState**](WorkItemState.md) | Work item state | 
**workItemCreatedById** | **UUID** | Unique ID of the work item creator | 
**workItemCreatedDate** | **Date** | Creation date of work item | 
**workItemModifiedById** | **UUID** | Unique ID of the work item last editor | [optional] 
**workItemModifiedDate** | **Date** | Modified date of work item | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


