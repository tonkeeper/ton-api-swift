# WalletAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emulateMessageToWallet**](WalletAPI.md#emulatemessagetowallet) | **POST** /v2/wallet/emulate | 
[**getAccountSeqno**](WalletAPI.md#getaccountseqno) | **GET** /v2/wallet/{account_id}/seqno | 
[**getWalletsByPublicKey**](WalletAPI.md#getwalletsbypublickey) | **GET** /v2/pubkeys/{public_key}/wallets | 
[**tonConnectProof**](WalletAPI.md#tonconnectproof) | **POST** /v2/wallet/auth/proof | 


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

WalletAPI.emulateMessageToWallet(emulateMessageToWalletRequest: emulateMessageToWalletRequest, acceptLanguage: acceptLanguage) { (response, error) in
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

# **getAccountSeqno**
```swift
    open class func getAccountSeqno(accountId: String, completion: @escaping (_ data: Seqno?, _ error: Error?) -> Void)
```



Get account seqno

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

WalletAPI.getAccountSeqno(accountId: accountId) { (response, error) in
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

[**Seqno**](Seqno.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletsByPublicKey**
```swift
    open class func getWalletsByPublicKey(publicKey: String, completion: @escaping (_ data: Accounts?, _ error: Error?) -> Void)
```



Get wallets by public key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let publicKey = "publicKey_example" // String | 

WalletAPI.getWalletsByPublicKey(publicKey: publicKey) { (response, error) in
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

### Return type

[**Accounts**](Accounts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tonConnectProof**
```swift
    open class func tonConnectProof(tonConnectProofRequest: TonConnectProofRequest, completion: @escaping (_ data: TonConnectProof200Response?, _ error: Error?) -> Void)
```



Account verification and token issuance

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let tonConnectProofRequest = tonConnectProof_request(address: "address_example", proof: tonConnectProof_request_proof(timestamp: 123, domain: tonConnectProof_request_proof_domain(lengthBytes: 123, value: "value_example"), signature: "signature_example", payload: "payload_example", stateInit: "stateInit_example")) // TonConnectProofRequest | Data that is expected from TON Connect

WalletAPI.tonConnectProof(tonConnectProofRequest: tonConnectProofRequest) { (response, error) in
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

### Return type

[**TonConnectProof200Response**](TonConnectProof200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

