# ExtraCurrencyAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExtraCurrencyInfo**](ExtraCurrencyAPI.md#getextracurrencyinfo) | **GET** /v2/extra-currency/{id} | 


# **getExtraCurrencyInfo**
```swift
    open class func getExtraCurrencyInfo(id: Int, completion: @escaping (_ data: EcPreview?, _ error: Error?) -> Void)
```



Get extra currency info by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let id = 987 // Int | extra currency id

ExtraCurrencyAPI.getExtraCurrencyInfo(id: id) { (response, error) in
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
 **id** | **Int** | extra currency id | 

### Return type

[**EcPreview**](EcPreview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

