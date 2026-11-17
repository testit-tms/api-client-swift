# CreateTestRunAndFillByAutoTestCasesApiModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **UUID** | Specifies the GUID of the project, in which a test run will be created. | 
**filter** | [**CompositeFilter**](CompositeFilter.md) | Specifies the filter for selecting autotests, from which test points are created. | [optional] 
**name** | **String** | Specifies the name of the test run. | [optional] 
**configurationIds** | **[UUID]** | Specifies the configuration GUIDs, from which test points are created. You can specify several GUIDs. | 
**description** | **String** | Specifies the test run description. | [optional] 
**launchSource** | **String** | Specifies the test run launch source. | [optional] 
**option** | [**TestRunLaunchOptionApiModel**](TestRunLaunchOptionApiModel.md) | Specifies the test run launch options. | 
**tags** | **[String]** | Collection of tags to assign to the test run | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


