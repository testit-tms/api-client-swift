# SectionsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SectionsIdPatch**](SectionsAPI.md#apiv2sectionsidpatch) | **PATCH** /api/v2/sections/{id} | Patch section
[**createSection**](SectionsAPI.md#createsection) | **POST** /api/v2/sections | Create section
[**deleteSection**](SectionsAPI.md#deletesection) | **DELETE** /api/v2/sections/{id} | Delete section
[**getSectionById**](SectionsAPI.md#getsectionbyid) | **GET** /api/v2/sections/{id} | Get section
[**getWorkItemsBySectionId**](SectionsAPI.md#getworkitemsbysectionid) | **GET** /api/v2/sections/{id}/workItems | Get section work items
[**move**](SectionsAPI.md#move) | **POST** /api/v2/sections/move | Move section with all work items into another section
[**rename**](SectionsAPI.md#rename) | **POST** /api/v2/sections/rename | Rename section
[**updateSection**](SectionsAPI.md#updatesection) | **PUT** /api/v2/sections | Update section


# **apiV2SectionsIdPatch**
```swift
    open class func apiV2SectionsIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch section

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Section internal (UUID) identifier
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

// Patch section
SectionsAPI.apiV2SectionsIdPatch(id: id, operation: operation) { (response, error) in
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
 **id** | **UUID** | Section internal (UUID) identifier | 
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSection**
```swift
    open class func createSection(sectionPostModel: SectionPostModel? = nil, completion: @escaping (_ data: SectionWithStepsModel?, _ error: Error?) -> Void)
```

Create section

 Use case   User sets section properties (listed in request example)   User runs method execution   System creates section property values   System returns section (listed in response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sectionPostModel = SectionPostModel(name: "name_example", projectId: 123, parentId: 123, preconditionSteps: [StepPostModel(action: "action_example", expected: "expected_example", testData: "testData_example", comments: "comments_example", workItemId: 123)], postconditionSteps: [nil], attachments: [AttachmentPutModel(id: 123)]) // SectionPostModel |  (optional)

// Create section
SectionsAPI.createSection(sectionPostModel: sectionPostModel) { (response, error) in
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
 **sectionPostModel** | [**SectionPostModel**](SectionPostModel.md) |  | [optional] 

### Return type

[**SectionWithStepsModel**](SectionWithStepsModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSection**
```swift
    open class func deleteSection(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete section

 Use case   User sets section identifier   User runs method execution   System search section by the identifier   System search and delete nested sections of the found section   System search and delete workitems related to the found nested sections   System deletes initial section and related workitem   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Section internal (UUID) identifier

// Delete section
SectionsAPI.deleteSection(id: id) { (response, error) in
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
 **id** | **UUID** | Section internal (UUID) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionById**
```swift
    open class func getSectionById(id: UUID, isDeleted: DeletionState? = nil, completion: @escaping (_ data: SectionWithStepsModel?, _ error: Error?) -> Void)
```

Get section

 Use case   User sets section internal (guid format) identifier   User runs method execution   System search section by the section identifier                 [Optional] If isDeleted flag equals false, deleted work items are not being searched.              If true, deleted work items are also being searched, null for all work items.                 System returns section

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Section internal (UUID) identifier
let isDeleted = DeletionState() // DeletionState |  (optional)

// Get section
SectionsAPI.getSectionById(id: id, isDeleted: isDeleted) { (response, error) in
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
 **id** | **UUID** | Section internal (UUID) identifier | 
 **isDeleted** | [**DeletionState**](.md) |  | [optional] 

### Return type

[**SectionWithStepsModel**](SectionWithStepsModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkItemsBySectionId**
```swift
    open class func getWorkItemsBySectionId(id: UUID, isDeleted: Bool? = nil, tagNames: [String]? = nil, includeIterations: Bool? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [WorkItemShortModel]?, _ error: Error?) -> Void)
```

Get section work items

 Use case   User sets section identifier   User runs method execution   System search section by the identifier   System search work items related to the section                 [Optional] If isDeleted flag equals false, deleted work items are not being searched.              If true, deleted work items are also being searched, null for all work items.                 System returns work item collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Section internal (UUID) identifier
let isDeleted = true // Bool | Requested section is deleted (optional) (default to false)
let tagNames = ["inner_example"] // [String] | List of work item tags (optional)
let includeIterations = true // Bool |  (optional) (default to true)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get section work items
SectionsAPI.getWorkItemsBySectionId(id: id, isDeleted: isDeleted, tagNames: tagNames, includeIterations: includeIterations, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **id** | **UUID** | Section internal (UUID) identifier | 
 **isDeleted** | **Bool** | Requested section is deleted | [optional] [default to false]
 **tagNames** | [**[String]**](String.md) | List of work item tags | [optional] 
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

# **move**
```swift
    open class func move(sectionMoveModel: SectionMoveModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Move section with all work items into another section

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sectionMoveModel = SectionMoveModel(id: 123, oldParentId: 123, parentId: 123, nextSectionId: 123) // SectionMoveModel |  (optional)

// Move section with all work items into another section
SectionsAPI.move(sectionMoveModel: sectionMoveModel) { (response, error) in
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
 **sectionMoveModel** | [**SectionMoveModel**](SectionMoveModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rename**
```swift
    open class func rename(sectionRenameModel: SectionRenameModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Rename section

 Use case   User sets section identifier and new name (listed in request example)   User runs method execution   System search section by the identifier   System updates section name using the new name   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sectionRenameModel = SectionRenameModel(id: 123, name: "name_example") // SectionRenameModel |  (optional)

// Rename section
SectionsAPI.rename(sectionRenameModel: sectionRenameModel) { (response, error) in
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
 **sectionRenameModel** | [**SectionRenameModel**](SectionRenameModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSection**
```swift
    open class func updateSection(sectionPutModel: SectionPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update section

 Use case   User sets section properties (listed in request example)   User runs method execution   System search section by the identifier   System updates section using the property values   System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let sectionPutModel = SectionPutModel(id: 123, name: "name_example", projectId: 123, parentId: 123, preconditionSteps: [StepPutModel(id: 123, action: "action_example", expected: "expected_example", testData: "testData_example", comments: "comments_example", workItemId: 123)], postconditionSteps: [nil], attachments: [AttachmentPutModel(id: 123)]) // SectionPutModel |  (optional)

// Update section
SectionsAPI.updateSection(sectionPutModel: sectionPutModel) { (response, error) in
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
 **sectionPutModel** | [**SectionPutModel**](SectionPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

