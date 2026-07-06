# CustomAttributeApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique ID of the attribute | 
**options** | [CustomAttributeOptionApiResult] | Collection of the attribute options      Available for attributes of type &#x60;options&#x60; and &#x60;multiple options&#x60; only | 
**type** | [**CustomAttributeType**](CustomAttributeType.md) | Type of the attribute | 
**isDeleted** | **Bool** | Indicates if the attribute is deleted | 
**name** | **String** | Name of the attribute | 
**isEnabled** | **Bool** | Indicates if the attribute is enabled | 
**isRequired** | **Bool** | Indicates if the attribute value is mandatory to specify | 
**isGlobal** | **Bool** | Indicates if the attribute is available across all projects | 
**isSystem** | **Bool** | Indicates if the attribute is system | 
**targets** | **[String]** | Collection of the attribute targets      Defines where the attribute can be used (e.g., TestCases, AutoTestCases, TestPlans) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


