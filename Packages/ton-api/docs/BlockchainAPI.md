# BlockchainAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blockchainAccountInspect**](BlockchainAPI.md#blockchainaccountinspect) | **GET** /v2/blockchain/accounts/{account_id}/inspect | 
[**downloadBlockchainBlockBoc**](BlockchainAPI.md#downloadblockchainblockboc) | **GET** /v2/blockchain/blocks/{block_id}/boc | 
[**execGetMethodForBlockchainAccount**](BlockchainAPI.md#execgetmethodforblockchainaccount) | **GET** /v2/blockchain/accounts/{account_id}/methods/{method_name} | 
[**execGetMethodWithBodyForBlockchainAccount**](BlockchainAPI.md#execgetmethodwithbodyforblockchainaccount) | **POST** /v2/blockchain/accounts/{account_id}/methods/{method_name} | 
[**getBlockchainAccountTransactions**](BlockchainAPI.md#getblockchainaccounttransactions) | **GET** /v2/blockchain/accounts/{account_id}/transactions | 
[**getBlockchainBlock**](BlockchainAPI.md#getblockchainblock) | **GET** /v2/blockchain/blocks/{block_id} | 
[**getBlockchainBlockTransactions**](BlockchainAPI.md#getblockchainblocktransactions) | **GET** /v2/blockchain/blocks/{block_id}/transactions | 
[**getBlockchainConfig**](BlockchainAPI.md#getblockchainconfig) | **GET** /v2/blockchain/config | 
[**getBlockchainConfigFromBlock**](BlockchainAPI.md#getblockchainconfigfromblock) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/config | 
[**getBlockchainMasterchainBlocks**](BlockchainAPI.md#getblockchainmasterchainblocks) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/blocks | 
[**getBlockchainMasterchainHead**](BlockchainAPI.md#getblockchainmasterchainhead) | **GET** /v2/blockchain/masterchain-head | 
[**getBlockchainMasterchainShards**](BlockchainAPI.md#getblockchainmasterchainshards) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/shards | 
[**getBlockchainMasterchainTransactions**](BlockchainAPI.md#getblockchainmasterchaintransactions) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/transactions | 
[**getBlockchainRawAccount**](BlockchainAPI.md#getblockchainrawaccount) | **GET** /v2/blockchain/accounts/{account_id} | 
[**getBlockchainTransaction**](BlockchainAPI.md#getblockchaintransaction) | **GET** /v2/blockchain/transactions/{transaction_id} | 
[**getBlockchainTransactionByMessageHash**](BlockchainAPI.md#getblockchaintransactionbymessagehash) | **GET** /v2/blockchain/messages/{msg_id}/transaction | 
[**getBlockchainValidators**](BlockchainAPI.md#getblockchainvalidators) | **GET** /v2/blockchain/validators | 
[**getLibraryByHash**](BlockchainAPI.md#getlibrarybyhash) | **GET** /v2/blockchain/libraries/{hash} | 
[**getRawBlockchainConfig**](BlockchainAPI.md#getrawblockchainconfig) | **GET** /v2/blockchain/config/raw | 
[**getRawBlockchainConfigFromBlock**](BlockchainAPI.md#getrawblockchainconfigfromblock) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/config/raw | 
[**getReducedBlockchainBlocks**](BlockchainAPI.md#getreducedblockchainblocks) | **GET** /v2/blockchain/reduced/blocks | 
[**sendBlockchainMessage**](BlockchainAPI.md#sendblockchainmessage) | **POST** /v2/blockchain/message | 


# **blockchainAccountInspect**
```swift
    open class func blockchainAccountInspect(accountId: String, xCapability: XCapability_blockchainAccountInspect? = nil, completion: @escaping (_ data: BlockchainAccountInspect?, _ error: Error?) -> Void)
```



Blockchain account inspect

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.blockchainAccountInspect(accountId: accountId, xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainAccountInspect**](BlockchainAccountInspect.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadBlockchainBlockBoc**
```swift
    open class func downloadBlockchainBlockBoc(blockId: String, xCapability: XCapability_downloadBlockchainBlockBoc? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Download blockchain block BOC

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.downloadBlockchainBlockBoc(blockId: blockId, xCapability: xCapability) { (response, error) in
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
 **blockId** | **String** | block ID | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execGetMethodForBlockchainAccount**
```swift
    open class func execGetMethodForBlockchainAccount(accountId: String, methodName: String, xCapability: XCapability_execGetMethodForBlockchainAccount? = nil, args: [String]? = nil, completion: @escaping (_ data: MethodExecutionResult?, _ error: Error?) -> Void)
```



Execute get method for account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let methodName = "methodName_example" // String | contract get method name
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let args = ["inner_example"] // [String] |  (optional)

BlockchainAPI.execGetMethodForBlockchainAccount(accountId: accountId, methodName: methodName, xCapability: xCapability, args: args) { (response, error) in
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
 **methodName** | **String** | contract get method name | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **args** | [**[String]**](String.md) |  | [optional] 

### Return type

[**MethodExecutionResult**](MethodExecutionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execGetMethodWithBodyForBlockchainAccount**
```swift
    open class func execGetMethodWithBodyForBlockchainAccount(accountId: String, methodName: String, xCapability: XCapability_execGetMethodWithBodyForBlockchainAccount? = nil, execGetMethodWithBodyForBlockchainAccountRequest: ExecGetMethodWithBodyForBlockchainAccountRequest? = nil, completion: @escaping (_ data: MethodExecutionResult?, _ error: Error?) -> Void)
```



Execute get method for account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let methodName = "methodName_example" // String | contract get method name
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let execGetMethodWithBodyForBlockchainAccountRequest = execGetMethodWithBodyForBlockchainAccount_request(args: [ExecGetMethodArg(type: ExecGetMethodArgType(), value: "value_example")]) // ExecGetMethodWithBodyForBlockchainAccountRequest | Request body for executing a GET method on a blockchain account via POST. This format allows passing arguments in the request body instead of query parameters, which is especially useful for large or complex input data.  (optional)

BlockchainAPI.execGetMethodWithBodyForBlockchainAccount(accountId: accountId, methodName: methodName, xCapability: xCapability, execGetMethodWithBodyForBlockchainAccountRequest: execGetMethodWithBodyForBlockchainAccountRequest) { (response, error) in
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
 **methodName** | **String** | contract get method name | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **execGetMethodWithBodyForBlockchainAccountRequest** | [**ExecGetMethodWithBodyForBlockchainAccountRequest**](ExecGetMethodWithBodyForBlockchainAccountRequest.md) | Request body for executing a GET method on a blockchain account via POST. This format allows passing arguments in the request body instead of query parameters, which is especially useful for large or complex input data.  | [optional] 

### Return type

[**MethodExecutionResult**](MethodExecutionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainAccountTransactions**
```swift
    open class func getBlockchainAccountTransactions(accountId: String, xCapability: XCapability_getBlockchainAccountTransactions? = nil, afterLt: Int64? = nil, beforeLt: Int64? = nil, limit: Int? = nil, sortOrder: SortOrder_getBlockchainAccountTransactions? = nil, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



Get account transactions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let afterLt = 987 // Int64 | omit this parameter to get last transactions (optional)
let beforeLt = 987 // Int64 | omit this parameter to get last transactions (optional)
let limit = 987 // Int |  (optional) (default to 100)
let sortOrder = "sortOrder_example" // String |  (optional) (default to .desc)

BlockchainAPI.getBlockchainAccountTransactions(accountId: accountId, xCapability: xCapability, afterLt: afterLt, beforeLt: beforeLt, limit: limit, sortOrder: sortOrder) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **afterLt** | **Int64** | omit this parameter to get last transactions | [optional] 
 **beforeLt** | **Int64** | omit this parameter to get last transactions | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]
 **sortOrder** | **String** |  | [optional] [default to .desc]

### Return type

[**Transactions**](Transactions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainBlock**
```swift
    open class func getBlockchainBlock(blockId: String, xCapability: XCapability_getBlockchainBlock? = nil, completion: @escaping (_ data: BlockchainBlock?, _ error: Error?) -> Void)
```



Get blockchain block data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainBlock(blockId: blockId, xCapability: xCapability) { (response, error) in
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
 **blockId** | **String** | block ID | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainBlock**](BlockchainBlock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainBlockTransactions**
```swift
    open class func getBlockchainBlockTransactions(blockId: String, xCapability: XCapability_getBlockchainBlockTransactions? = nil, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



Get transactions from block

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainBlockTransactions(blockId: blockId, xCapability: xCapability) { (response, error) in
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
 **blockId** | **String** | block ID | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**Transactions**](Transactions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainConfig**
```swift
    open class func getBlockchainConfig(xCapability: XCapability_getBlockchainConfig? = nil, completion: @escaping (_ data: BlockchainConfig?, _ error: Error?) -> Void)
```



Get blockchain config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainConfig(xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainConfig**](BlockchainConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainConfigFromBlock**
```swift
    open class func getBlockchainConfigFromBlock(masterchainSeqno: Int, xCapability: XCapability_getBlockchainConfigFromBlock? = nil, completion: @escaping (_ data: BlockchainConfig?, _ error: Error?) -> Void)
```



Get blockchain config from a specific block, if present.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainConfigFromBlock(masterchainSeqno: masterchainSeqno, xCapability: xCapability) { (response, error) in
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
 **masterchainSeqno** | **Int** | masterchain block seqno | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainConfig**](BlockchainConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainMasterchainBlocks**
```swift
    open class func getBlockchainMasterchainBlocks(masterchainSeqno: Int, xCapability: XCapability_getBlockchainMasterchainBlocks? = nil, completion: @escaping (_ data: BlockchainBlocks?, _ error: Error?) -> Void)
```



Get all blocks in all shards and workchains between target and previous masterchain block according to shards last blocks snapshot in masterchain.  We don't recommend to build your app around this method because it has problem with scalability and will work very slow in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainMasterchainBlocks(masterchainSeqno: masterchainSeqno, xCapability: xCapability) { (response, error) in
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
 **masterchainSeqno** | **Int** | masterchain block seqno | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainBlocks**](BlockchainBlocks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainMasterchainHead**
```swift
    open class func getBlockchainMasterchainHead(xCapability: XCapability_getBlockchainMasterchainHead? = nil, completion: @escaping (_ data: BlockchainBlock?, _ error: Error?) -> Void)
```



Get last known masterchain block

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainMasterchainHead(xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainBlock**](BlockchainBlock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainMasterchainShards**
```swift
    open class func getBlockchainMasterchainShards(masterchainSeqno: Int, xCapability: XCapability_getBlockchainMasterchainShards? = nil, completion: @escaping (_ data: BlockchainBlockShards?, _ error: Error?) -> Void)
```



Get blockchain block shards

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainMasterchainShards(masterchainSeqno: masterchainSeqno, xCapability: xCapability) { (response, error) in
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
 **masterchainSeqno** | **Int** | masterchain block seqno | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainBlockShards**](BlockchainBlockShards.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainMasterchainTransactions**
```swift
    open class func getBlockchainMasterchainTransactions(masterchainSeqno: Int, xCapability: XCapability_getBlockchainMasterchainTransactions? = nil, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



Get all transactions in all shards and workchains between target and previous masterchain block according to shards last blocks snapshot in masterchain. We don't recommend to build your app around this method because it has problem with scalability and will work very slow in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainMasterchainTransactions(masterchainSeqno: masterchainSeqno, xCapability: xCapability) { (response, error) in
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
 **masterchainSeqno** | **Int** | masterchain block seqno | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**Transactions**](Transactions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainRawAccount**
```swift
    open class func getBlockchainRawAccount(accountId: String, xCapability: XCapability_getBlockchainRawAccount? = nil, completion: @escaping (_ data: BlockchainRawAccount?, _ error: Error?) -> Void)
```



Get low-level information about an account taken directly from the blockchain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainRawAccount(accountId: accountId, xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainRawAccount**](BlockchainRawAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainTransaction**
```swift
    open class func getBlockchainTransaction(transactionId: String, xCapability: XCapability_getBlockchainTransaction? = nil, completion: @escaping (_ data: Transaction?, _ error: Error?) -> Void)
```



Get transaction data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let transactionId = "transactionId_example" // String | transaction ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainTransaction(transactionId: transactionId, xCapability: xCapability) { (response, error) in
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
 **transactionId** | **String** | transaction ID | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainTransactionByMessageHash**
```swift
    open class func getBlockchainTransactionByMessageHash(msgId: String, xCapability: XCapability_getBlockchainTransactionByMessageHash? = nil, completion: @escaping (_ data: Transaction?, _ error: Error?) -> Void)
```



Get transaction data by message hash

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let msgId = "msgId_example" // String | message ID
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainTransactionByMessageHash(msgId: msgId, xCapability: xCapability) { (response, error) in
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
 **msgId** | **String** | message ID | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainValidators**
```swift
    open class func getBlockchainValidators(xCapability: XCapability_getBlockchainValidators? = nil, completion: @escaping (_ data: Validators?, _ error: Error?) -> Void)
```



Get blockchain validators

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getBlockchainValidators(xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**Validators**](Validators.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryByHash**
```swift
    open class func getLibraryByHash(hash: String, xCapability: XCapability_getLibraryByHash? = nil, completion: @escaping (_ data: BlockchainLibrary?, _ error: Error?) -> Void)
```



Get library cell

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let hash = "hash_example" // String | hash in hex (without 0x) format
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getLibraryByHash(hash: hash, xCapability: xCapability) { (response, error) in
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
 **hash** | **String** | hash in hex (without 0x) format | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**BlockchainLibrary**](BlockchainLibrary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainConfig**
```swift
    open class func getRawBlockchainConfig(xCapability: XCapability_getRawBlockchainConfig? = nil, completion: @escaping (_ data: RawBlockchainConfig?, _ error: Error?) -> Void)
```



Get raw blockchain config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getRawBlockchainConfig(xCapability: xCapability) { (response, error) in
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
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**RawBlockchainConfig**](RawBlockchainConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainConfigFromBlock**
```swift
    open class func getRawBlockchainConfigFromBlock(masterchainSeqno: Int, xCapability: XCapability_getRawBlockchainConfigFromBlock? = nil, completion: @escaping (_ data: RawBlockchainConfig?, _ error: Error?) -> Void)
```



Get raw blockchain config from a specific block, if present.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getRawBlockchainConfigFromBlock(masterchainSeqno: masterchainSeqno, xCapability: xCapability) { (response, error) in
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
 **masterchainSeqno** | **Int** | masterchain block seqno | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**RawBlockchainConfig**](RawBlockchainConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReducedBlockchainBlocks**
```swift
    open class func getReducedBlockchainBlocks(from: Int64, to: Int64, xCapability: XCapability_getReducedBlockchainBlocks? = nil, completion: @escaping (_ data: ReducedBlocks?, _ error: Error?) -> Void)
```



Get reduced blockchain blocks data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let from = 987 // Int64 | 
let to = 987 // Int64 | 
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.getReducedBlockchainBlocks(from: from, to: to, xCapability: xCapability) { (response, error) in
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
 **from** | **Int64** |  | 
 **to** | **Int64** |  | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**ReducedBlocks**](ReducedBlocks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendBlockchainMessage**
```swift
    open class func sendBlockchainMessage(sendBlockchainMessageRequest: SendBlockchainMessageRequest, xCapability: XCapability_sendBlockchainMessage? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Send message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let sendBlockchainMessageRequest = sendBlockchainMessage_request(boc: "boc_example", batch: ["batch_example"], meta: "TODO") // SendBlockchainMessageRequest | both a single boc and a batch of boc serialized in base64/hex are accepted
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

BlockchainAPI.sendBlockchainMessage(sendBlockchainMessageRequest: sendBlockchainMessageRequest, xCapability: xCapability) { (response, error) in
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
 **sendBlockchainMessageRequest** | [**SendBlockchainMessageRequest**](SendBlockchainMessageRequest.md) | both a single boc and a batch of boc serialized in base64/hex are accepted | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

