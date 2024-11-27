# TestResultShortGetModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Unique ID of the test result | 
**name** | **String** | Name of autotest represented by the test result | 
**autotestGlobalId** | **Int64** | Global ID of autotest represented by the test result | 
**testRunId** | **UUID** | Unique ID of test run where the test result is located | 
**configurationId** | **UUID** | Unique ID of configuration which the test result uses | 
**configurationName** | **String** | Name of configuration which the test result uses | 
**outcome** | **String** | Outcome of the test result | 
**resultReasons** | [AutotestResultReasonSubGetModel] | Collection of result reasons which the test result have | 
**comment** | **String** | Comment to the test result | [optional] 
**date** | **Date** | Date when the test result was completed or started or created | 
**createdDate** | **Date** | Date when the test result has been created | 
**modifiedDate** | **Date** | Date when the test result has been modified | [optional] 
**startedOn** | **Date** | Date when the test result has been started | [optional] 
**completedOn** | **Date** | Date when the test result has been completed | [optional] 
**duration** | **Int64** | Time which it took to run the test | [optional] 
**links** | [LinkSubGetModel] | Collection of links attached to the test result | 
**attachments** | [AttachmentModel] | Collection of files attached to the test result | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


