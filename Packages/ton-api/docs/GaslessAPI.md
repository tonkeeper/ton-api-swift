# GaslessAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gaslessConfig**](GaslessAPI.md#gaslessconfig) | **GET** /v2/gasless/config | 
[**gaslessEstimate**](GaslessAPI.md#gaslessestimate) | **POST** /v2/gasless/estimate/{master_id} | 
[**gaslessSend**](GaslessAPI.md#gaslesssend) | **POST** /v2/gasless/send | 


# **gaslessConfig**
```swift
    open class func gaslessConfig(xCapability: XCapability_gaslessConfig? = nil, completion: @escaping (_ data: GaslessConfig?, _ error: Error?) -> Void)
```



Returns configuration of gasless transfers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

GaslessAPI.gaslessConfig(xCapability: xCapability) { (response, error) in
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

[**GaslessConfig**](GaslessConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gaslessEstimate**
```swift
    open class func gaslessEstimate(masterId: String, gaslessEstimateRequest: GaslessEstimateRequest, xCapability: XCapability_gaslessEstimate? = nil, acceptLanguage: String? = nil, completion: @escaping (_ data: SignRawParams?, _ error: Error?) -> Void)
```



Estimates the cost of the given messages and returns a payload to sign

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterId = "masterId_example" // String | jetton to pay commission
let gaslessEstimateRequest = gaslessEstimate_request(throwErrorIfNotEnoughJettons: false, returnEmulation: false, walletAddress: "walletAddress_example", walletPublicKey: "walletPublicKey_example", messages: [gaslessEstimate_request_messages_inner(boc: "boc_example")]) // GaslessEstimateRequest | bag-of-cells serialized to hex
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

GaslessAPI.gaslessEstimate(masterId: masterId, gaslessEstimateRequest: gaslessEstimateRequest, xCapability: xCapability, acceptLanguage: acceptLanguage) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

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
    open class func gaslessSend(gaslessSendRequest: GaslessSendRequest, xCapability: XCapability_gaslessSend? = nil, completion: @escaping (_ data: GaslessTx?, _ error: Error?) -> Void)
```



Submits the signed gasless transaction message to the network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let gaslessSendRequest = gaslessSend_request(walletPublicKey: "walletPublicKey_example", boc: "boc_example") // GaslessSendRequest | bag-of-cells serialized to hex
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

GaslessAPI.gaslessSend(gaslessSendRequest: gaslessSendRequest, xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**GaslessTx**](GaslessTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

