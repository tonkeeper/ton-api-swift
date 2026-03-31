# StorageAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStorageProviders**](StorageAPI.md#getstorageproviders) | **GET** /v2/storage/providers | 


# **getStorageProviders**
```swift
    open class func getStorageProviders(xCapability: XCapability_getStorageProviders? = nil, completion: @escaping (_ data: GetStorageProviders200Response?, _ error: Error?) -> Void)
```



Get TON storage providers deployed to the blockchain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

StorageAPI.getStorageProviders(xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**GetStorageProviders200Response**](GetStorageProviders200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

