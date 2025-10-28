# TestSuiteWorkItemsSearchModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tagNames** | **Set<String>** | Collection of tags | [optional] 
**entityTypes** | Set<WorkItemEntityTypes> | Collection of types of work item    Allowed values: &#x60;TestCases&#x60;, &#x60;CheckLists&#x60;, &#x60;SharedSteps&#x60; | [optional] 
**nameOrId** | **String** | Name or identifier (UUID) of work item | [optional] 
**includeIds** | **Set<UUID>** | Collection of identifiers of work items which need to be included in result regardless of filtering | [optional] 
**excludeIds** | **Set<UUID>** | Collection of identifiers of work items which need to be excluded from result regardless of filtering | [optional] 
**externalMetadata** | [**WorkItemExternalMetadataFilterModel**](WorkItemExternalMetadataFilterModel.md) | Specifies work item filter by its external metadata | [optional] 
**projectIds** | **Set<UUID>** | Collection of project identifiers | [optional] 
**links** | [**WorkItemLinkFilterModel**](WorkItemLinkFilterModel.md) | Specifies a work item filter by its links | [optional] 
**name** | **String** | Name of work item | [optional] 
**ids** | **Set<UUID>** | Specifies a work item unique IDs to search for | [optional] 
**globalIds** | **Set<Int64>** | Collection of global (integer) identifiers | [optional] 
**attributes** | [String: Set<String>] | Custom attributes of work item | [optional] 
**isDeleted** | **Bool** | Is result must consist of only actual/deleted work items | [optional] 
**sectionIds** | **Set<UUID>** | Collection of section identifiers | [optional] 
**createdByIds** | **Set<UUID>** | Collection of identifiers of users who created work item | [optional] 
**modifiedByIds** | **Set<UUID>** | Collection of identifiers of users who applied last modification to work item | [optional] 
**states** | Set<WorkItemStates> | Collection of states of work item | [optional] 
**priorities** | Set<WorkItemPriorityModel> | Collection of priorities of work item | [optional] 
**sourceTypes** | Set<WorkItemSourceTypeModel> | Collection of priorities of work item | [optional] 
**types** | Set<WorkItemEntityTypes> | Collection of types of work item | [optional] 
**createdDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a work item range of creation date to search for | [optional] 
**modifiedDate** | [**DateTimeRangeSelectorModel**](DateTimeRangeSelectorModel.md) | Specifies a work item range of last modification date to search for | [optional] 
**duration** | [**Int32RangeSelectorModel**](Int32RangeSelectorModel.md) | Specifies a work item duration range to search for | [optional] 
**medianDuration** | [**Int64RangeSelectorModel**](Int64RangeSelectorModel.md) | Specifies a work item median duration range to search for | [optional] 
**isAutomated** | **Bool** | Is result must consist of only manual/automated work items | [optional] 
**tags** | **Set<String>** | Collection of tags | [optional] 
**excludeTags** | **Set<String>** | Collection of tags to exclude | [optional] 
**autoTestIds** | **Set<UUID>** | Collection of identifiers of linked autotests | [optional] 
**workItemVersionIds** | **[UUID]** | Collection of identifiers work items versions. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


