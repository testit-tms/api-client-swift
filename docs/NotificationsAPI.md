# NotificationsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2NotificationsCountGet**](NotificationsAPI.md#apiv2notificationscountget) | **GET** /api/v2/notifications/count | Get unread Notifications total in last 7 days
[**apiV2NotificationsGet**](NotificationsAPI.md#apiv2notificationsget) | **GET** /api/v2/notifications | Get all Notifications for current User
[**apiV2NotificationsIdReadPost**](NotificationsAPI.md#apiv2notificationsidreadpost) | **POST** /api/v2/notifications/{id}/read | Set Notification as read
[**apiV2NotificationsReadPost**](NotificationsAPI.md#apiv2notificationsreadpost) | **POST** /api/v2/notifications/read | Set all Notifications as read
[**apiV2NotificationsSearchPost**](NotificationsAPI.md#apiv2notificationssearchpost) | **POST** /api/v2/notifications/search | Search Notifications for current User


# **apiV2NotificationsCountGet**
```swift
    internal class func apiV2NotificationsCountGet(isRead: Bool? = nil, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get unread Notifications total in last 7 days

 Use case   User runs method execution   System returns unread notifications total (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let isRead = true // Bool |  (optional)

// Get unread Notifications total in last 7 days
NotificationsAPI.apiV2NotificationsCountGet(isRead: isRead) { (response, error) in
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
 **isRead** | **Bool** |  | [optional] 

### Return type

**Int**

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2NotificationsGet**
```swift
    internal class func apiV2NotificationsGet(notificationType: NotificationTypeModel? = nil, skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, completion: @escaping (_ data: [NotificationModel]?, _ error: Error?) -> Void)
```

Get all Notifications for current User

 Use case   User runs method execution   System returns notifications (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let notificationType = NotificationTypeModel() // NotificationTypeModel |  (optional)
let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)

// Get all Notifications for current User
NotificationsAPI.apiV2NotificationsGet(notificationType: notificationType, skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue) { (response, error) in
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
 **notificationType** | [**NotificationTypeModel**](.md) |  | [optional] 
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 

### Return type

[**[NotificationModel]**](NotificationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2NotificationsIdReadPost**
```swift
    internal class func apiV2NotificationsIdReadPost(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set Notification as read

 Use case   User sets notification internal (guid format) identifier   User runs method execution   System set notification as read

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let id = 987 // UUID | 

// Set Notification as read
NotificationsAPI.apiV2NotificationsIdReadPost(id: id) { (response, error) in
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

# **apiV2NotificationsReadPost**
```swift
    internal class func apiV2NotificationsReadPost(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set all Notifications as read

 Use case   User runs method execution   System set all notifications as read

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient


// Set all Notifications as read
NotificationsAPI.apiV2NotificationsReadPost() { (response, error) in
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

Void (empty response body)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV2NotificationsSearchPost**
```swift
    internal class func apiV2NotificationsSearchPost(skip: Int? = nil, take: Int? = nil, orderBy: String? = nil, searchField: String? = nil, searchValue: String? = nil, notificationQueryFilterModel: NotificationQueryFilterModel? = nil, completion: @escaping (_ data: [NotificationModel]?, _ error: Error?) -> Void)
```

Search Notifications for current User

 Use case   User set filter and runs method execution   System returns notifications (listed in the response example)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ruTestitApiClient

let skip = 987 // Int | Amount of items to be skipped (offset) (optional)
let take = 987 // Int | Amount of items to be taken (limit) (optional)
let orderBy = "orderBy_example" // String | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) (optional)
let searchField = "searchField_example" // String | Property name for searching (optional)
let searchValue = "searchValue_example" // String | Value for searching (optional)
let notificationQueryFilterModel = NotificationQueryFilterModel(types: [NotificationTypeModel()], isRead: false, createdDate: DateTimeRangeSelectorModel(from: Date(), to: Date())) // NotificationQueryFilterModel |  (optional)

// Search Notifications for current User
NotificationsAPI.apiV2NotificationsSearchPost(skip: skip, take: take, orderBy: orderBy, searchField: searchField, searchValue: searchValue, notificationQueryFilterModel: notificationQueryFilterModel) { (response, error) in
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
 **skip** | **Int** | Amount of items to be skipped (offset) | [optional] 
 **take** | **Int** | Amount of items to be taken (limit) | [optional] 
 **orderBy** | **String** | SQL-like  ORDER BY statement (column1 ASC|DESC , column2 ASC|DESC) | [optional] 
 **searchField** | **String** | Property name for searching | [optional] 
 **searchValue** | **String** | Value for searching | [optional] 
 **notificationQueryFilterModel** | [**NotificationQueryFilterModel**](NotificationQueryFilterModel.md) |  | [optional] 

### Return type

[**[NotificationModel]**](NotificationModel.md)

### Authorization

[Bearer or PrivateToken](../README.md#Bearer or PrivateToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

