# CreateTestRunAndFillByWorkItemsApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Specifies the GUID of the project, in which a test run will be created. | 
**testPlanId** | **UUID** | Specifies the GUID of the test plan, within which the test run will be created. | 
**name** | **String** | Specifies the name of the test run. | [optional] 
**description** | **String** | Specifies the test run description. | [optional] 
**launchSource** | **String** | Specifies the test run launch source. | [optional] 
**attachments** | [AssignAttachmentApiModel] | Collection of attachment ids to relate to the test run | [optional] 
**links** | [CreateLinkApiModel] | Collection of links to relate to the test run | [optional] 
**configurationIds** | **[UUID]** | Specifies the configuration GUIDs, from which test points are created. You can specify several GUIDs. | 
**workItemIds** | **[UUID]** | Specifies the work item GUIDs, from which test points are created. You can specify several GUIDs. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


