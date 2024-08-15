# AccountsAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountDnsBackResolve**](AccountsAPI.md#accountdnsbackresolve) | **GET** /v2/accounts/{account_id}/dns/backresolve | 
[**addressParse**](AccountsAPI.md#addressparse) | **GET** /v2/address/{account_id}/parse | 
[**getAccount**](AccountsAPI.md#getaccount) | **GET** /v2/accounts/{account_id} | 
[**getAccountDiff**](AccountsAPI.md#getaccountdiff) | **GET** /v2/accounts/{account_id}/diff | 
[**getAccountDnsExpiring**](AccountsAPI.md#getaccountdnsexpiring) | **GET** /v2/accounts/{account_id}/dns/expiring | 
[**getAccountEvent**](AccountsAPI.md#getaccountevent) | **GET** /v2/accounts/{account_id}/events/{event_id} | 
[**getAccountEvents**](AccountsAPI.md#getaccountevents) | **GET** /v2/accounts/{account_id}/events | 
[**getAccountJettonBalance**](AccountsAPI.md#getaccountjettonbalance) | **GET** /v2/accounts/{account_id}/jettons/{jetton_id} | 
[**getAccountJettonHistoryByID**](AccountsAPI.md#getaccountjettonhistorybyid) | **GET** /v2/accounts/{account_id}/jettons/{jetton_id}/history | 
[**getAccountJettonsBalances**](AccountsAPI.md#getaccountjettonsbalances) | **GET** /v2/accounts/{account_id}/jettons | 
[**getAccountJettonsHistory**](AccountsAPI.md#getaccountjettonshistory) | **GET** /v2/accounts/{account_id}/jettons/history | 
[**getAccountMultisigs**](AccountsAPI.md#getaccountmultisigs) | **GET** /v2/accounts/{account_id}/multisigs | 
[**getAccountNftItems**](AccountsAPI.md#getaccountnftitems) | **GET** /v2/accounts/{account_id}/nfts | 
[**getAccountPublicKey**](AccountsAPI.md#getaccountpublickey) | **GET** /v2/accounts/{account_id}/publickey | 
[**getAccountSubscriptions**](AccountsAPI.md#getaccountsubscriptions) | **GET** /v2/accounts/{account_id}/subscriptions | 
[**getAccountTraces**](AccountsAPI.md#getaccounttraces) | **GET** /v2/accounts/{account_id}/traces | 
[**getAccounts**](AccountsAPI.md#getaccounts) | **POST** /v2/accounts/_bulk | 
[**reindexAccount**](AccountsAPI.md#reindexaccount) | **POST** /v2/accounts/{account_id}/reindex | 
[**searchAccounts**](AccountsAPI.md#searchaccounts) | **GET** /v2/accounts/search | 


# **accountDnsBackResolve**
```swift
    open class func accountDnsBackResolve(accountId: String, completion: @escaping (_ data: DomainNames?, _ error: Error?) -> Void)
```



Get account's domains

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.accountDnsBackResolve(accountId: accountId) { (response, error) in
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

[**DomainNames**](DomainNames.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressParse**
```swift
    open class func addressParse(accountId: String, completion: @escaping (_ data: AddressParse200Response?, _ error: Error?) -> Void)
```



parse address and display in all formats

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.addressParse(accountId: accountId) { (response, error) in
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

[**AddressParse200Response**](AddressParse200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
```swift
    open class func getAccount(accountId: String, completion: @escaping (_ data: Account?, _ error: Error?) -> Void)
```



Get human-friendly information about an account without low-level details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.getAccount(accountId: accountId) { (response, error) in
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

[**Account**](Account.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountDiff**
```swift
    open class func getAccountDiff(accountId: String, startDate: Int64, endDate: Int64, completion: @escaping (_ data: GetAccountDiff200Response?, _ error: Error?) -> Void)
```



Get account's balance change

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let startDate = 987 // Int64 | 
let endDate = 987 // Int64 | 

AccountsAPI.getAccountDiff(accountId: accountId, startDate: startDate, endDate: endDate) { (response, error) in
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
 **startDate** | **Int64** |  | 
 **endDate** | **Int64** |  | 

### Return type

[**GetAccountDiff200Response**](GetAccountDiff200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountDnsExpiring**
```swift
    open class func getAccountDnsExpiring(accountId: String, period: Int? = nil, completion: @escaping (_ data: DnsExpiring?, _ error: Error?) -> Void)
```



Get expiring account .ton dns

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let period = 987 // Int | number of days before expiration (optional)

AccountsAPI.getAccountDnsExpiring(accountId: accountId, period: period) { (response, error) in
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
 **period** | **Int** | number of days before expiration | [optional] 

### Return type

[**DnsExpiring**](DnsExpiring.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountEvent**
```swift
    open class func getAccountEvent(accountId: String, eventId: String, acceptLanguage: String? = nil, subjectOnly: Bool? = nil, completion: @escaping (_ data: AccountEvent?, _ error: Error?) -> Void)
```



Get event for an account by event_id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let eventId = "eventId_example" // String | event ID or transaction hash in hex (without 0x) or base64url format
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let subjectOnly = true // Bool | filter actions where requested account is not real subject (for example sender or receiver jettons) (optional) (default to false)

AccountsAPI.getAccountEvent(accountId: accountId, eventId: eventId, acceptLanguage: acceptLanguage, subjectOnly: subjectOnly) { (response, error) in
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
 **eventId** | **String** | event ID or transaction hash in hex (without 0x) or base64url format | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **subjectOnly** | **Bool** | filter actions where requested account is not real subject (for example sender or receiver jettons) | [optional] [default to false]

### Return type

[**AccountEvent**](AccountEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountEvents**
```swift
    open class func getAccountEvents(accountId: String, limit: Int, acceptLanguage: String? = nil, initiator: Bool? = nil, subjectOnly: Bool? = nil, beforeLt: Int64? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping (_ data: AccountEvents?, _ error: Error?) -> Void)
```



Get events for an account. Each event is built on top of a trace which is a series of transactions caused by one inbound message. TonAPI looks for known patterns inside the trace and splits the trace into actions, where a single action represents a meaningful high-level operation like a Jetton Transfer or an NFT Purchase. Actions are expected to be shown to users. It is advised not to build any logic on top of actions because actions can be changed at any time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let limit = 987 // Int | 
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let initiator = true // Bool | Show only events that are initiated by this account (optional) (default to false)
let subjectOnly = true // Bool | filter actions where requested account is not real subject (for example sender or receiver jettons) (optional) (default to false)
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)
let startDate = 987 // Int64 |  (optional)
let endDate = 987 // Int64 |  (optional)

AccountsAPI.getAccountEvents(accountId: accountId, limit: limit, acceptLanguage: acceptLanguage, initiator: initiator, subjectOnly: subjectOnly, beforeLt: beforeLt, startDate: startDate, endDate: endDate) { (response, error) in
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
 **initiator** | **Bool** | Show only events that are initiated by this account | [optional] [default to false]
 **subjectOnly** | **Bool** | filter actions where requested account is not real subject (for example sender or receiver jettons) | [optional] [default to false]
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

# **getAccountJettonBalance**
```swift
    open class func getAccountJettonBalance(accountId: String, jettonId: String, currencies: [String]? = nil, completion: @escaping (_ data: JettonBalance?, _ error: Error?) -> Void)
```



Get Jetton balance by owner address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let jettonId = "jettonId_example" // String | jetton ID
let currencies = ["inner_example"] // [String] | accept ton and all possible fiat currencies, separated by commas (optional)

AccountsAPI.getAccountJettonBalance(accountId: accountId, jettonId: jettonId, currencies: currencies) { (response, error) in
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
 **jettonId** | **String** | jetton ID | 
 **currencies** | [**[String]**](String.md) | accept ton and all possible fiat currencies, separated by commas | [optional] 

### Return type

[**JettonBalance**](JettonBalance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountJettonHistoryByID**
```swift
    open class func getAccountJettonHistoryByID(accountId: String, jettonId: String, limit: Int, acceptLanguage: String? = nil, beforeLt: Int64? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping (_ data: AccountEvents?, _ error: Error?) -> Void)
```



Get the transfer jetton history for account and jetton

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let jettonId = "jettonId_example" // String | jetton ID
let limit = 987 // Int | 
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)
let startDate = 987 // Int64 |  (optional)
let endDate = 987 // Int64 |  (optional)

AccountsAPI.getAccountJettonHistoryByID(accountId: accountId, jettonId: jettonId, limit: limit, acceptLanguage: acceptLanguage, beforeLt: beforeLt, startDate: startDate, endDate: endDate) { (response, error) in
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
 **jettonId** | **String** | jetton ID | 
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

# **getAccountJettonsBalances**
```swift
    open class func getAccountJettonsBalances(accountId: String, currencies: [String]? = nil, supportedExtensions: [String]? = nil, completion: @escaping (_ data: JettonsBalances?, _ error: Error?) -> Void)
```



Get all Jettons balances by owner address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let currencies = ["inner_example"] // [String] | accept ton and all possible fiat currencies, separated by commas (optional)
let supportedExtensions = ["inner_example"] // [String] | comma separated list supported extensions (optional)

AccountsAPI.getAccountJettonsBalances(accountId: accountId, currencies: currencies, supportedExtensions: supportedExtensions) { (response, error) in
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
 **currencies** | [**[String]**](String.md) | accept ton and all possible fiat currencies, separated by commas | [optional] 
 **supportedExtensions** | [**[String]**](String.md) | comma separated list supported extensions | [optional] 

### Return type

[**JettonsBalances**](JettonsBalances.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountJettonsHistory**
```swift
    open class func getAccountJettonsHistory(accountId: String, limit: Int, acceptLanguage: String? = nil, beforeLt: Int64? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping (_ data: AccountEvents?, _ error: Error?) -> Void)
```



Get the transfer jettons history for account

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

AccountsAPI.getAccountJettonsHistory(accountId: accountId, limit: limit, acceptLanguage: acceptLanguage, beforeLt: beforeLt, startDate: startDate, endDate: endDate) { (response, error) in
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

# **getAccountMultisigs**
```swift
    open class func getAccountMultisigs(accountId: String, completion: @escaping (_ data: Multisigs?, _ error: Error?) -> Void)
```



Get account's multisigs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.getAccountMultisigs(accountId: accountId) { (response, error) in
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

[**Multisigs**](Multisigs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountNftItems**
```swift
    open class func getAccountNftItems(accountId: String, collection: String? = nil, limit: Int? = nil, offset: Int? = nil, indirectOwnership: Bool? = nil, completion: @escaping (_ data: NftItems?, _ error: Error?) -> Void)
```



Get all NFT items by owner address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let collection = "collection_example" // String | nft collection (optional)
let limit = 987 // Int |  (optional) (default to 1000)
let offset = 987 // Int |  (optional) (default to 0)
let indirectOwnership = true // Bool | Selling nft items in ton implemented usually via transfer items to special selling account. This option enables including items which owned not directly. (optional) (default to false)

AccountsAPI.getAccountNftItems(accountId: accountId, collection: collection, limit: limit, offset: offset, indirectOwnership: indirectOwnership) { (response, error) in
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
 **collection** | **String** | nft collection | [optional] 
 **limit** | **Int** |  | [optional] [default to 1000]
 **offset** | **Int** |  | [optional] [default to 0]
 **indirectOwnership** | **Bool** | Selling nft items in ton implemented usually via transfer items to special selling account. This option enables including items which owned not directly. | [optional] [default to false]

### Return type

[**NftItems**](NftItems.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountPublicKey**
```swift
    open class func getAccountPublicKey(accountId: String, completion: @escaping (_ data: GetAccountPublicKey200Response?, _ error: Error?) -> Void)
```



Get public key by account id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.getAccountPublicKey(accountId: accountId) { (response, error) in
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

[**GetAccountPublicKey200Response**](GetAccountPublicKey200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountSubscriptions**
```swift
    open class func getAccountSubscriptions(accountId: String, completion: @escaping (_ data: Subscriptions?, _ error: Error?) -> Void)
```



Get all subscriptions by wallet address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.getAccountSubscriptions(accountId: accountId) { (response, error) in
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

[**Subscriptions**](Subscriptions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTraces**
```swift
    open class func getAccountTraces(accountId: String, beforeLt: Int64? = nil, limit: Int? = nil, completion: @escaping (_ data: TraceIDs?, _ error: Error?) -> Void)
```



Get traces for account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let beforeLt = 987 // Int64 | omit this parameter to get last events (optional)
let limit = 987 // Int |  (optional) (default to 100)

AccountsAPI.getAccountTraces(accountId: accountId, beforeLt: beforeLt, limit: limit) { (response, error) in
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
 **beforeLt** | **Int64** | omit this parameter to get last events | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**TraceIDs**](TraceIDs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccounts**
```swift
    open class func getAccounts(currency: String? = nil, getAccountsRequest: GetAccountsRequest? = nil, completion: @escaping (_ data: Accounts?, _ error: Error?) -> Void)
```



Get human-friendly information about several accounts without low-level details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let currency = "currency_example" // String |  (optional)
let getAccountsRequest = getAccounts_request(accountIds: ["accountIds_example"]) // GetAccountsRequest | a list of account ids (optional)

AccountsAPI.getAccounts(currency: currency, getAccountsRequest: getAccountsRequest) { (response, error) in
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
 **currency** | **String** |  | [optional] 
 **getAccountsRequest** | [**GetAccountsRequest**](GetAccountsRequest.md) | a list of account ids | [optional] 

### Return type

[**Accounts**](Accounts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reindexAccount**
```swift
    open class func reindexAccount(accountId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Update internal cache for a particular account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

AccountsAPI.reindexAccount(accountId: accountId) { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAccounts**
```swift
    open class func searchAccounts(name: String, completion: @escaping (_ data: FoundAccounts?, _ error: Error?) -> Void)
```



Search by account domain name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let name = "name_example" // String | 

AccountsAPI.searchAccounts(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

[**FoundAccounts**](FoundAccounts.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

