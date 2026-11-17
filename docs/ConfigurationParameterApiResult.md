# ConfigurationParameterApiResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Identifier of the configuration parameter | 
**name** | **String** | Name of the configuration parameter | 
**isDeleted** | **Bool** | Is configuration parameter deleted? | 
**createdDate** | **Date** | Date of configuration parameter creation | 
**createdById** | **UUID** | Identifier of user who created configuration parameter | 
**modifiedDate** | **Date** | Date of configuration parameter modification | 
**modifiedById** | **UUID** | Identifier of user who modified configuration parameter | 
**values** | [ConfigurationParameterValueApiResult] | List of configuration parameter values | 
**projects** | [ProjectNameApiResult] | List of assigned projects | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


