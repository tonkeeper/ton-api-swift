# StorageAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStorageProviders**](StorageAPI.md#getstorageproviders) | **GET** /v2/storage/providers | 


# **getStorageProviders**
```swift
    open class func getStorageProviders(completion: @escaping (_ data: GetStorageProviders200Response?, _ error: Error?) -> Void)
```



Get TON storage providers deployed to the blockchain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


StorageAPI.getStorageProviders() { (response, error) in
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

[**GetStorageProviders200Response**](GetStorageProviders200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

