# GenerateWorkItemPreviewsApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalServiceId** | **UUID** | The ID of the external AI service to be used for generation. | 
**taskKey** | **String** | The key of the issue in an issue tracker (e.g., JIRA-123). | [optional] 
**issueKey** | **String** | The key of the issue in an issue tracker (e.g., JIRA-123). | [optional] 
**userContext** | **String** | Additional user context or description of the issue if no issue key is provided. | [optional] 
**temperature** | **Float** | Controls randomness of the AI model output. | 
**previewLimit** | **Int** | Number of work item previews to generate. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


