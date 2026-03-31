# StreamingAPI

All URIs are relative to *https://toncenter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subscribeSse**](StreamingAPI.md#subscribesse) | **POST** /streaming/v2/sse | Open an SSE subscription


# **subscribeSse**
```swift
    open class func subscribeSse(sseSubscriptionRequest: SseSubscriptionRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Open an SSE subscription

Creates a Server-Sent Events stream for the requested subscription.  The request body is sent once. No additional client messages are sent on the same connection.  Stream behavior from the source document: - The first payload is `{\"status\":\"subscribed\"}`. - Subsequent payloads are streamed as SSE `data:` frames containing JSON. - The server emits `: keepalive` comments every 15 seconds. - SSE comments must be ignored by clients. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonStreamingAPIV2

let sseSubscriptionRequest = SseSubscriptionRequest(addresses: ["addresses_example"], traceExternalHashNorms: ["traceExternalHashNorms_example"], types: [SubscriptionType()], minFinality: Finality(), includeAddressBook: false, includeMetadata: false, actionTypes: ["actionTypes_example"], supportedActionTypes: ["supportedActionTypes_example"]) // SseSubscriptionRequest | 

// Open an SSE subscription
StreamingAPI.subscribeSse(sseSubscriptionRequest: sseSubscriptionRequest) { (response, error) in
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
 **sseSubscriptionRequest** | [**SseSubscriptionRequest**](SseSubscriptionRequest.md) |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

