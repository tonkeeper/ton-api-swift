# EmulationAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**decodeMessage**](EmulationAPI.md#decodemessage) | **POST** /v2/message/decode | 
[**emulateMessageToAccountEvent**](EmulationAPI.md#emulatemessagetoaccountevent) | **POST** /v2/accounts/{account_id}/events/emulate | 
[**emulateMessageToEvent**](EmulationAPI.md#emulatemessagetoevent) | **POST** /v2/events/emulate | 
[**emulateMessageToTrace**](EmulationAPI.md#emulatemessagetotrace) | **POST** /v2/traces/emulate | 
[**emulateMessageToWallet**](EmulationAPI.md#emulatemessagetowallet) | **POST** /v2/wallet/emulate | 


# **decodeMessage**
```swift
    open class func decodeMessage(decodeMessageRequest: DecodeMessageRequest, completion: @escaping (_ data: DecodedMessage?, _ error: Error?) -> Void)
```



Decode a given message. Only external incoming messages can be decoded currently.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let decodeMessageRequest = decodeMessage_request(boc: "boc_example") // DecodeMessageRequest | bag-of-cells serialized to hex

EmulationAPI.decodeMessage(decodeMessageRequest: decodeMessageRequest) { (response, error) in
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
 **decodeMessageRequest** | [**DecodeMessageRequest**](DecodeMessageRequest.md) | bag-of-cells serialized to hex | 

### Return type

[**DecodedMessage**](DecodedMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emulateMessageToAccountEvent**
```swift
    open class func emulateMessageToAccountEvent(accountId: String, decodeMessageRequest: DecodeMessageRequest, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil, completion: @escaping (_ data: AccountEvent?, _ error: Error?) -> Void)
```



Emulate sending message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let decodeMessageRequest = decodeMessage_request(boc: "boc_example") // DecodeMessageRequest | bag-of-cells serialized to hex
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let ignoreSignatureCheck = true // Bool |  (optional)

EmulationAPI.emulateMessageToAccountEvent(accountId: accountId, decodeMessageRequest: decodeMessageRequest, acceptLanguage: acceptLanguage, ignoreSignatureCheck: ignoreSignatureCheck) { (response, error) in
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
 **decodeMessageRequest** | [**DecodeMessageRequest**](DecodeMessageRequest.md) | bag-of-cells serialized to hex | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **ignoreSignatureCheck** | **Bool** |  | [optional] 

### Return type

[**AccountEvent**](AccountEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emulateMessageToEvent**
```swift
    open class func emulateMessageToEvent(decodeMessageRequest: DecodeMessageRequest, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil, completion: @escaping (_ data: Event?, _ error: Error?) -> Void)
```



Emulate sending message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let decodeMessageRequest = decodeMessage_request(boc: "boc_example") // DecodeMessageRequest | bag-of-cells serialized to hex
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let ignoreSignatureCheck = true // Bool |  (optional)

EmulationAPI.emulateMessageToEvent(decodeMessageRequest: decodeMessageRequest, acceptLanguage: acceptLanguage, ignoreSignatureCheck: ignoreSignatureCheck) { (response, error) in
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
 **decodeMessageRequest** | [**DecodeMessageRequest**](DecodeMessageRequest.md) | bag-of-cells serialized to hex | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **ignoreSignatureCheck** | **Bool** |  | [optional] 

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emulateMessageToTrace**
```swift
    open class func emulateMessageToTrace(decodeMessageRequest: DecodeMessageRequest, ignoreSignatureCheck: Bool? = nil, completion: @escaping (_ data: Trace?, _ error: Error?) -> Void)
```



Emulate sending message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let decodeMessageRequest = decodeMessage_request(boc: "boc_example") // DecodeMessageRequest | bag-of-cells serialized to hex
let ignoreSignatureCheck = true // Bool |  (optional)

EmulationAPI.emulateMessageToTrace(decodeMessageRequest: decodeMessageRequest, ignoreSignatureCheck: ignoreSignatureCheck) { (response, error) in
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
 **decodeMessageRequest** | [**DecodeMessageRequest**](DecodeMessageRequest.md) | bag-of-cells serialized to hex | 
 **ignoreSignatureCheck** | **Bool** |  | [optional] 

### Return type

[**Trace**](Trace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emulateMessageToWallet**
```swift
    open class func emulateMessageToWallet(emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil, completion: @escaping (_ data: MessageConsequences?, _ error: Error?) -> Void)
```



Emulate sending message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let emulateMessageToWalletRequest = emulateMessageToWallet_request(boc: "boc_example", params: [emulateMessageToWallet_request_params_inner(address: "address_example", balance: 123)]) // EmulateMessageToWalletRequest | bag-of-cells serialized to base64/hex and additional parameters to configure emulation
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

EmulationAPI.emulateMessageToWallet(emulateMessageToWalletRequest: emulateMessageToWalletRequest, acceptLanguage: acceptLanguage) { (response, error) in
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
 **emulateMessageToWalletRequest** | [**EmulateMessageToWalletRequest**](EmulateMessageToWalletRequest.md) | bag-of-cells serialized to base64/hex and additional parameters to configure emulation | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

### Return type

[**MessageConsequences**](MessageConsequences.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

