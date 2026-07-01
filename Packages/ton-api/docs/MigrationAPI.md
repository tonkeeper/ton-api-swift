# MigrationAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMigrationWallets**](MigrationAPI.md#getmigrationwallets) | **POST** /v2/migration/wallets | 
[**prepareMigration**](MigrationAPI.md#preparemigration) | **POST** /v2/migration/prepare | 


# **getMigrationWallets**
```swift
    open class func getMigrationWallets(currencies: [String]? = nil, getBlockchainRawAccountsRequest: GetBlockchainRawAccountsRequest? = nil, completion: @escaping (_ data: MigrationWallets?, _ error: Error?) -> Void)
```



Get migratable assets value (TON balance, jettons with prices, NFT count) for several wallets at once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let currencies = ["inner_example"] // [String] | accept gram and all possible fiat currencies, separated by commas (optional)
let getBlockchainRawAccountsRequest = getBlockchainRawAccounts_request(accountIds: ["accountIds_example"]) // GetBlockchainRawAccountsRequest | a list of account ids (optional)

MigrationAPI.getMigrationWallets(currencies: currencies, getBlockchainRawAccountsRequest: getBlockchainRawAccountsRequest) { (response, error) in
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
 **currencies** | [**[String]**](String.md) | accept gram and all possible fiat currencies, separated by commas | [optional] 
 **getBlockchainRawAccountsRequest** | [**GetBlockchainRawAccountsRequest**](GetBlockchainRawAccountsRequest.md) | a list of account ids | [optional] 

### Return type

[**MigrationWallets**](MigrationWallets.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prepareMigration**
```swift
    open class func prepareMigration(migrationPrepareRequest: MigrationPrepareRequest, completion: @escaping (_ data: MigrationPrepareResponse?, _ error: Error?) -> Void)
```



Prepare ordered signable transactions that migrate every asset from `from` to `to`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let migrationPrepareRequest = MigrationPrepareRequest(from: "from_example", to: "to_example", currency: "currency_example", publicKey: "publicKey_example") // MigrationPrepareRequest | 

MigrationAPI.prepareMigration(migrationPrepareRequest: migrationPrepareRequest) { (response, error) in
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
 **migrationPrepareRequest** | [**MigrationPrepareRequest**](MigrationPrepareRequest.md) |  | 

### Return type

[**MigrationPrepareResponse**](MigrationPrepareResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

