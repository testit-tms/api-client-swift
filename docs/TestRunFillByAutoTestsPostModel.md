# TestRunFillByAutoTestsPostModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Specifies the GUID of the project, in which a test run will be created. | 
**name** | **String** | Specifies the name of the test run. | [optional] 
**configurationIds** | **[UUID]** | Specifies the configuration GUIDs, from which test points are created. You can specify several GUIDs. | 
**autoTestExternalIds** | **[String]** | Specifies the external ID of the autotest. You can specify several IDs. | 
**description** | **String** | Specifies the test run description. | [optional] 
**launchSource** | **String** | Specifies the test run launch source. | [optional] 
**attachments** | [AttachmentPutModel] | Collection of attachment ids to relate to the test run | [optional] 
**links** | [LinkPostModel] | Collection of links to relate to the test run | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


