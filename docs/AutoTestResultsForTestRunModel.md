# AutoTestResultsForTestRunModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configurationId** | **UUID** | Specifies the GUID of the autotest configuration, which was specified when the test run was created. | 
**links** | [LinkPostModel] | Specifies the links in the autotest. | [optional] 
**failureReasonNames** | [FailureCategoryModel] | Specifies the cause of autotest failure. | [optional] 
**autoTestExternalId** | **String** | Specifies the external ID of the autotest, which was specified when the test run was created. | 
**outcome** | [**AvailableTestResultOutcome**](AvailableTestResultOutcome.md) | Specifies the result of the autotest execution. | [optional] 
**statusCode** | **String** | Specifies the result of the autotest execution. | [optional] 
**message** | **String** | A comment for the result. | [optional] 
**traces** | **String** | An extended comment or a stack trace. | [optional] 
**startedOn** | **Date** | Test run start date. | [optional] 
**completedOn** | **Date** | Test run end date. | [optional] 
**duration** | **Int64** | Expected or actual duration of the test run execution in milliseconds. | [optional] 
**attachments** | [AttachmentPutModel] | Specifies an attachment GUID. Multiple values can be sent. | [optional] 
**parameters** | **[String: String]** | \&quot;&lt;b&gt;parameter&lt;/b&gt;\&quot;: \&quot;&lt;b&gt;value&lt;/b&gt;\&quot; pair with arbitrary custom parameters. Multiple parameters can be sent. | [optional] 
**properties** | **[String: String]** | \&quot;&lt;b&gt;property&lt;/b&gt;\&quot;: \&quot;&lt;b&gt;value&lt;/b&gt;\&quot; pair with arbitrary custom properties. Multiple properties can be sent. | [optional] 
**stepResults** | [AttachmentPutModelAutoTestStepResultsModel] | Specifies the results of individual steps. | [optional] 
**setupResults** | [AttachmentPutModelAutoTestStepResultsModel] | Specifies the results of setup steps. For information on supported values, see the &#x60;stepResults&#x60; parameter above. | [optional] 
**teardownResults** | [AttachmentPutModelAutoTestStepResultsModel] | Specifies the results of the teardown steps. For information on supported values, see the &#x60;stepResults&#x60; parameter above. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


