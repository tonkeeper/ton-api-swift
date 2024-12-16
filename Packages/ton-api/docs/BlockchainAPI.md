# BlockchainAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blockchainAccountInspect**](BlockchainAPI.md#blockchainaccountinspect) | **GET** /v2/blockchain/accounts/{account_id}/inspect | 
[**execGetMethodForBlockchainAccount**](BlockchainAPI.md#execgetmethodforblockchainaccount) | **GET** /v2/blockchain/accounts/{account_id}/methods/{method_name} | 
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
[**getRawBlockchainConfig**](BlockchainAPI.md#getrawblockchainconfig) | **GET** /v2/blockchain/config/raw | 
[**getRawBlockchainConfigFromBlock**](BlockchainAPI.md#getrawblockchainconfigfromblock) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/config/raw | 
[**getReducedBlockchainBlocks**](BlockchainAPI.md#getreducedblockchainblocks) | **GET** /v2/blockchain/reduced/blocks | 
[**sendBlockchainMessage**](BlockchainAPI.md#sendblockchainmessage) | **POST** /v2/blockchain/message | 


# **blockchainAccountInspect**
```swift
    open class func blockchainAccountInspect(accountId: String, completion: @escaping (_ data: BlockchainAccountInspect?, _ error: Error?) -> Void)
```



Blockchain account inspect

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

BlockchainAPI.blockchainAccountInspect(accountId: accountId) { (response, error) in
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

[**BlockchainAccountInspect**](BlockchainAccountInspect.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execGetMethodForBlockchainAccount**
```swift
    open class func execGetMethodForBlockchainAccount(accountId: String, methodName: String, args: [String]? = nil, fixOrder: Bool? = nil, completion: @escaping (_ data: MethodExecutionResult?, _ error: Error?) -> Void)
```



Execute get method for account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let methodName = "methodName_example" // String | contract get method name
let args = ["inner_example"] // [String] |  (optional)
let fixOrder = true // Bool |  (optional) (default to true)

BlockchainAPI.execGetMethodForBlockchainAccount(accountId: accountId, methodName: methodName, args: args, fixOrder: fixOrder) { (response, error) in
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
 **args** | [**[String]**](String.md) |  | [optional] 
 **fixOrder** | **Bool** |  | [optional] [default to true]

### Return type

[**MethodExecutionResult**](MethodExecutionResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainAccountTransactions**
```swift
    open class func getBlockchainAccountTransactions(accountId: String, afterLt: Int64? = nil, beforeLt: Int64? = nil, limit: Int? = nil, sortOrder: SortOrder_getBlockchainAccountTransactions? = nil, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



Get account transactions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let afterLt = 987 // Int64 | omit this parameter to get last transactions (optional)
let beforeLt = 987 // Int64 | omit this parameter to get last transactions (optional)
let limit = 987 // Int |  (optional) (default to 100)
let sortOrder = "sortOrder_example" // String |  (optional) (default to .desc)

BlockchainAPI.getBlockchainAccountTransactions(accountId: accountId, afterLt: afterLt, beforeLt: beforeLt, limit: limit, sortOrder: sortOrder) { (response, error) in
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
    open class func getBlockchainBlock(blockId: String, completion: @escaping (_ data: BlockchainBlock?, _ error: Error?) -> Void)
```



Get blockchain block data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID

BlockchainAPI.getBlockchainBlock(blockId: blockId) { (response, error) in
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
    open class func getBlockchainBlockTransactions(blockId: String, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



Get transactions from block

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID

BlockchainAPI.getBlockchainBlockTransactions(blockId: blockId) { (response, error) in
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
    open class func getBlockchainConfig(completion: @escaping (_ data: BlockchainConfig?, _ error: Error?) -> Void)
```



Get blockchain config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


BlockchainAPI.getBlockchainConfig() { (response, error) in
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

[**BlockchainConfig**](BlockchainConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainConfigFromBlock**
```swift
    open class func getBlockchainConfigFromBlock(masterchainSeqno: Int, completion: @escaping (_ data: BlockchainConfig?, _ error: Error?) -> Void)
```



Get blockchain config from a specific block, if present.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno

BlockchainAPI.getBlockchainConfigFromBlock(masterchainSeqno: masterchainSeqno) { (response, error) in
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
    open class func getBlockchainMasterchainBlocks(masterchainSeqno: Int, completion: @escaping (_ data: BlockchainBlocks?, _ error: Error?) -> Void)
```



Get all blocks in all shards and workchains between target and previous masterchain block according to shards last blocks snapshot in masterchain.  We don't recommend to build your app around this method because it has problem with scalability and will work very slow in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno

BlockchainAPI.getBlockchainMasterchainBlocks(masterchainSeqno: masterchainSeqno) { (response, error) in
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
    open class func getBlockchainMasterchainHead(completion: @escaping (_ data: BlockchainBlock?, _ error: Error?) -> Void)
```



Get last known masterchain block

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


BlockchainAPI.getBlockchainMasterchainHead() { (response, error) in
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

[**BlockchainBlock**](BlockchainBlock.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainMasterchainShards**
```swift
    open class func getBlockchainMasterchainShards(masterchainSeqno: Int, completion: @escaping (_ data: BlockchainBlockShards?, _ error: Error?) -> Void)
```



Get blockchain block shards

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno

BlockchainAPI.getBlockchainMasterchainShards(masterchainSeqno: masterchainSeqno) { (response, error) in
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
    open class func getBlockchainMasterchainTransactions(masterchainSeqno: Int, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



Get all transactions in all shards and workchains between target and previous masterchain block according to shards last blocks snapshot in masterchain. We don't recommend to build your app around this method because it has problem with scalability and will work very slow in the future.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno

BlockchainAPI.getBlockchainMasterchainTransactions(masterchainSeqno: masterchainSeqno) { (response, error) in
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
    open class func getBlockchainRawAccount(accountId: String, completion: @escaping (_ data: BlockchainRawAccount?, _ error: Error?) -> Void)
```



Get low-level information about an account taken directly from the blockchain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID

BlockchainAPI.getBlockchainRawAccount(accountId: accountId) { (response, error) in
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

[**BlockchainRawAccount**](BlockchainRawAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockchainTransaction**
```swift
    open class func getBlockchainTransaction(transactionId: String, completion: @escaping (_ data: Transaction?, _ error: Error?) -> Void)
```



Get transaction data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let transactionId = "transactionId_example" // String | transaction ID

BlockchainAPI.getBlockchainTransaction(transactionId: transactionId) { (response, error) in
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
    open class func getBlockchainTransactionByMessageHash(msgId: String, completion: @escaping (_ data: Transaction?, _ error: Error?) -> Void)
```



Get transaction data by message hash

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let msgId = "msgId_example" // String | message ID

BlockchainAPI.getBlockchainTransactionByMessageHash(msgId: msgId) { (response, error) in
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
    open class func getBlockchainValidators(completion: @escaping (_ data: Validators?, _ error: Error?) -> Void)
```



Get blockchain validators

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


BlockchainAPI.getBlockchainValidators() { (response, error) in
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

[**Validators**](Validators.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainConfig**
```swift
    open class func getRawBlockchainConfig(completion: @escaping (_ data: RawBlockchainConfig?, _ error: Error?) -> Void)
```



Get raw blockchain config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


BlockchainAPI.getRawBlockchainConfig() { (response, error) in
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

[**RawBlockchainConfig**](RawBlockchainConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainConfigFromBlock**
```swift
    open class func getRawBlockchainConfigFromBlock(masterchainSeqno: Int, completion: @escaping (_ data: RawBlockchainConfig?, _ error: Error?) -> Void)
```



Get raw blockchain config from a specific block, if present.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let masterchainSeqno = 987 // Int | masterchain block seqno

BlockchainAPI.getRawBlockchainConfigFromBlock(masterchainSeqno: masterchainSeqno) { (response, error) in
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
    open class func getReducedBlockchainBlocks(from: Int64, to: Int64, completion: @escaping (_ data: ReducedBlocks?, _ error: Error?) -> Void)
```



Get reduced blockchain blocks data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let from = 987 // Int64 | 
let to = 987 // Int64 | 

BlockchainAPI.getReducedBlockchainBlocks(from: from, to: to) { (response, error) in
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
    open class func sendBlockchainMessage(sendBlockchainMessageRequest: SendBlockchainMessageRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Send message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let sendBlockchainMessageRequest = sendBlockchainMessage_request(boc: "boc_example", batch: ["batch_example"], meta: "TODO") // SendBlockchainMessageRequest | both a single boc and a batch of boc serialized in base64/hex are accepted

BlockchainAPI.sendBlockchainMessage(sendBlockchainMessageRequest: sendBlockchainMessageRequest) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

