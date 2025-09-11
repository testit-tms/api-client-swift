# AutoTestResultReasonsProjectApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Failure category identifier | 
**name** | **String** | Failure category name | [optional] 
**failureCategory** | [**FailureCategory**](FailureCategory.md) | Category type | 
**createdDate** | **Date** | Failure category creation date | 
**createdById** | **UUID** | Failure category creator identifier | 
**modifiedDate** | **Date** | Failure category last modification date | [optional] 
**modifiedById** | **UUID** | Failure category last modifier identifier | [optional] 
**failureCategoryId** | **Int** | Category type index | 
**regexCount** | **Int** | Regexes count | 
**projects** | [ProjectNameApiResult] | Projects names | 
**projectIds** | **[UUID]** | Projects identifiers | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


