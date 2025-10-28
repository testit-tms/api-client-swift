# ProjectModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique ID of the project | 
**description** | **String** | Description of the project | [optional] 
**name** | **String** | Name of the project | 
**isFavorite** | **Bool** | Indicates if the project is marked as favorite | 
**attributesScheme** | [CustomAttributeModel] | Collection of the project attributes | [optional] 
**testPlansAttributesScheme** | [CustomAttributeModel] | Collection of the project test plans attributes | [optional] 
**testCasesCount** | **Int** | Number of test cases in the project | [optional] 
**sharedStepsCount** | **Int** | Number of shared steps in the project | [optional] 
**checkListsCount** | **Int** | Number of checklists in the project | [optional] 
**autoTestsCount** | **Int** | Number of autotests in the project | [optional] 
**isDeleted** | **Bool** | Indicates if the project is deleted | 
**createdDate** | **Date** | Creation date of the project | 
**modifiedDate** | **Date** | Last modification date of the project | [optional] 
**createdById** | **UUID** | Unique ID of the project creator | 
**modifiedById** | **UUID** | Unique ID of the project last editor | [optional] 
**globalId** | **Int64** | Global ID of the project | 
**type** | [**ProjectTypeModel**](ProjectTypeModel.md) | Type of the project | 
**isFlakyAuto** | **Bool** | Indicates if the status \&quot;Flaky/Stable\&quot; sets automatically | [optional] 
**workflowId** | **UUID** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


