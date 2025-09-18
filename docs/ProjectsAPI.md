# ProjectsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGlobaAttributesToProject**](ProjectsAPI.md#addglobaattributestoproject) | **POST** /api/v2/projects/{id}/globalAttributes | Add global attributes to project
[**apiV2ProjectsIdDelete**](ProjectsAPI.md#apiv2projectsiddelete) | **DELETE** /api/v2/projects/{id} | Archive project
[**apiV2ProjectsIdFailureClassesGet**](ProjectsAPI.md#apiv2projectsidfailureclassesget) | **GET** /api/v2/projects/{id}/failureClasses | Get failure classes
[**apiV2ProjectsIdFavoritePut**](ProjectsAPI.md#apiv2projectsidfavoriteput) | **PUT** /api/v2/projects/{id}/favorite | Mark Project as favorite
[**apiV2ProjectsIdFiltersGet**](ProjectsAPI.md#apiv2projectsidfiltersget) | **GET** /api/v2/projects/{id}/filters | Get Project filters
[**apiV2ProjectsIdPatch**](ProjectsAPI.md#apiv2projectsidpatch) | **PATCH** /api/v2/projects/{id} | Patch project
[**apiV2ProjectsIdPurgePost**](ProjectsAPI.md#apiv2projectsidpurgepost) | **POST** /api/v2/projects/{id}/purge | Purge the project
[**apiV2ProjectsIdRestorePost**](ProjectsAPI.md#apiv2projectsidrestorepost) | **POST** /api/v2/projects/{id}/restore | Restore archived project
[**apiV2ProjectsIdTestPlansAttributeAttributeIdDelete**](ProjectsAPI.md#apiv2projectsidtestplansattributeattributeiddelete) | **DELETE** /api/v2/projects/{id}/testPlans/attribute/{attributeId} | Delete attribute from project&#39;s test plans
[**apiV2ProjectsIdTestPlansAttributePut**](ProjectsAPI.md#apiv2projectsidtestplansattributeput) | **PUT** /api/v2/projects/{id}/testPlans/attribute | Update attribute of project&#39;s test plans
[**apiV2ProjectsIdTestRunsActiveGet**](ProjectsAPI.md#apiv2projectsidtestrunsactiveget) | **GET** /api/v2/projects/{id}/testRuns/active | Get active Project TestRuns
[**apiV2ProjectsIdTestRunsFullGet**](ProjectsAPI.md#apiv2projectsidtestrunsfullget) | **GET** /api/v2/projects/{id}/testRuns/full | Get Project TestRuns full models
[**apiV2ProjectsNameNameExistsGet**](ProjectsAPI.md#apiv2projectsnamenameexistsget) | **GET** /api/v2/projects/name/{name}/exists | 
[**apiV2ProjectsPurgeBulkPost**](ProjectsAPI.md#apiv2projectspurgebulkpost) | **POST** /api/v2/projects/purge/bulk | Purge multiple projects
[**apiV2ProjectsRestoreBulkPost**](ProjectsAPI.md#apiv2projectsrestorebulkpost) | **POST** /api/v2/projects/restore/bulk | Restore multiple projects
[**apiV2ProjectsSearchPost**](ProjectsAPI.md#apiv2projectssearchpost) | **POST** /api/v2/projects/search | Search for projects
[**apiV2ProjectsShortsPost**](ProjectsAPI.md#apiv2projectsshortspost) | **POST** /api/v2/projects/shorts | Get projects short models
[**createProject**](ProjectsAPI.md#createproject) | **POST** /api/v2/projects | Create project
[**deleteProjectAutoTests**](ProjectsAPI.md#deleteprojectautotests) | **DELETE** /api/v2/projects/{id}/autoTests | Delete all autotests from project
[**getAllProjects**](ProjectsAPI.md#getallprojects) | **GET** /api/v2/projects | Get all projects
[**getAutoTestsNamespaces**](ProjectsAPI.md#getautotestsnamespaces) | **GET** /api/v2/projects/{id}/autoTestsNamespaces | Get namespaces of autotests in project
[**getProjectById**](ProjectsAPI.md#getprojectbyid) | **GET** /api/v2/projects/{id} | Get project by ID
[**getTestPlansByProjectId**](ProjectsAPI.md#gettestplansbyprojectid) | **GET** /api/v2/projects/{id}/testPlans | Get project test plans
[**getTestRunsByProjectId**](ProjectsAPI.md#gettestrunsbyprojectid) | **GET** /api/v2/projects/{id}/testRuns | Get project test runs
[**updateProject**](ProjectsAPI.md#updateproject) | **PUT** /api/v2/projects | Update project


# **addGlobaAttributesToProject**
```swift
    open class func addGlobaAttributesToProject(id: String, requestBody: Set<UUID>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add global attributes to project

  Use case    User sets project internal or global identifier and attributes identifiers    System search project    System relates global attributes with project    System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier
let requestBody = [123] // Set<UUID> |  (optional)

// Add global attributes to project
ProjectsAPI.addGlobaAttributesToProject(id: id, requestBody: requestBody) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 
 **requestBody** | [**Set&lt;UUID&gt;**](UUID.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdDelete**
```swift
    open class func apiV2ProjectsIdDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Archive project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the project

// Archive project
ProjectsAPI.apiV2ProjectsIdDelete(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the project | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdFailureClassesGet**
```swift
    open class func apiV2ProjectsIdFailureClassesGet(id: String, isDeleted: Bool? = nil, completion: @escaping (_ data: [AutoTestResultReasonProjectApiResult]?, _ error: Error?) -> Void)
```

Get failure classes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the project
let isDeleted = true // Bool |  (optional)

// Get failure classes
ProjectsAPI.apiV2ProjectsIdFailureClassesGet(id: id, isDeleted: isDeleted) { (response, error) in
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
 **id** | **String** | Unique or global ID of the project | 
 **isDeleted** | **Bool** |  | [optional] 

### Return type

[**[AutoTestResultReasonProjectApiResult]**](AutoTestResultReasonProjectApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdFavoritePut**
```swift
    open class func apiV2ProjectsIdFavoritePut(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mark Project as favorite

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier

// Mark Project as favorite
ProjectsAPI.apiV2ProjectsIdFavoritePut(id: id) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdFiltersGet**
```swift
    open class func apiV2ProjectsIdFiltersGet(id: String, completion: @escaping (_ data: [FilterModel]?, _ error: Error?) -> Void)
```

Get Project filters

  Use case    User sets project internal or global identifier    User runs method execution    System returns project filters

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier

// Get Project filters
ProjectsAPI.apiV2ProjectsIdFiltersGet(id: id) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 

### Return type

[**[FilterModel]**](FilterModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdPatch**
```swift
    open class func apiV2ProjectsIdPatch(id: UUID, operation: [Operation]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch project

See <a href=\"https://www.rfc-editor.org/rfc/rfc6902\" target=\"_blank\">RFC 6902: JavaScript Object Notation (JSON) Patch</a> for details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | Unique or global Id of project
let operation = [Operation(value: 123, path: "path_example", op: "op_example", from: "from_example")] // [Operation] |  (optional)

// Patch project
ProjectsAPI.apiV2ProjectsIdPatch(id: id, operation: operation) { (response, error) in
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
 **id** | **UUID** | Unique or global Id of project | 
 **operation** | [**[Operation]**](Operation.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdPurgePost**
```swift
    open class func apiV2ProjectsIdPurgePost(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Purge the project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the project

// Purge the project
ProjectsAPI.apiV2ProjectsIdPurgePost(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the project | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdRestorePost**
```swift
    open class func apiV2ProjectsIdRestorePost(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore archived project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the project

// Restore archived project
ProjectsAPI.apiV2ProjectsIdRestorePost(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the project | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdTestPlansAttributeAttributeIdDelete**
```swift
    open class func apiV2ProjectsIdTestPlansAttributeAttributeIdDelete(id: String, attributeId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete attribute from project's test plans

  Use case    User sets project internal or global identifier and attribute identifier    User runs method execution    System updates project and delete attribute from project for test plans    System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier
let attributeId = 987 // UUID | 

// Delete attribute from project's test plans
ProjectsAPI.apiV2ProjectsIdTestPlansAttributeAttributeIdDelete(id: id, attributeId: attributeId) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 
 **attributeId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdTestPlansAttributePut**
```swift
    open class func apiV2ProjectsIdTestPlansAttributePut(id: String, customAttributeTestPlanProjectRelationPutModel: CustomAttributeTestPlanProjectRelationPutModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update attribute of project's test plans

  Use case    User sets project internal or global identifier and attribute model    User runs method execution    System updates project and project attribute for test plan    System returns no content response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier
let customAttributeTestPlanProjectRelationPutModel = CustomAttributeTestPlanProjectRelationPutModel(id: 123, isEnabled: false, isRequired: false) // CustomAttributeTestPlanProjectRelationPutModel |  (optional)

// Update attribute of project's test plans
ProjectsAPI.apiV2ProjectsIdTestPlansAttributePut(id: id, customAttributeTestPlanProjectRelationPutModel: customAttributeTestPlanProjectRelationPutModel) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 
 **customAttributeTestPlanProjectRelationPutModel** | [**CustomAttributeTestPlanProjectRelationPutModel**](CustomAttributeTestPlanProjectRelationPutModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdTestRunsActiveGet**
```swift
    open class func apiV2ProjectsIdTestRunsActiveGet(id: String, completion: @escaping (_ data: [PublicTestRunModel]?, _ error: Error?) -> Void)
```

Get active Project TestRuns

  Use case    User sets project internal or global identifier    User runs method execution    System returns active testruns

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier

// Get active Project TestRuns
ProjectsAPI.apiV2ProjectsIdTestRunsActiveGet(id: id) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 

### Return type

[**[PublicTestRunModel]**](PublicTestRunModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsIdTestRunsFullGet**
```swift
    open class func apiV2ProjectsIdTestRunsFullGet(id: String, includeTestResults: Bool? = nil, mustAggregateTestResults: Bool? = nil, notStarted: Bool? = nil, inProgress: Bool? = nil, stopped: Bool? = nil, completed: Bool? = nil, createdDateFrom: Date? = nil, createdDateTo: Date? = nil, testPlanId: UUID? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestRunApiResult]?, _ error: Error?) -> Void)
```

Get Project TestRuns full models

  Use case    User sets project internal or global identifier    User sets query params    User runs method execution    System returns project test runs full models

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier
let includeTestResults = true // Bool |  (optional)
let mustAggregateTestResults = true // Bool |  (optional)
let notStarted = true // Bool |  (optional)
let inProgress = true // Bool |  (optional)
let stopped = true // Bool |  (optional)
let completed = true // Bool |  (optional)
let createdDateFrom = Date() // Date |  (optional)
let createdDateTo = Date() // Date |  (optional)
let testPlanId = 987 // UUID |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get Project TestRuns full models
ProjectsAPI.apiV2ProjectsIdTestRunsFullGet(id: id, includeTestResults: includeTestResults, mustAggregateTestResults: mustAggregateTestResults, notStarted: notStarted, inProgress: inProgress, stopped: stopped, completed: completed, createdDateFrom: createdDateFrom, createdDateTo: createdDateTo, testPlanId: testPlanId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 
 **includeTestResults** | **Bool** |  | [optional] 
 **mustAggregateTestResults** | **Bool** |  | [optional] 
 **notStarted** | **Bool** |  | [optional] 
 **inProgress** | **Bool** |  | [optional] 
 **stopped** | **Bool** |  | [optional] 
 **completed** | **Bool** |  | [optional] 
 **createdDateFrom** | **Date** |  | [optional] 
 **createdDateTo** | **Date** |  | [optional] 
 **testPlanId** | **UUID** |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestRunApiResult]**](TestRunApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsNameNameExistsGet**
```swift
    open class func apiV2ProjectsNameNameExistsGet(name: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let name = "name_example" // String | 

ProjectsAPI.apiV2ProjectsNameNameExistsGet(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

**Bool**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsPurgeBulkPost**
```swift
    open class func apiV2ProjectsPurgeBulkPost(projectSelectModel: ProjectSelectModel? = nil, completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Purge multiple projects

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectSelectModel = ProjectSelectModel(filter: ProjectsFilterModel(name: "name_example", isFavorite: false, isDeleted: false, testCasesCount: Int32RangeSelectorModel(from: 123, to: 123), checklistsCount: nil, sharedStepsCount: nil, autotestsCount: nil, globalIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], types: [ProjectTypeModel()]), extractionModel: ProjectExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // ProjectSelectModel |  (optional)

// Purge multiple projects
ProjectsAPI.apiV2ProjectsPurgeBulkPost(projectSelectModel: projectSelectModel) { (response, error) in
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
 **projectSelectModel** | [**ProjectSelectModel**](ProjectSelectModel.md) |  | [optional] 

### Return type

**Int64**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsRestoreBulkPost**
```swift
    open class func apiV2ProjectsRestoreBulkPost(projectSelectModel: ProjectSelectModel? = nil, completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Restore multiple projects

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let projectSelectModel = ProjectSelectModel(filter: ProjectsFilterModel(name: "name_example", isFavorite: false, isDeleted: false, testCasesCount: Int32RangeSelectorModel(from: 123, to: 123), checklistsCount: nil, sharedStepsCount: nil, autotestsCount: nil, globalIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], types: [ProjectTypeModel()]), extractionModel: ProjectExtractionModel(ids: GuidExtractionModel(include: [123], exclude: [123]))) // ProjectSelectModel |  (optional)

// Restore multiple projects
ProjectsAPI.apiV2ProjectsRestoreBulkPost(projectSelectModel: projectSelectModel) { (response, error) in
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
 **projectSelectModel** | [**ProjectSelectModel**](ProjectSelectModel.md) |  | [optional] 

### Return type

**Int64**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsSearchPost**
```swift
    open class func apiV2ProjectsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, projectsFilterModel: ProjectsFilterModel? = nil, completion: @escaping (_ data: [ProjectShortModel]?, _ error: Error?) -> Void)
```

Search for projects

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let projectsFilterModel = ProjectsFilterModel(name: "name_example", isFavorite: false, isDeleted: false, testCasesCount: Int32RangeSelectorModel(from: 123, to: 123), checklistsCount: nil, sharedStepsCount: nil, autotestsCount: nil, globalIds: [123], createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date()), createdByIds: [123], types: [ProjectTypeModel()]) // ProjectsFilterModel |  (optional)

// Search for projects
ProjectsAPI.apiV2ProjectsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, projectsFilterModel: projectsFilterModel) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **projectsFilterModel** | [**ProjectsFilterModel**](ProjectsFilterModel.md) |  | [optional] 

### Return type

[**[ProjectShortModel]**](ProjectShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2ProjectsShortsPost**
```swift
    open class func apiV2ProjectsShortsPost(getShortProjectsApiModel: GetShortProjectsApiModel? = nil, completion: @escaping (_ data: ProjectShortApiResultReply?, _ error: Error?) -> Void)
```

Get projects short models

  Use case    User sets query params    User runs method execution    System return projects short models

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let getShortProjectsApiModel = GetShortProjectsApiModel(inquiry: Inquiry(filter: CompositeFilter(filters: [123], _operator: LogicalOperator()), order: [Order(field: "field_example", direction: ListSortDirection())], page: Page(skip: 123, take: 123)), permissionName: "permissionName_example", permissionType: "permissionType_example") // GetShortProjectsApiModel |  (optional)

// Get projects short models
ProjectsAPI.apiV2ProjectsShortsPost(getShortProjectsApiModel: getShortProjectsApiModel) { (response, error) in
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
 **getShortProjectsApiModel** | [**GetShortProjectsApiModel**](GetShortProjectsApiModel.md) |  | [optional] 

### Return type

[**ProjectShortApiResultReply**](ProjectShortApiResultReply.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProject**
```swift
    open class func createProject(createProjectApiModel: CreateProjectApiModel? = nil, completion: @escaping (_ data: ProjectModel?, _ error: Error?) -> Void)
```

Create project

  Use case    User sets project parameters (listed in request example) and runs method execution    System creates project    System returns project model (example listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let createProjectApiModel = CreateProjectApiModel(name: "name_example", description: "description_example", isFavorite: false, workflowId: 123) // CreateProjectApiModel |  (optional)

// Create project
ProjectsAPI.createProject(createProjectApiModel: createProjectApiModel) { (response, error) in
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
 **createProjectApiModel** | [**CreateProjectApiModel**](CreateProjectApiModel.md) |  | [optional] 

### Return type

[**ProjectModel**](ProjectModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProjectAutoTests**
```swift
    open class func deleteProjectAutoTests(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all autotests from project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Unique or global ID of the project

// Delete all autotests from project
ProjectsAPI.deleteProjectAutoTests(id: id) { (response, error) in
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
 **id** | **String** | Unique or global ID of the project | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProjects**
```swift
    open class func getAllProjects(isDeleted: Bool? = nil, projectName: String? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [ProjectShortModel]?, _ error: Error?) -> Void)
```

Get all projects

  Use case    [Optional] User sets isDeleted field value    [Optional] If User sets isDeleted field value as true, System search all deleted projects    [Optional] If User sets isDeleted field value as false, System search all projects which are not deleted    If User did not set isDeleted field value, System search all projects    System returns array of all found projects(listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let isDeleted = true // Bool | If result must consist of only actual/deleted parameters (optional)
let projectName = "projectName_example" // String |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get all projects
ProjectsAPI.getAllProjects(isDeleted: isDeleted, projectName: projectName, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **isDeleted** | **Bool** | If result must consist of only actual/deleted parameters | [optional] 
 **projectName** | **String** |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[ProjectShortModel]**](ProjectShortModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoTestsNamespaces**
```swift
    open class func getAutoTestsNamespaces(id: String, completion: @escaping (_ data: [AutoTestNamespaceModel]?, _ error: Error?) -> Void)
```

Get namespaces of autotests in project

  Use case    User sets project internal or global identifier and runs method execution    System search project    System search all autotest related to the project    System returns array of autotest with namespaces and classnames (listed in response)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier

// Get namespaces of autotests in project
ProjectsAPI.getAutoTestsNamespaces(id: id) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 

### Return type

[**[AutoTestNamespaceModel]**](AutoTestNamespaceModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectById**
```swift
    open class func getProjectById(id: String, completion: @escaping (_ data: ProjectModel?, _ error: Error?) -> Void)
```

Get project by ID

  Use case    User sets project internal or global identifier and runs method execution    System search project    System returns project (example listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier

// Get project by ID
ProjectsAPI.getProjectById(id: id) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 

### Return type

[**ProjectModel**](ProjectModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestPlansByProjectId**
```swift
    open class func getTestPlansByProjectId(id: String, isDeleted: Bool? = nil, completion: @escaping (_ data: [TestPlanModel]?, _ error: Error?) -> Void)
```

Get project test plans

  Use case    User sets project internal or global identifier    [Optional] User sets isDeleted field value    User runs method execution    System search project    [Optional] If User sets isDeleted field value as true, System search all deleted test plans related to project    [Optional] If User sets isDeleted field value as false, System search all test plans related to project which are not deleted    [Optional] If User did not set isDeleted field value, System search all v related to project    System returns array of found test plans (listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier
let isDeleted = true // Bool | If result must consist of only actual/archived test plans (optional)

// Get project test plans
ProjectsAPI.getTestPlansByProjectId(id: id, isDeleted: isDeleted) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 
 **isDeleted** | **Bool** | If result must consist of only actual/archived test plans | [optional] 

### Return type

[**[TestPlanModel]**](TestPlanModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTestRunsByProjectId**
```swift
    open class func getTestRunsByProjectId(id: String, notStarted: Bool, inProgress: Bool, stopped: Bool, completed: Bool, createdDateFrom: Date? = nil, createdDateTo: Date? = nil, testPlanId: UUID? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [TestRunV2ApiResult]?, _ error: Error?) -> Void)
```

Get project test runs

  Use case    User sets project internal or global identifier    User runs method execution    System search project    System search all test runs related to project    System returns array of found test runs (listed in response model)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = "id_example" // String | Project internal (UUID) or global (integer) identifier
let notStarted = true // Bool | 
let inProgress = true // Bool | 
let stopped = true // Bool | 
let completed = true // Bool | 
let createdDateFrom = Date() // Date |  (optional)
let createdDateTo = Date() // Date |  (optional)
let testPlanId = 987 // UUID |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get project test runs
ProjectsAPI.getTestRunsByProjectId(id: id, notStarted: notStarted, inProgress: inProgress, stopped: stopped, completed: completed, createdDateFrom: createdDateFrom, createdDateTo: createdDateTo, testPlanId: testPlanId, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **id** | **String** | Project internal (UUID) or global (integer) identifier | 
 **notStarted** | **Bool** |  | 
 **inProgress** | **Bool** |  | 
 **stopped** | **Bool** |  | 
 **completed** | **Bool** |  | 
 **createdDateFrom** | **Date** |  | [optional] 
 **createdDateTo** | **Date** |  | [optional] 
 **testPlanId** | **UUID** |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[TestRunV2ApiResult]**](TestRunV2ApiResult.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**
```swift
    open class func updateProject(updateProjectApiModel: UpdateProjectApiModel? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update project

  Use case    User sets project parameters (listed in request example) and runs method execution    System updates project    System returns updated project model (example listed in response parameters)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let updateProjectApiModel = UpdateProjectApiModel(id: 123, name: "name_example", description: "description_example", isFavorite: false, workflowId: 123) // UpdateProjectApiModel |  (optional)

// Update project
ProjectsAPI.updateProject(updateProjectApiModel: updateProjectApiModel) { (response, error) in
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
 **updateProjectApiModel** | [**UpdateProjectApiModel**](UpdateProjectApiModel.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

