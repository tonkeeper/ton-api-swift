# MultisigAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMultisigAccount**](MultisigAPI.md#getmultisigaccount) | **GET** /v2/multisig/{account_id} | 
[**getMultisigOrder**](MultisigAPI.md#getmultisigorder) | **GET** /v2/multisig/order/{account_id} | 


# **getMultisigAccount**
```swift
    open class func getMultisigAccount(accountId: String, completion: @escaping (_ data: Multisig?, _ error: Error?) -> Void)
```



Get multisig account info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

MultisigAPI.getMultisigAccount(accountId: accountId) { (response, error) in
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

[**Multisig**](Multisig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultisigOrder**
```swift
    open class func getMultisigOrder(accountId: String, completion: @escaping (_ data: MultisigOrder?, _ error: Error?) -> Void)
```



Get multisig order

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

MultisigAPI.getMultisigOrder(accountId: accountId) { (response, error) in
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

[**MultisigOrder**](MultisigOrder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

