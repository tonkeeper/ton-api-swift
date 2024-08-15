# InscriptionsAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountInscriptions**](InscriptionsAPI.md#getaccountinscriptions) | **GET** /v2/experimental/accounts/{account_id}/inscriptions | 
[**getAccountInscriptionsHistory**](InscriptionsAPI.md#getaccountinscriptionshistory) | **GET** /v2/experimental/accounts/{account_id}/inscriptions/history | 
[**getAccountInscriptionsHistoryByTicker**](InscriptionsAPI.md#getaccountinscriptionshistorybyticker) | **GET** /v2/experimental/accounts/{account_id}/inscriptions/{ticker}/history | 
[**getInscriptionOpTemplate**](InscriptionsAPI.md#getinscriptionoptemplate) | **GET** /v2/experimental/inscriptions/op-template | 


# **getAccountInscriptions**
```swift
    open class func getAccountInscriptions(accountId: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: InscriptionBalances?, _ error: Error?) -> Void)
```



Get all inscriptions by owner address. It's experimental API and can be dropped in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let limit = 987 // Int |  (optional) (default to 1000)
let offset = 987 // Int |  (optional) (default to 0)

InscriptionsAPI.getAccountInscriptions(accountId: accountId, limit: limit, offset: offset) { (response, error) in
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
 **accountId** | **String** | account ID | 
 **limit** | **Int** |  | [optional] [default to 1000]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**InscriptionBalances**](InscriptionBalances.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInscriptionsHistory**
```swift
    open class func getAccountInscriptionsHistory(accountId: String, acceptLanguage: String? = nil, beforeLt: Int64? = nil, limit: Int? = nil, completion: @escaping (_ data: AccountEvents?, _ error: Error?) -> Void)
```



Get the transfer inscriptions history for account. It's experimental API and can be dropped in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)
let limit = 987 // Int |  (optional) (default to 100)

InscriptionsAPI.getAccountInscriptionsHistory(accountId: accountId, acceptLanguage: acceptLanguage, beforeLt: beforeLt, limit: limit) { (response, error) in
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
 **accountId** | **String** | account ID | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **beforeLt** | **Int64** | omit this parameter to get last events | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**AccountEvents**](AccountEvents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInscriptionsHistoryByTicker**
```swift
    open class func getAccountInscriptionsHistoryByTicker(accountId: String, ticker: String, acceptLanguage: String? = nil, beforeLt: Int64? = nil, limit: Int? = nil, completion: @escaping (_ data: AccountEvents?, _ error: Error?) -> Void)
```



Get the transfer inscriptions history for account. It's experimental API and can be dropped in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let ticker = "ticker_example" // String | 
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)
let limit = 987 // Int |  (optional) (default to 100)

InscriptionsAPI.getAccountInscriptionsHistoryByTicker(accountId: accountId, ticker: ticker, acceptLanguage: acceptLanguage, beforeLt: beforeLt, limit: limit) { (response, error) in
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
 **accountId** | **String** | account ID | 
 **ticker** | **String** |  | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **beforeLt** | **Int64** | omit this parameter to get last events | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**AccountEvents**](AccountEvents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInscriptionOpTemplate**
```swift
    open class func getInscriptionOpTemplate(type: ModelType_getInscriptionOpTemplate, operation: Operation_getInscriptionOpTemplate, amount: String, ticker: String, who: String, destination: String? = nil, comment: String? = nil, completion: @escaping (_ data: GetInscriptionOpTemplate200Response?, _ error: Error?) -> Void)
```



return comment for making operation with inscription. please don't use it if you don't know what you are doing

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let type = "type_example" // String | 
let operation = "operation_example" // String | 
let amount = "amount_example" // String | 
let ticker = "ticker_example" // String | 
let who = "who_example" // String | 
let destination = "destination_example" // String |  (optional)
let comment = "comment_example" // String |  (optional)

InscriptionsAPI.getInscriptionOpTemplate(type: type, operation: operation, amount: amount, ticker: ticker, who: who, destination: destination, comment: comment) { (response, error) in
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
 **type** | **String** |  | 
 **operation** | **String** |  | 
 **amount** | **String** |  | 
 **ticker** | **String** |  | 
 **who** | **String** |  | 
 **destination** | **String** |  | [optional] 
 **comment** | **String** |  | [optional] 

### Return type

[**GetInscriptionOpTemplate200Response**](GetInscriptionOpTemplate200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

