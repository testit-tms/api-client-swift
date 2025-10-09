# ProjectWorkItemsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsProjectIdWorkItemsSearchGroupedPost**](ProjectWorkItemsAPI.md#apiv2projectsprojectidworkitemssearchgroupedpost) | **POST** /api/v2/projects/{projectId}/workItems/search/grouped | Search for work items and group results by attribute
[**apiV2ProjectsProjectIdWorkItemsSearchIdPost**](ProjectWorkItemsAPI.md#apiv2projectsprojectidworkitemssearchidpost) | **POST** /api/v2/projects/{projectId}/workItems/search/id | Search for work items and extract IDs only
[**apiV2ProjectsProjectIdWorkItemsSearchPost**](ProjectWorkItemsAPI.md#apiv2projectsprojectidworkitemssearchpost) | **POST** /api/v2/projects/{projectId}/workItems/search | Search for work items
[**apiV2ProjectsProjectIdWorkItemsSearchWorkItemIdIndexPost**](ProjectWorkItemsAPI.md#apiv2projectsprojectidworkitemssearchworkitemidindexpost) | **POST** /api/v2/projects/{projectId}/workItems/search/{workItemId}/index | Get work item index (position) in a collection by its id.
[**apiV2ProjectsProjectIdWorkItemsTagsGet**](ProjectWorkItemsAPI.md#apiv2projectsprojectidworkitemstagsget) | **GET** /api/v2/projects/{projectId}/workItems/tags | Get WorkItems Tags
[**getWorkItemsByProjectId**](ProjectWorkItemsAPI.md#getworkitemsbyprojectid) | **GET** /api/v2/projects/{projectId}/workItems | Get project work items


# **apiV2ProjectsProjectIdWorkItemsSearchGroupedPost**
```swift
    open class func apiV2ProjectsProjectIdWorkItemsSearchGroupedPost(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, workItemGroupGetModel: WorkItemGroupGetModel? = nil, completion: @escaping (_ data: [WorkItemGroupModel]?, _ error: Error?) -> Void)
```

Search for work items and group results by attribute

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global ID of the project
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let workItemGroupGetModel = WorkItemGroupGetModel(selectModel: WorkItemLocalSelectModel(filter: WorkItemLocalFilterModel(name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]), extractionModel: WorkItemExtractionModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)), groupType: WorkItemGroupType(), customAttributeId: 123) // WorkItemGroupGetModel |  (optional)

// Search for work items and group results by attribute
ProjectWorkItemsAPI.apiV2ProjectsProjectIdWorkItemsSearchGroupedPost(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, workItemGroupGetModel: workItemGroupGetModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** | Unique or global ID of the project | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **workItemGroupGetModel** | [**WorkItemGroupGetModel**](WorkItemGroupGetModel.md) |  | [optional] 

### Return type

[**[WorkItemGroupModel]**](WorkItemGroupModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdWorkItemsSearchIdPost**
```swift
    open class func apiV2ProjectsProjectIdWorkItemsSearchIdPost(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, workItemSelectModel: WorkItemSelectModel? = nil, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

Search for work items and extract IDs only

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global ID of the project
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let workItemSelectModel = WorkItemSelectModel(filter: WorkItemFilterModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], externalMetadata: WorkItemExternalMetadataFilterModel(ids: [WorkItemExternalMetadataFieldFilterModel(value: "value_example", externalServiceId: 123)], types: [nil], priorities: [nil], statuses: [nil], assignees: [nil]), projectIds: [123], links: WorkItemLinkFilterModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123]), extractionModel: WorkItemExtractionModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)) // WorkItemSelectModel |  (optional)

// Search for work items and extract IDs only
ProjectWorkItemsAPI.apiV2ProjectsProjectIdWorkItemsSearchIdPost(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, workItemSelectModel: workItemSelectModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** | Unique or global ID of the project | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **workItemSelectModel** | [**WorkItemSelectModel**](WorkItemSelectModel.md) |  | [optional] 

### Return type

**[UUID]**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdWorkItemsSearchPost**
```swift
    open class func apiV2ProjectsProjectIdWorkItemsSearchPost(projectId: String, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, workItemSelectApiModel: WorkItemSelectApiModel? = nil, completion: @escaping (_ data: [WorkItemShortApiResult]?, _ error: Error?) -> Void)
```

Search for work items

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Unique or global ID of the project
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let workItemSelectApiModel = WorkItemSelectApiModel(filter: WorkItemFilterApiModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123], links: WorkItemLinkFilterApiModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), externalMetadata: WorkItemExternalMetadataFilterApiModel(ids: [WorkItemExternalMetadataFieldFilterApiModel(value: "value_example", externalServiceId: 123)], types: [nil], priorities: [nil], statuses: [nil], assignees: [nil])), extractionModel: WorkItemExtractionApiModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)) // WorkItemSelectApiModel |  (optional)

// Search for work items
ProjectWorkItemsAPI.apiV2ProjectsProjectIdWorkItemsSearchPost(projectId: projectId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, workItemSelectApiModel: workItemSelectApiModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** | Unique or global ID of the project | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **workItemSelectApiModel** | [**WorkItemSelectApiModel**](WorkItemSelectApiModel.md) |  | [optional] 

### Return type

[**[WorkItemShortApiResult]**](WorkItemShortApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdWorkItemsSearchWorkItemIdIndexPost**
```swift
    open class func apiV2ProjectsProjectIdWorkItemsSearchWorkItemIdIndexPost(projectId: String, workItemId: UUID, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, workItemSelectApiModel: WorkItemSelectApiModel? = nil, completion: @escaping (_ data: WorkItemIndexApiResult?, _ error: Error?) -> Void)
```

Get work item index (position) in a collection by its id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | 
let workItemId = 987 // UUID | 
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let workItemSelectApiModel = WorkItemSelectApiModel(filter: WorkItemFilterApiModel(nameOrId: "nameOrId_example", includeIds: [123], excludeIds: [123], projectIds: [123], name: "name_example", ids: [123], globalIds: [123], attributes: "TODO", isDeleted: false, sectionIds: [123], createdByIds: [123], modifiedByIds: [123], states: [WorkItemStates()], priorities: [WorkItemPriorityModel()], sourceTypes: [WorkItemSourceTypeModel()], types: [WorkItemEntityTypes()], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), modifiedDate: nil, duration: Int32RangeSelectorModel(from: 123, to: 123), medianDuration: Int64RangeSelectorModel(from: 123, to: 123), isAutomated: false, tags: ["tags_example"], autoTestIds: [123], workItemVersionIds: [123], links: WorkItemLinkFilterApiModel(types: [LinkType()], title: "title_example", urls: ["urls_example"], onlyWithoutLinks: false), externalMetadata: WorkItemExternalMetadataFilterApiModel(ids: [WorkItemExternalMetadataFieldFilterApiModel(value: "value_example", externalServiceId: 123)], types: [nil], priorities: [nil], statuses: [nil], assignees: [nil])), extractionModel: WorkItemExtractionApiModel(projectIds: GuidExtractionModel(include: [123], exclude: [123]), ids: nil, sectionIds: nil)) // WorkItemSelectApiModel |  (optional)

// Get work item index (position) in a collection by its id.
ProjectWorkItemsAPI.apiV2ProjectsProjectIdWorkItemsSearchWorkItemIdIndexPost(projectId: projectId, workItemId: workItemId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, workItemSelectApiModel: workItemSelectApiModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** |  | 
 **workItemId** | **UUID** |  | 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **workItemSelectApiModel** | [**WorkItemSelectApiModel**](WorkItemSelectApiModel.md) |  | [optional] 

### Return type

[**WorkItemIndexApiResult**](WorkItemIndexApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsProjectIdWorkItemsTagsGet**
```swift
    open class func apiV2ProjectsProjectIdWorkItemsTagsGet(projectId: UUID, isDeleted: Bool? = nil, completion: @escaping (_ data: [TagShortApiResult]?, _ error: Error?) -> Void)
```

Get WorkItems Tags

 Use case  User sets project internal identifier  User runs method execution  System returns work items tags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = 987 // UUID | Project internal (UUID) identifier
let isDeleted = true // Bool |  (optional)

// Get WorkItems Tags
ProjectWorkItemsAPI.apiV2ProjectsProjectIdWorkItemsTagsGet(projectId: projectId, isDeleted: isDeleted) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **UUID** | Project internal (UUID) identifier | 
 **isDeleted** | **Bool** |  | [optional] 

### Return type

[**[TagShortApiResult]**](TagShortApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkItemsByProjectId**
```swift
    open class func getWorkItemsByProjectId(projectId: String, isDeleted: Bool? = nil, tagNames: [String]? = nil, includeIterations: Bool? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [WorkItemShortModel]?, _ error: Error?) -> Void)
```

Get project work items

 Use case  User sets project internal or global identifier  [Optional] User sets isDeleted field value  User runs method execution  System search project  [Optional] If User sets isDeleted field value as true, System search all deleted workitems related to project  [Optional] If User sets isDeleted field value as false, System search all workitems related to project which are not deleted  If User did not set isDeleted field value, System search all  workitems related to project  System returns array of found workitems (listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectId = "projectId_example" // String | Project internal (UUID) or global (integer) identifier
let isDeleted = true // Bool | If result must consist of only actual/deleted work items (optional) (default to false)
let tagNames = ["inner_example"] // [String] | List of tags to filter by (optional)
let includeIterations = true // Bool |  (optional) (default to true)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get project work items
ProjectWorkItemsAPI.getWorkItemsByProjectId(projectId: projectId, isDeleted: isDeleted, tagNames: tagNames, includeIterations: includeIterations, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** | Project internal (UUID) or global (integer) identifier | 
 **isDeleted** | **Bool** | If result must consist of only actual/deleted work items | [optional] [default to false]
 **tagNames** | [**[String]**](String.md) | List of tags to filter by | [optional] 
 **includeIterations** | **Bool** |  | [optional] [default to true]
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[WorkItemShortModel]**](WorkItemShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

