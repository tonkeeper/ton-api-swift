# ConnectAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountInfoByStateInit**](ConnectAPI.md#getaccountinfobystateinit) | **POST** /v2/tonconnect/stateinit | 
[**getTonConnectPayload**](ConnectAPI.md#gettonconnectpayload) | **GET** /v2/tonconnect/payload | 


# **getAccountInfoByStateInit**
```swift
    open class func getAccountInfoByStateInit(getAccountInfoByStateInitRequest: GetAccountInfoByStateInitRequest, xCapability: XCapability_getAccountInfoByStateInit? = nil, completion: @escaping (_ data: AccountInfoByStateInit?, _ error: Error?) -> Void)
```



Get account info by state init

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let getAccountInfoByStateInitRequest = getAccountInfoByStateInit_request(stateInit: "stateInit_example") // GetAccountInfoByStateInitRequest | Data that is expected
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)

ConnectAPI.getAccountInfoByStateInit(getAccountInfoByStateInitRequest: getAccountInfoByStateInitRequest, xCapability: xCapability) { (response, error) in
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
 **getAccountInfoByStateInitRequest** | [**GetAccountInfoByStateInitRequest**](GetAccountInfoByStateInitRequest.md) | Data that is expected | 
 **xCapability** | **String** | Request sub-second capability. | [optional] 

### Return type

[**AccountInfoByStateInit**](AccountInfoByStateInit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTonConnectPayload**
```swift
    open class func getTonConnectPayload(xCapability: XCapability_getTonConnectPayload? = nil, completion: @escaping (_ data: GetTonConnectPayload200Response?, _ error: Error?) -> Void)
```



Get a payload for further token receipt

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional)

ConnectAPI.getTonConnectPayload(xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] 

### Return type

[**GetTonConnectPayload200Response**](GetTonConnectPayload200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

