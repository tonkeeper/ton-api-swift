# RatesAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getChartRates**](RatesAPI.md#getchartrates) | **GET** /v2/rates/chart | 
[**getMarketsRates**](RatesAPI.md#getmarketsrates) | **GET** /v2/rates/markets | 
[**getRates**](RatesAPI.md#getrates) | **GET** /v2/rates | 


# **getChartRates**
```swift
    open class func getChartRates(token: String, currency: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil, pointsCount: Int? = nil, completion: @escaping (_ data: GetChartRates200Response?, _ error: Error?) -> Void)
```



Get chart by token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let token = "token_example" // String | accept jetton master address
let currency = "currency_example" // String |  (optional)
let startDate = 987 // Int64 |  (optional)
let endDate = 987 // Int64 |  (optional)
let pointsCount = 987 // Int |  (optional) (default to 200)

RatesAPI.getChartRates(token: token, currency: currency, startDate: startDate, endDate: endDate, pointsCount: pointsCount) { (response, error) in
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
 **token** | **String** | accept jetton master address | 
 **currency** | **String** |  | [optional] 
 **startDate** | **Int64** |  | [optional] 
 **endDate** | **Int64** |  | [optional] 
 **pointsCount** | **Int** |  | [optional] [default to 200]

### Return type

[**GetChartRates200Response**](GetChartRates200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMarketsRates**
```swift
    open class func getMarketsRates(completion: @escaping (_ data: GetMarketsRates200Response?, _ error: Error?) -> Void)
```



Get the TON price from markets

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


RatesAPI.getMarketsRates() { (response, error) in
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

[**GetMarketsRates200Response**](GetMarketsRates200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRates**
```swift
    open class func getRates(tokens: [String], currencies: [String], completion: @escaping (_ data: GetRates200Response?, _ error: Error?) -> Void)
```



Get the token price in the chosen currency for display only. Don’t use this for financial transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let tokens = ["inner_example"] // [String] | accept ton and jetton master addresses, separated by commas
let currencies = ["inner_example"] // [String] | accept ton and all possible fiat currencies, separated by commas

RatesAPI.getRates(tokens: tokens, currencies: currencies) { (response, error) in
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
 **tokens** | [**[String]**](String.md) | accept ton and jetton master addresses, separated by commas | 
 **currencies** | [**[String]**](String.md) | accept ton and all possible fiat currencies, separated by commas | 

### Return type

[**GetRates200Response**](GetRates200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

