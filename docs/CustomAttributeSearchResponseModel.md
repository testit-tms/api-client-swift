# CustomAttributeSearchResponseModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workItemUsage** | [ProjectShortestModel] |  | 
**testPlanUsage** | [ProjectShortestModel] |  | 
**id** | **UUID** | Unique ID of the attribute. | 
**code** | **String** | Optional code identifier for the attribute. | [optional] 
**type** | [**CustomAttributeTypesEnum**](CustomAttributeTypesEnum.md) | Type of the attribute. | 
**options** | [CustomAttributeOptionModel] | Collection of the attribute options. | 
**targets** | **[String]** | Collection of the attribute targets.   Defines where the attribute can be used (e.g., TestCases, AutoTestCases, TestPlans). | 
**isReadOnly** | **Bool** | Indicates if the attribute is read-only. | 
**isDeleted** | **Bool** | Indicates if the attribute is deleted. | 
**isSystem** | **Bool** | Indicates if the attribute is system. | 
**name** | **String** | Name of the attribute | 
**isEnabled** | **Bool** | Indicates if the attribute is enabled | 
**isRequired** | **Bool** | Indicates if the attribute value is mandatory to specify | 
**isGlobal** | **Bool** | Indicates if the attribute is available across all projects | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


