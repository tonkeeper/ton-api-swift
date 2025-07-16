# PurchasesAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPurchaseHistory**](PurchasesAPI.md#getpurchasehistory) | **GET** /v2/purchases/{account_id}/history | 


# **getPurchaseHistory**
```swift
    open class func getPurchaseHistory(accountId: String, beforeLt: Int64? = nil, limit: Int? = nil, completion: @escaping (_ data: AccountPurchases?, _ error: Error?) -> Void)
```



Get history of purchases

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let beforeLt = 987 // Int64 | omit this parameter to get last invoices (optional)
let limit = 987 // Int |  (optional) (default to 100)

PurchasesAPI.getPurchaseHistory(accountId: accountId, beforeLt: beforeLt, limit: limit) { (response, error) in
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
 **beforeLt** | **Int64** | omit this parameter to get last invoices | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**AccountPurchases**](AccountPurchases.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

