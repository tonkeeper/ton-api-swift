# UtilitiesAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressParse**](UtilitiesAPI.md#addressparse) | **GET** /v2/address/{account_id}/parse | 
[**status**](UtilitiesAPI.md#status) | **GET** /v2/status | 


# **addressParse**
```swift
    open class func addressParse(accountId: String, completion: @escaping (_ data: AddressParse200Response?, _ error: Error?) -> Void)
```



parse address and display in all formats

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

UtilitiesAPI.addressParse(accountId: accountId) { (response, error) in
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

[**AddressParse200Response**](AddressParse200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **status**
```swift
    open class func status(completion: @escaping (_ data: ServiceStatus?, _ error: Error?) -> Void)
```



Status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


UtilitiesAPI.status() { (response, error) in
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

[**ServiceStatus**](ServiceStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

