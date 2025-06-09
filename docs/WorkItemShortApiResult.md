# WorkItemShortApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Work Item internal unique identifier | 
**versionId** | **UUID** | Work Item version identifier | 
**versionNumber** | **Int** | Work Item version number | 
**name** | **String** | Work Item name | 
**entityTypeName** | **String** | Work Item type. Possible values: CheckLists, SharedSteps, TestCases | 
**projectId** | **UUID** | Project unique identifier | 
**sectionId** | **UUID** | Identifier of Section where Work Item is located | 
**sectionName** | **String** | Section name of Work Item | 
**isAutomated** | **Bool** | Boolean flag determining whether Work Item is automated | 
**globalId** | **Int64** | Work Item global identifier | 
**duration** | **Int** | Work Item duration | 
**medianDuration** | **Int64** | Work Item median duration | [optional] 
**attributes** | **[String: AnyCodable]** | Work Item attributes | [optional] 
**createdById** | **UUID** | Unique identifier of user who created Work Item | 
**modifiedById** | **UUID** | Unique identifier of user who applied the latest modification of Work Item | [optional] 
**createdDate** | **Date** | Date and time of Work Item creation | [optional] 
**modifiedDate** | **Date** | Date and time of the latest modification of Work Item | [optional] 
**state** | [**WorkItemStates**](WorkItemStates.md) | The current state of Work Item | 
**priority** | [**WorkItemPriorityModel**](WorkItemPriorityModel.md) | Work Item priority level | 
**sourceType** | [**WorkItemSourceTypeModel**](WorkItemSourceTypeModel.md) | Work Item priority level | 
**isDeleted** | **Bool** | Flag determining whether Work Item is deleted | 
**tagNames** | **[String]** | Array of tag names of Work Item | [optional] 
**iterations** | [IterationApiResult] | Set of iterations related to Work Item | 
**links** | [LinkShortApiResult] | Set of links related to Work Item | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


