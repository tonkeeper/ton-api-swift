# EventsAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emulateMessageToEvent**](EventsAPI.md#emulatemessagetoevent) | **POST** /v2/events/emulate | 
[**getEvent**](EventsAPI.md#getevent) | **GET** /v2/events/{event_id} | 


# **emulateMessageToEvent**
```swift
    open class func emulateMessageToEvent(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil, completion: @escaping (_ data: Event?, _ error: Error?) -> Void)
```



Emulate sending message to retrieve general blockchain events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let gaslessEstimateRequestMessagesInner = gaslessEstimate_request_messages_inner(boc: "boc_example") // GaslessEstimateRequestMessagesInner | bag-of-cells serialized to hex
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let ignoreSignatureCheck = true // Bool |  (optional)

EventsAPI.emulateMessageToEvent(gaslessEstimateRequestMessagesInner: gaslessEstimateRequestMessagesInner, acceptLanguage: acceptLanguage, ignoreSignatureCheck: ignoreSignatureCheck) { (response, error) in
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
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **ignoreSignatureCheck** | **Bool** |  | [optional] 

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvent**
```swift
    open class func getEvent(eventId: String, acceptLanguage: String? = nil, completion: @escaping (_ data: Event?, _ error: Error?) -> Void)
```



Get an event either by event ID or a hash of any transaction in a trace. An event is built on top of a trace which is a series of transactions caused by one inbound message. TonAPI looks for known patterns inside the trace and splits the trace into actions, where a single action represents a meaningful high-level operation like a Jetton Transfer or an NFT Purchase. Actions are expected to be shown to users. It is advised not to build any logic on top of actions because actions can be changed at any time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let eventId = "eventId_example" // String | event ID or transaction hash in hex (without 0x) or base64url format
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

EventsAPI.getEvent(eventId: eventId, acceptLanguage: acceptLanguage) { (response, error) in
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
 **eventId** | **String** | event ID or transaction hash in hex (without 0x) or base64url format | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

### Return type

[**Event**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

