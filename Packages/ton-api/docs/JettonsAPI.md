# JettonsAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJettonHolders**](JettonsAPI.md#getjettonholders) | **GET** /v2/jettons/{account_id}/holders | 
[**getJettonInfo**](JettonsAPI.md#getjettoninfo) | **GET** /v2/jettons/{account_id} | 
[**getJettonInfosByAddresses**](JettonsAPI.md#getjettoninfosbyaddresses) | **POST** /v2/jettons/_bulk | 
[**getJettonTransferPayload**](JettonsAPI.md#getjettontransferpayload) | **GET** /v2/jettons/{jetton_id}/transfer/{account_id}/payload | 
[**getJettons**](JettonsAPI.md#getjettons) | **GET** /v2/jettons | 
[**getJettonsEvents**](JettonsAPI.md#getjettonsevents) | **GET** /v2/events/{event_id}/jettons | 


# **getJettonHolders**
```swift
    open class func getJettonHolders(accountId: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: JettonHolders?, _ error: Error?) -> Void)
```



Get jetton's holders

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let limit = 987 // Int |  (optional) (default to 1000)
let offset = 987 // Int |  (optional) (default to 0)

JettonsAPI.getJettonHolders(accountId: accountId, limit: limit, offset: offset) { (response, error) in
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
 **accountId** | **String** | account ID | 
 **limit** | **Int** |  | [optional] [default to 1000]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**JettonHolders**](JettonHolders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJettonInfo**
```swift
    open class func getJettonInfo(accountId: String, completion: @escaping (_ data: JettonInfo?, _ error: Error?) -> Void)
```



Get jetton metadata by jetton master address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

JettonsAPI.getJettonInfo(accountId: accountId) { (response, error) in
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
 **accountId** | **String** | account ID | 

### Return type

[**JettonInfo**](JettonInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJettonInfosByAddresses**
```swift
    open class func getJettonInfosByAddresses(getAccountsRequest: GetAccountsRequest? = nil, completion: @escaping (_ data: Jettons?, _ error: Error?) -> Void)
```



Get jetton metadata items by jetton master addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let getAccountsRequest = getAccounts_request(accountIds: ["accountIds_example"]) // GetAccountsRequest | a list of account ids (optional)

JettonsAPI.getJettonInfosByAddresses(getAccountsRequest: getAccountsRequest) { (response, error) in
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
 **getAccountsRequest** | [**GetAccountsRequest**](GetAccountsRequest.md) | a list of account ids | [optional] 

### Return type

[**Jettons**](Jettons.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJettonTransferPayload**
```swift
    open class func getJettonTransferPayload(accountId: String, jettonId: String, completion: @escaping (_ data: JettonTransferPayload?, _ error: Error?) -> Void)
```



Get jetton's custom payload and state init required for transfer

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let jettonId = "jettonId_example" // String | jetton ID

JettonsAPI.getJettonTransferPayload(accountId: accountId, jettonId: jettonId) { (response, error) in
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
 **accountId** | **String** | account ID | 
 **jettonId** | **String** | jetton ID | 

### Return type

[**JettonTransferPayload**](JettonTransferPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJettons**
```swift
    open class func getJettons(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: Jettons?, _ error: Error?) -> Void)
```



Get a list of all indexed jetton masters in the blockchain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let limit = 987 // Int |  (optional) (default to 100)
let offset = 987 // Int |  (optional) (default to 0)

JettonsAPI.getJettons(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 100]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**Jettons**](Jettons.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJettonsEvents**
```swift
    open class func getJettonsEvents(eventId: String, acceptLanguage: String? = nil, completion: @escaping (_ data: Event?, _ error: Error?) -> Void)
```



Get only jetton transfers in the event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let eventId = "eventId_example" // String | event ID or transaction hash in hex (without 0x) or base64url format
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

JettonsAPI.getJettonsEvents(eventId: eventId, acceptLanguage: acceptLanguage) { (response, error) in
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
 **eventId** | **String** | event ID or transaction hash in hex (without 0x) or base64url format | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

