# ProjectDetailedFailureCategoryApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Failure category identifier | 
**name** | **String** | Failure category name | [optional] 
**isDeleted** | **Bool** | Indicates if the entity is deleted | 
**failureCategory** | [**FailureCategory**](FailureCategory.md) | Category type | 
**createdDate** | **Date** | Failure category creation date | 
**createdById** | **UUID** | Failure category creator identifier | 
**modifiedDate** | **Date** | Failure category last modification date | [optional] 
**modifiedById** | **UUID** | Failure category last modifier identifier | [optional] 
**failureClassRegexes** | [FailureClassRegexApiResult] | Failure category regexes | 
**projectsCount** | **Int** | Projects relations count | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


