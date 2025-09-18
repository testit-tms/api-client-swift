# SharedStepReferencesQueryFilterModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of work item | [optional] 
**globalIds** | **Set<Int64>** | Collection of global (integer) identifiers | [optional] 
**sectionIds** | **Set<UUID>** | Collection of section identifiers | [optional] 
**createdByIds** | **Set<UUID>** | Collection of identifiers of users who created work item | [optional] 
**modifiedByIds** | **Set<UUID>** | Collection of identifiers of users who applied last modification to work item | [optional] 
**states** | Set<WorkItemStates> | Collection of states of work item | [optional] 
**priorities** | Set<WorkItemPriorityModel> | Collection of priorities of work item | [optional] 
**entityTypes** | **Set<String>** | Collection of types of work item    Allowed values: &#x60;TestCases&#x60;, &#x60;CheckLists&#x60;, &#x60;SharedSteps&#x60; | [optional] 
**createdDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Date and time of work item creation | [optional] 
**modifiedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Date and time of work item last modification | [optional] 
**isAutomated** | **Bool** | Is result must consist of only manual/automated work items | [optional] 
**tags** | **Set<String>** | Collection of tags | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


