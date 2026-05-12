# WalletAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emulateMessageToWallet**](WalletAPI.md#emulatemessagetowallet) | **POST** /v2/wallet/emulate | 
[**getAccountSeqno**](WalletAPI.md#getaccountseqno) | **GET** /v2/wallet/{account_id}/seqno | 
[**getWalletInfo**](WalletAPI.md#getwalletinfo) | **GET** /v2/wallet/{account_id} | 
[**getWalletsByPublicKey**](WalletAPI.md#getwalletsbypublickey) | **GET** /v2/pubkeys/{public_key}/wallets | 
[**getWalletsByPublicKeyBulk**](WalletAPI.md#getwalletsbypublickeybulk) | **POST** /v2/pubkeys/wallets/_bulk | 
[**tonConnectProof**](WalletAPI.md#tonconnectproof) | **POST** /v2/wallet/auth/proof | 


# **emulateMessageToWallet**
```swift
    open class func emulateMessageToWallet(emulateMessageToWalletRequest: EmulateMessageToWalletRequest, xCapability: XCapability_emulateMessageToWallet? = nil, acceptLanguage: String? = nil, currency: String? = nil, completion: @escaping (_ data: MessageConsequences?, _ error: Error?) -> Void)
```



Emulates a wallet message on the current blockchain state and derives its consequences for the signing wallet

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let emulateMessageToWalletRequest = emulateMessageToWallet_request(boc: "boc_example", params: [emulateMessageToWallet_request_params_inner(address: "address_example", balance: 123)]) // EmulateMessageToWalletRequest | bag-of-cells serialized to base64/hex and additional parameters to configure emulation
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let currency = "currency_example" // String |  (optional)

WalletAPI.emulateMessageToWallet(emulateMessageToWalletRequest: emulateMessageToWalletRequest, xCapability: xCapability, acceptLanguage: acceptLanguage, currency: currency) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **currency** | **String** |  | [optional] 

### Return type

[**MessageConsequences**](MessageConsequences.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountSeqno**
```swift
    open class func getAccountSeqno(accountId: String, xCapability: XCapability_getAccountSeqno? = nil, completion: @escaping (_ data: Seqno?, _ error: Error?) -> Void)
```



Get account seqno

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)

WalletAPI.getAccountSeqno(accountId: accountId, xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] 

### Return type

[**Seqno**](Seqno.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletInfo**
```swift
    open class func getWalletInfo(accountId: String, xCapability: XCapability_getWalletInfo? = nil, completion: @escaping (_ data: Wallet?, _ error: Error?) -> Void)
```



Get human-friendly information about a wallet without low-level details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)

WalletAPI.getWalletInfo(accountId: accountId, xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] 

### Return type

[**Wallet**](Wallet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletsByPublicKey**
```swift
    open class func getWalletsByPublicKey(publicKey: String, xCapability: XCapability_getWalletsByPublicKey? = nil, completion: @escaping (_ data: Wallets?, _ error: Error?) -> Void)
```



Get wallets by public key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let publicKey = "publicKey_example" // String | 
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)

WalletAPI.getWalletsByPublicKey(publicKey: publicKey, xCapability: xCapability) { (response, error) in
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
 **publicKey** | **String** |  | 
 **xCapability** | **String** | Request sub-second capability. | [optional] 

### Return type

[**Wallets**](Wallets.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletsByPublicKeyBulk**
```swift
    open class func getWalletsByPublicKeyBulk(xCapability: XCapability_getWalletsByPublicKeyBulk? = nil, getWalletsByPublicKeyBulkRequest: GetWalletsByPublicKeyBulkRequest? = nil, completion: @escaping (_ data: WalletsByPublicKeys?, _ error: Error?) -> Void)
```



Get wallets by a list of public keys

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)
let getWalletsByPublicKeyBulkRequest = getWalletsByPublicKeyBulk_request(publicKeys: ["publicKeys_example"]) // GetWalletsByPublicKeyBulkRequest | a list of hex-encoded ed25519 public keys (optional)

WalletAPI.getWalletsByPublicKeyBulk(xCapability: xCapability, getWalletsByPublicKeyBulkRequest: getWalletsByPublicKeyBulkRequest) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] 
 **getWalletsByPublicKeyBulkRequest** | [**GetWalletsByPublicKeyBulkRequest**](GetWalletsByPublicKeyBulkRequest.md) | a list of hex-encoded ed25519 public keys | [optional] 

### Return type

[**WalletsByPublicKeys**](WalletsByPublicKeys.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tonConnectProof**
```swift
    open class func tonConnectProof(tonConnectProofRequest: TonConnectProofRequest, xCapability: XCapability_tonConnectProof? = nil, completion: @escaping (_ data: TonConnectProof200Response?, _ error: Error?) -> Void)
```



Account verification and token issuance

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let tonConnectProofRequest = tonConnectProof_request(address: "address_example", proof: tonConnectProof_request_proof(timestamp: 123, domain: tonConnectProof_request_proof_domain(lengthBytes: 123, value: "value_example"), signature: "signature_example", payload: "payload_example", stateInit: "stateInit_example")) // TonConnectProofRequest | Data that is expected from TON Connect
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)

WalletAPI.tonConnectProof(tonConnectProofRequest: tonConnectProofRequest, xCapability: xCapability) { (response, error) in
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
 **tonConnectProofRequest** | [**TonConnectProofRequest**](TonConnectProofRequest.md) | Data that is expected from TON Connect | 
 **xCapability** | **String** | Request sub-second capability. | [optional] 

### Return type

[**TonConnectProof200Response**](TonConnectProof200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

