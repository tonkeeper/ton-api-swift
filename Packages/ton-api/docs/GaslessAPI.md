# GaslessAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gaslessConfig**](GaslessAPI.md#gaslessconfig) | **GET** /v2/gasless/config | 
[**gaslessEstimate**](GaslessAPI.md#gaslessestimate) | **POST** /v2/gasless/estimate/{master_id} | 
[**gaslessSend**](GaslessAPI.md#gaslesssend) | **POST** /v2/gasless/send | 


# **gaslessConfig**
```swift
    open class func gaslessConfig(completion: @escaping (_ data: GaslessConfig?, _ error: Error?) -> Void)
```



Returns configuration of gasless transfers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


GaslessAPI.gaslessConfig() { (response, error) in
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

[**GaslessConfig**](GaslessConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gaslessEstimate**
```swift
    open class func gaslessEstimate(masterId: String, gaslessEstimateRequest: GaslessEstimateRequest, completion: @escaping (_ data: SignRawParams?, _ error: Error?) -> Void)
```



Estimates the cost of the given messages and returns a payload to sign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterId = "masterId_example" // String | jetton to pay commission
let gaslessEstimateRequest = gaslessEstimate_request(walletAddress: "walletAddress_example", walletPublicKey: "walletPublicKey_example", messages: [decodeMessage_request(boc: "boc_example")]) // GaslessEstimateRequest | bag-of-cells serialized to hex

GaslessAPI.gaslessEstimate(masterId: masterId, gaslessEstimateRequest: gaslessEstimateRequest) { (response, error) in
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
 **masterId** | **String** | jetton to pay commission | 
 **gaslessEstimateRequest** | [**GaslessEstimateRequest**](GaslessEstimateRequest.md) | bag-of-cells serialized to hex | 

### Return type

[**SignRawParams**](SignRawParams.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gaslessSend**
```swift
    open class func gaslessSend(gaslessSendRequest: GaslessSendRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let gaslessSendRequest = gaslessSend_request(walletPublicKey: "walletPublicKey_example", boc: "boc_example") // GaslessSendRequest | bag-of-cells serialized to hex

GaslessAPI.gaslessSend(gaslessSendRequest: gaslessSendRequest) { (response, error) in
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
 **gaslessSendRequest** | [**GaslessSendRequest**](GaslessSendRequest.md) | bag-of-cells serialized to hex | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

