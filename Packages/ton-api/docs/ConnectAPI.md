# ConnectAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountInfoByStateInit**](ConnectAPI.md#getaccountinfobystateinit) | **POST** /v2/tonconnect/stateinit | 
[**getTonConnectPayload**](ConnectAPI.md#gettonconnectpayload) | **GET** /v2/tonconnect/payload | 


# **getAccountInfoByStateInit**
```swift
    open class func getAccountInfoByStateInit(getAccountInfoByStateInitRequest: GetAccountInfoByStateInitRequest, completion: @escaping (_ data: AccountInfoByStateInit?, _ error: Error?) -> Void)
```



Get account info by state init

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let getAccountInfoByStateInitRequest = getAccountInfoByStateInit_request(stateInit: "stateInit_example") // GetAccountInfoByStateInitRequest | Data that is expected

ConnectAPI.getAccountInfoByStateInit(getAccountInfoByStateInitRequest: getAccountInfoByStateInitRequest) { (response, error) in
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
    open class func getTonConnectPayload(completion: @escaping (_ data: GetTonConnectPayload200Response?, _ error: Error?) -> Void)
```



Get a payload for further token receipt

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


ConnectAPI.getTonConnectPayload() { (response, error) in
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

[**GetTonConnectPayload200Response**](GetTonConnectPayload200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

