# AttachmentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2AttachmentsIdDelete**](AttachmentsAPI.md#apiv2attachmentsiddelete) | **DELETE** /api/v2/attachments/{id} | Delete attachment file
[**apiV2AttachmentsIdGet**](AttachmentsAPI.md#apiv2attachmentsidget) | **GET** /api/v2/attachments/{id} | Download attachment file
[**apiV2AttachmentsIdMetadataGet**](AttachmentsAPI.md#apiv2attachmentsidmetadataget) | **GET** /api/v2/attachments/{id}/metadata | Get attachment metadata
[**apiV2AttachmentsOccupiedFileStorageSizeGet**](AttachmentsAPI.md#apiv2attachmentsoccupiedfilestoragesizeget) | **GET** /api/v2/attachments/occupiedFileStorageSize | Get size of attachments storage in bytes
[**apiV2AttachmentsPost**](AttachmentsAPI.md#apiv2attachmentspost) | **POST** /api/v2/attachments | Upload new attachment file


# **apiV2AttachmentsIdDelete**
```swift
    open class func apiV2AttachmentsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete attachment file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Delete attachment file
AttachmentsAPI.apiV2AttachmentsIdDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AttachmentsIdGet**
```swift
    open class func apiV2AttachmentsIdGet(id: UUID, width: Int? = nil, height: Int? = nil, resizeType: ImageResizeType? = nil, backgroundColor: String? = nil, preview: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Download attachment file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 
let width = 987 // Int | Width of the result image (optional)
let height = 987 // Int | Height of the result image (optional)
let resizeType = ImageResizeType() // ImageResizeType | Type of resizing to apply to the result image (optional)
let backgroundColor = "backgroundColor_example" // String | Color of the background if the `resizeType` is `AddBackgroundStripes` (optional)
let preview = true // Bool | If image must be converted to a preview (lower quality, no animation) (optional)

// Download attachment file
AttachmentsAPI.apiV2AttachmentsIdGet(id: id, width: width, height: height, resizeType: resizeType, backgroundColor: backgroundColor, preview: preview) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 
 **width** | **Int** | Width of the result image | [optional] 
 **height** | **Int** | Height of the result image | [optional] 
 **resizeType** | [**ImageResizeType**](.md) | Type of resizing to apply to the result image | [optional] 
 **backgroundColor** | **String** | Color of the background if the &#x60;resizeType&#x60; is &#x60;AddBackgroundStripes&#x60; | [optional] 
 **preview** | **Bool** | If image must be converted to a preview (lower quality, no animation) | [optional] 

### Return type

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AttachmentsIdMetadataGet**
```swift
    open class func apiV2AttachmentsIdMetadataGet(id: UUID, completion: @escaping (_ data: AttachmentModel?, _ error: Error?) -> Void)
```

Get attachment metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let id = 987 // UUID | 

// Get attachment metadata
AttachmentsAPI.apiV2AttachmentsIdMetadataGet(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

[**AttachmentModel**](AttachmentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AttachmentsOccupiedFileStorageSizeGet**
```swift
    open class func apiV2AttachmentsOccupiedFileStorageSizeGet(completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Get size of attachments storage in bytes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient


// Get size of attachments storage in bytes
AttachmentsAPI.apiV2AttachmentsOccupiedFileStorageSizeGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Int64**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2AttachmentsPost**
```swift
    open class func apiV2AttachmentsPost(file: URL? = nil, completion: @escaping (_ data: AttachmentModel?, _ error: Error?) -> Void)
```

Upload new attachment file

File size is restricted to 50 MB (52 428 800 bytes)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TestitApiClient

let file = URL(string: "https://example.com")! // URL |  (optional)

// Upload new attachment file
AttachmentsAPI.apiV2AttachmentsPost(file: file) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **URL** |  | [optional] 

### Return type

[**AttachmentModel**](AttachmentModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

