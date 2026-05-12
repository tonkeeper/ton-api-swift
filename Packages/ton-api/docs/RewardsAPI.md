# RewardsAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRewardsApy**](RewardsAPI.md#getrewardsapy) | **GET** /v2/rewards/apy | Get current TON blockchain APY
[**getRewardsStats**](RewardsAPI.md#getrewardsstats) | **GET** /v2/rewards/stats | Get historical APY and stake statistics
[**getRoundRewards**](RewardsAPI.md#getroundrewards) | **GET** /v2/rewards/round-rewards | Get per-validator reward distribution for a finished round
[**getValidationRounds**](RewardsAPI.md#getvalidationrounds) | **GET** /v2/rewards/validation-rounds | Get validation round metadata
[**getValidators**](RewardsAPI.md#getvalidators) | **GET** /v2/rewards/validators | Get all current validators


# **getRewardsApy**
```swift
    open class func getRewardsApy(completion: @escaping (_ data: Double?, _ error: Error?) -> Void)
```

Get current TON blockchain APY

Returns the current TON blockchain APY as a percent based on the latest completed validation round.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


// Get current TON blockchain APY
RewardsAPI.getRewardsApy() { (response, error) in
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

**Double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRewardsStats**
```swift
    open class func getRewardsStats(completion: @escaping (_ data: RewardsStats?, _ error: Error?) -> Void)
```

Get historical APY and stake statistics

Returns time series of APY and total stake from past validation rounds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


// Get historical APY and stake statistics
RewardsAPI.getRewardsStats() { (response, error) in
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

[**RewardsStats**](RewardsStats.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoundRewards**
```swift
    open class func getRoundRewards(electionId: Int64? = nil, block: Int? = nil, unixtime: Int? = nil, shallow: Bool? = nil, completion: @escaping (_ data: RoundRewardsResponse?, _ error: Error?) -> Void)
```

Get per-validator reward distribution for a finished round

Computes per-validator and per-nominator reward distribution for a finished validation round using the elector's bonuses value. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let electionId = 987 // Int64 | Election ID of the finished round. Mutually exclusive with `block` and `unixtime`.  (optional)
let block = 987 // Int | Masterchain block seqno within the finished round. Mutually exclusive with `election_id` and `unixtime`.  (optional)
let unixtime = 987 // Int | Unix timestamp (seconds). Looks up the masterchain block at this time and uses it as the anchor. Mutually exclusive with `election_id` and `block`.  (optional)
let shallow = true // Bool | Set to `1` to return only basic validator info (rank, pubkey, effective_stake, weight, reward, pool). Skips pool type detection, owner/validator addresses, nominator data, and returned-stake lookup — significantly faster.  (optional) (default to false)

// Get per-validator reward distribution for a finished round
RewardsAPI.getRoundRewards(electionId: electionId, block: block, unixtime: unixtime, shallow: shallow) { (response, error) in
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
 **electionId** | **Int64** | Election ID of the finished round. Mutually exclusive with &#x60;block&#x60; and &#x60;unixtime&#x60;.  | [optional] 
 **block** | **Int** | Masterchain block seqno within the finished round. Mutually exclusive with &#x60;election_id&#x60; and &#x60;unixtime&#x60;.  | [optional] 
 **unixtime** | **Int** | Unix timestamp (seconds). Looks up the masterchain block at this time and uses it as the anchor. Mutually exclusive with &#x60;election_id&#x60; and &#x60;block&#x60;.  | [optional] 
 **shallow** | **Bool** | Set to &#x60;1&#x60; to return only basic validator info (rank, pubkey, effective_stake, weight, reward, pool). Skips pool type detection, owner/validator addresses, nominator data, and returned-stake lookup — significantly faster.  | [optional] [default to false]

### Return type

[**RoundRewardsResponse**](RoundRewardsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getValidationRounds**
```swift
    open class func getValidationRounds(electionId: Int64? = nil, block: Int? = nil, unixtime: Int? = nil, completion: @escaping (_ data: ValidationRoundsResponse?, _ error: Error?) -> Void)
```

Get validation round metadata

Returns past and current validation rounds with boundaries, stakes, and bonuses. Always uses the latest masterchain block. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let electionId = 987 // Int64 | Return the single round matching this election ID. Mutually exclusive with `block` and `unixtime`.  (optional)
let block = 987 // Int | Find the round containing this masterchain block seqno and return it plus up to `limit-1` older rounds. Mutually exclusive with `election_id` and `unixtime`.  (optional)
let unixtime = 987 // Int | Unix timestamp (seconds). Looks up the masterchain block at this time and uses it as the anchor. Mutually exclusive with `election_id` and `block`.  (optional)

// Get validation round metadata
RewardsAPI.getValidationRounds(electionId: electionId, block: block, unixtime: unixtime) { (response, error) in
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
 **electionId** | **Int64** | Return the single round matching this election ID. Mutually exclusive with &#x60;block&#x60; and &#x60;unixtime&#x60;.  | [optional] 
 **block** | **Int** | Find the round containing this masterchain block seqno and return it plus up to &#x60;limit-1&#x60; older rounds. Mutually exclusive with &#x60;election_id&#x60; and &#x60;unixtime&#x60;.  | [optional] 
 **unixtime** | **Int** | Unix timestamp (seconds). Looks up the masterchain block at this time and uses it as the anchor. Mutually exclusive with &#x60;election_id&#x60; and &#x60;block&#x60;.  | [optional] 

### Return type

[**ValidationRoundsResponse**](ValidationRoundsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getValidators**
```swift
    open class func getValidators(seqno: Int? = nil, unixtime: Int? = nil, shallow: Bool? = nil, completion: @escaping (_ data: ValidatorsResponse?, _ error: Error?) -> Void)
```

Get all current validators

Returns all current validators with stakes, rewards, pool addresses, and (optionally) nominator breakdowns. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let seqno = 987 // Int | Masterchain block seqno. Defaults to latest. Mutually exclusive with `unixtime`.  (optional)
let unixtime = 987 // Int | Unix timestamp (seconds). Looks up the masterchain block at this time and uses it as the anchor. Mutually exclusive with `seqno`.  (optional)
let shallow = true // Bool | Set to `1` to return only basic validator info (rank, pubkey, effective_stake, weight, reward, pool). Skips pool type detection, owner/validator addresses, nominator data, and returned-stake lookup — significantly faster.  (optional) (default to false)

// Get all current validators
RewardsAPI.getValidators(seqno: seqno, unixtime: unixtime, shallow: shallow) { (response, error) in
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
 **seqno** | **Int** | Masterchain block seqno. Defaults to latest. Mutually exclusive with &#x60;unixtime&#x60;.  | [optional] 
 **unixtime** | **Int** | Unix timestamp (seconds). Looks up the masterchain block at this time and uses it as the anchor. Mutually exclusive with &#x60;seqno&#x60;.  | [optional] 
 **shallow** | **Bool** | Set to &#x60;1&#x60; to return only basic validator info (rank, pubkey, effective_stake, weight, reward, pool). Skips pool type detection, owner/validator addresses, nominator data, and returned-stake lookup — significantly faster.  | [optional] [default to false]

### Return type

[**ValidatorsResponse**](ValidatorsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

