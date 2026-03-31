# TracesAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emulateMessageToTrace**](TracesAPI.md#emulatemessagetotrace) | **POST** /v2/traces/emulate | 
[**getTrace**](TracesAPI.md#gettrace) | **GET** /v2/traces/{trace_id} | 


# **emulateMessageToTrace**
```swift
    open class func emulateMessageToTrace(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, xCapability: XCapability_emulateMessageToTrace? = nil, ignoreSignatureCheck: Bool? = nil, completion: @escaping (_ data: Trace?, _ error: Error?) -> Void)
```



Emulate sending message to retrieve with a detailed execution trace

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let gaslessEstimateRequestMessagesInner = gaslessEstimate_request_messages_inner(boc: "boc_example") // GaslessEstimateRequestMessagesInner | bag-of-cells serialized to hex
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let ignoreSignatureCheck = true // Bool |  (optional)

TracesAPI.emulateMessageToTrace(gaslessEstimateRequestMessagesInner: gaslessEstimateRequestMessagesInner, xCapability: xCapability, ignoreSignatureCheck: ignoreSignatureCheck) { (response, error) in
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
 **gaslessEstimateRequestMessagesInner** | [**GaslessEstimateRequestMessagesInner**](GaslessEstimateRequestMessagesInner.md) | bag-of-cells serialized to hex | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **ignoreSignatureCheck** | **Bool** |  | [optional] 

### Return type

[**Trace**](Trace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrace**
```swift
    open class func getTrace(traceId: String, xCapability: XCapability_getTrace? = nil, completion: @escaping (_ data: Trace?, _ error: Error?) -> Void)
```



Get the trace by trace ID or hash of any transaction in trace

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let traceId = "traceId_example" // String | trace ID or transaction hash in hex (without 0x) or base64url format
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

TracesAPI.getTrace(traceId: traceId, xCapability: xCapability) { (response, error) in
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
 **traceId** | **String** | trace ID or transaction hash in hex (without 0x) or base64url format | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**Trace**](Trace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

