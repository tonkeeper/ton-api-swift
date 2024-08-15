# StakingAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccountNominatorsPools**](StakingAPI.md#getaccountnominatorspools) | **GET** /v2/staking/nominator/{account_id}/pools | 
[**getStakingPoolHistory**](StakingAPI.md#getstakingpoolhistory) | **GET** /v2/staking/pool/{account_id}/history | 
[**getStakingPoolInfo**](StakingAPI.md#getstakingpoolinfo) | **GET** /v2/staking/pool/{account_id} | 
[**getStakingPools**](StakingAPI.md#getstakingpools) | **GET** /v2/staking/pools | 


# **getAccountNominatorsPools**
```swift
    open class func getAccountNominatorsPools(accountId: String, completion: @escaping (_ data: AccountStaking?, _ error: Error?) -> Void)
```



All pools where account participates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

StakingAPI.getAccountNominatorsPools(accountId: accountId) { (response, error) in
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

[**AccountStaking**](AccountStaking.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStakingPoolHistory**
```swift
    open class func getStakingPoolHistory(accountId: String, completion: @escaping (_ data: GetStakingPoolHistory200Response?, _ error: Error?) -> Void)
```



Pool history

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

StakingAPI.getStakingPoolHistory(accountId: accountId) { (response, error) in
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

[**GetStakingPoolHistory200Response**](GetStakingPoolHistory200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStakingPoolInfo**
```swift
    open class func getStakingPoolInfo(accountId: String, acceptLanguage: String? = nil, completion: @escaping (_ data: GetStakingPoolInfo200Response?, _ error: Error?) -> Void)
```



Stacking pool info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

StakingAPI.getStakingPoolInfo(accountId: accountId, acceptLanguage: acceptLanguage) { (response, error) in
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

### Return type

[**GetStakingPoolInfo200Response**](GetStakingPoolInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStakingPools**
```swift
    open class func getStakingPools(availableFor: String? = nil, includeUnverified: Bool? = nil, acceptLanguage: String? = nil, completion: @escaping (_ data: GetStakingPools200Response?, _ error: Error?) -> Void)
```



All pools available in network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let availableFor = "availableFor_example" // String | account ID (optional)
let includeUnverified = false // Bool | return also pools not from white list - just compatible by interfaces (maybe dangerous!) (optional)
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

StakingAPI.getStakingPools(availableFor: availableFor, includeUnverified: includeUnverified, acceptLanguage: acceptLanguage) { (response, error) in
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
 **availableFor** | **String** | account ID | [optional] 
 **includeUnverified** | **Bool** | return also pools not from white list - just compatible by interfaces (maybe dangerous!) | [optional] 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

### Return type

[**GetStakingPools200Response**](GetStakingPools200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

