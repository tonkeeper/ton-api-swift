# NFTAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountNftHistory**](NFTAPI.md#getaccountnfthistory) | **GET** /v2/accounts/{account_id}/nfts/history | 
[**getItemsFromCollection**](NFTAPI.md#getitemsfromcollection) | **GET** /v2/nfts/collections/{account_id}/items | 
[**getNftCollection**](NFTAPI.md#getnftcollection) | **GET** /v2/nfts/collections/{account_id} | 
[**getNftCollectionItemsByAddresses**](NFTAPI.md#getnftcollectionitemsbyaddresses) | **POST** /v2/nfts/collections/_bulk | 
[**getNftCollections**](NFTAPI.md#getnftcollections) | **GET** /v2/nfts/collections | 
[**getNftHistoryByID**](NFTAPI.md#getnfthistorybyid) | **GET** /v2/nfts/{account_id}/history | 
[**getNftItemByAddress**](NFTAPI.md#getnftitembyaddress) | **GET** /v2/nfts/{account_id} | 
[**getNftItemsByAddresses**](NFTAPI.md#getnftitemsbyaddresses) | **POST** /v2/nfts/_bulk | 


# **getAccountNftHistory**
```swift
    open class func getAccountNftHistory(accountId: String, limit: Int, acceptLanguage: String? = nil, beforeLt: Int64? = nil, completion: @escaping (_ data: NftOperations?, _ error: Error?) -> Void)
```



Get the transfer nft history

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let limit = 987 // Int | 
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)

NFTAPI.getAccountNftHistory(accountId: accountId, limit: limit, acceptLanguage: acceptLanguage, beforeLt: beforeLt) { (response, error) in
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
 **limit** | **Int** |  | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **beforeLt** | **Int64** | omit this parameter to get last events | [optional] 

### Return type

[**NftOperations**](NftOperations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemsFromCollection**
```swift
    open class func getItemsFromCollection(accountId: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: NftItems?, _ error: Error?) -> Void)
```



Get NFT items from collection by collection address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let limit = 987 // Int |  (optional) (default to 1000)
let offset = 987 // Int |  (optional) (default to 0)

NFTAPI.getItemsFromCollection(accountId: accountId, limit: limit, offset: offset) { (response, error) in
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

[**NftItems**](NftItems.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftCollection**
```swift
    open class func getNftCollection(accountId: String, completion: @escaping (_ data: NftCollection?, _ error: Error?) -> Void)
```



Get NFT collection by collection address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

NFTAPI.getNftCollection(accountId: accountId) { (response, error) in
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

### Return type

[**NftCollection**](NftCollection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftCollectionItemsByAddresses**
```swift
    open class func getNftCollectionItemsByAddresses(getAccountsRequest: GetAccountsRequest? = nil, completion: @escaping (_ data: NftCollections?, _ error: Error?) -> Void)
```



Get NFT collection items by their addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let getAccountsRequest = getAccounts_request(accountIds: ["accountIds_example"]) // GetAccountsRequest | a list of account ids (optional)

NFTAPI.getNftCollectionItemsByAddresses(getAccountsRequest: getAccountsRequest) { (response, error) in
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
 **getAccountsRequest** | [**GetAccountsRequest**](GetAccountsRequest.md) | a list of account ids | [optional] 

### Return type

[**NftCollections**](NftCollections.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftCollections**
```swift
    open class func getNftCollections(limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: NftCollections?, _ error: Error?) -> Void)
```



Get NFT collections

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let limit = 987 // Int |  (optional) (default to 100)
let offset = 987 // Int |  (optional) (default to 0)

NFTAPI.getNftCollections(limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 100]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**NftCollections**](NftCollections.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftHistoryByID**
```swift
    open class func getNftHistoryByID(accountId: String, limit: Int, acceptLanguage: String? = nil, beforeLt: Int64? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping (_ data: AccountEvents?, _ error: Error?) -> Void)
```



Please use `getAccountNftHistory`` instead

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let limit = 987 // Int | 
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)
let startDate = 987 // Int64 |  (optional)
let endDate = 987 // Int64 |  (optional)

NFTAPI.getNftHistoryByID(accountId: accountId, limit: limit, acceptLanguage: acceptLanguage, beforeLt: beforeLt, startDate: startDate, endDate: endDate) { (response, error) in
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
 **limit** | **Int** |  | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **beforeLt** | **Int64** | omit this parameter to get last events | [optional] 
 **startDate** | **Int64** |  | [optional] 
 **endDate** | **Int64** |  | [optional] 

### Return type

[**AccountEvents**](AccountEvents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftItemByAddress**
```swift
    open class func getNftItemByAddress(accountId: String, completion: @escaping (_ data: NftItem?, _ error: Error?) -> Void)
```



Get NFT item by its address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

NFTAPI.getNftItemByAddress(accountId: accountId) { (response, error) in
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

### Return type

[**NftItem**](NftItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNftItemsByAddresses**
```swift
    open class func getNftItemsByAddresses(getAccountsRequest: GetAccountsRequest? = nil, completion: @escaping (_ data: NftItems?, _ error: Error?) -> Void)
```



Get NFT items by their addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let getAccountsRequest = getAccounts_request(accountIds: ["accountIds_example"]) // GetAccountsRequest | a list of account ids (optional)

NFTAPI.getNftItemsByAddresses(getAccountsRequest: getAccountsRequest) { (response, error) in
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
 **getAccountsRequest** | [**GetAccountsRequest**](GetAccountsRequest.md) | a list of account ids | [optional] 

### Return type

[**NftItems**](NftItems.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

