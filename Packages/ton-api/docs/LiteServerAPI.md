# LiteServerAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllRawShardsInfo**](LiteServerAPI.md#getallrawshardsinfo) | **GET** /v2/liteserver/get_all_shards_info/{block_id} | 
[**getOutMsgQueueSizes**](LiteServerAPI.md#getoutmsgqueuesizes) | **GET** /v2/liteserver/get_out_msg_queue_sizes | 
[**getRawAccountState**](LiteServerAPI.md#getrawaccountstate) | **GET** /v2/liteserver/get_account_state/{account_id} | 
[**getRawBlockProof**](LiteServerAPI.md#getrawblockproof) | **GET** /v2/liteserver/get_block_proof | 
[**getRawBlockchainBlock**](LiteServerAPI.md#getrawblockchainblock) | **GET** /v2/liteserver/get_block/{block_id} | 
[**getRawBlockchainBlockHeader**](LiteServerAPI.md#getrawblockchainblockheader) | **GET** /v2/liteserver/get_block_header/{block_id} | 
[**getRawBlockchainBlockState**](LiteServerAPI.md#getrawblockchainblockstate) | **GET** /v2/liteserver/get_state/{block_id} | 
[**getRawConfig**](LiteServerAPI.md#getrawconfig) | **GET** /v2/liteserver/get_config_all/{block_id} | 
[**getRawListBlockTransactions**](LiteServerAPI.md#getrawlistblocktransactions) | **GET** /v2/liteserver/list_block_transactions/{block_id} | 
[**getRawMasterchainInfo**](LiteServerAPI.md#getrawmasterchaininfo) | **GET** /v2/liteserver/get_masterchain_info | 
[**getRawMasterchainInfoExt**](LiteServerAPI.md#getrawmasterchaininfoext) | **GET** /v2/liteserver/get_masterchain_info_ext | 
[**getRawShardBlockProof**](LiteServerAPI.md#getrawshardblockproof) | **GET** /v2/liteserver/get_shard_block_proof/{block_id} | 
[**getRawShardInfo**](LiteServerAPI.md#getrawshardinfo) | **GET** /v2/liteserver/get_shard_info/{block_id} | 
[**getRawTime**](LiteServerAPI.md#getrawtime) | **GET** /v2/liteserver/get_time | 
[**getRawTransactions**](LiteServerAPI.md#getrawtransactions) | **GET** /v2/liteserver/get_transactions/{account_id} | 
[**sendRawMessage**](LiteServerAPI.md#sendrawmessage) | **POST** /v2/liteserver/send_message | 


# **getAllRawShardsInfo**
```swift
    open class func getAllRawShardsInfo(blockId: String, completion: @escaping (_ data: GetAllRawShardsInfo200Response?, _ error: Error?) -> Void)
```



Get all raw shards info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)

LiteServerAPI.getAllRawShardsInfo(blockId: blockId) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 

### Return type

[**GetAllRawShardsInfo200Response**](GetAllRawShardsInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOutMsgQueueSizes**
```swift
    open class func getOutMsgQueueSizes(completion: @escaping (_ data: GetOutMsgQueueSizes200Response?, _ error: Error?) -> Void)
```



Get out msg queue sizes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


LiteServerAPI.getOutMsgQueueSizes() { (response, error) in
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

[**GetOutMsgQueueSizes200Response**](GetOutMsgQueueSizes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawAccountState**
```swift
    open class func getRawAccountState(accountId: String, targetBlock: String? = nil, completion: @escaping (_ data: GetRawAccountState200Response?, _ error: Error?) -> Void)
```



Get raw account state

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let targetBlock = "targetBlock_example" // String | target block: (workchain,shard,seqno,root_hash,file_hash) (optional)

LiteServerAPI.getRawAccountState(accountId: accountId, targetBlock: targetBlock) { (response, error) in
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
 **targetBlock** | **String** | target block: (workchain,shard,seqno,root_hash,file_hash) | [optional] 

### Return type

[**GetRawAccountState200Response**](GetRawAccountState200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockProof**
```swift
    open class func getRawBlockProof(knownBlock: String, mode: Int, targetBlock: String? = nil, completion: @escaping (_ data: GetRawBlockProof200Response?, _ error: Error?) -> Void)
```



Get raw block proof

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let knownBlock = "knownBlock_example" // String | known block: (workchain,shard,seqno,root_hash,file_hash)
let mode = 987 // Int | mode
let targetBlock = "targetBlock_example" // String | target block: (workchain,shard,seqno,root_hash,file_hash) (optional)

LiteServerAPI.getRawBlockProof(knownBlock: knownBlock, mode: mode, targetBlock: targetBlock) { (response, error) in
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
 **knownBlock** | **String** | known block: (workchain,shard,seqno,root_hash,file_hash) | 
 **mode** | **Int** | mode | 
 **targetBlock** | **String** | target block: (workchain,shard,seqno,root_hash,file_hash) | [optional] 

### Return type

[**GetRawBlockProof200Response**](GetRawBlockProof200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainBlock**
```swift
    open class func getRawBlockchainBlock(blockId: String, completion: @escaping (_ data: GetRawBlockchainBlock200Response?, _ error: Error?) -> Void)
```



Get raw blockchain block

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)

LiteServerAPI.getRawBlockchainBlock(blockId: blockId) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 

### Return type

[**GetRawBlockchainBlock200Response**](GetRawBlockchainBlock200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainBlockHeader**
```swift
    open class func getRawBlockchainBlockHeader(blockId: String, mode: Int, completion: @escaping (_ data: GetRawBlockchainBlockHeader200Response?, _ error: Error?) -> Void)
```



Get raw blockchain block header

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)
let mode = 987 // Int | mode

LiteServerAPI.getRawBlockchainBlockHeader(blockId: blockId, mode: mode) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 
 **mode** | **Int** | mode | 

### Return type

[**GetRawBlockchainBlockHeader200Response**](GetRawBlockchainBlockHeader200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawBlockchainBlockState**
```swift
    open class func getRawBlockchainBlockState(blockId: String, completion: @escaping (_ data: GetRawBlockchainBlockState200Response?, _ error: Error?) -> Void)
```



Get raw blockchain block state

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)

LiteServerAPI.getRawBlockchainBlockState(blockId: blockId) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 

### Return type

[**GetRawBlockchainBlockState200Response**](GetRawBlockchainBlockState200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawConfig**
```swift
    open class func getRawConfig(blockId: String, mode: Int, completion: @escaping (_ data: GetRawConfig200Response?, _ error: Error?) -> Void)
```



Get raw config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)
let mode = 987 // Int | mode

LiteServerAPI.getRawConfig(blockId: blockId, mode: mode) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 
 **mode** | **Int** | mode | 

### Return type

[**GetRawConfig200Response**](GetRawConfig200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawListBlockTransactions**
```swift
    open class func getRawListBlockTransactions(blockId: String, mode: Int, count: Int, accountId: String? = nil, lt: Int64? = nil, completion: @escaping (_ data: GetRawListBlockTransactions200Response?, _ error: Error?) -> Void)
```



Get raw list block transactions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)
let mode = 987 // Int | mode
let count = 987 // Int | count
let accountId = "accountId_example" // String | account ID (optional)
let lt = 987 // Int64 | lt (optional)

LiteServerAPI.getRawListBlockTransactions(blockId: blockId, mode: mode, count: count, accountId: accountId, lt: lt) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 
 **mode** | **Int** | mode | 
 **count** | **Int** | count | 
 **accountId** | **String** | account ID | [optional] 
 **lt** | **Int64** | lt | [optional] 

### Return type

[**GetRawListBlockTransactions200Response**](GetRawListBlockTransactions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawMasterchainInfo**
```swift
    open class func getRawMasterchainInfo(completion: @escaping (_ data: GetRawMasterchainInfo200Response?, _ error: Error?) -> Void)
```



Get raw masterchain info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


LiteServerAPI.getRawMasterchainInfo() { (response, error) in
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

[**GetRawMasterchainInfo200Response**](GetRawMasterchainInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawMasterchainInfoExt**
```swift
    open class func getRawMasterchainInfoExt(mode: Int, completion: @escaping (_ data: GetRawMasterchainInfoExt200Response?, _ error: Error?) -> Void)
```



Get raw masterchain info ext

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let mode = 987 // Int | mode

LiteServerAPI.getRawMasterchainInfoExt(mode: mode) { (response, error) in
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
 **mode** | **Int** | mode | 

### Return type

[**GetRawMasterchainInfoExt200Response**](GetRawMasterchainInfoExt200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawShardBlockProof**
```swift
    open class func getRawShardBlockProof(blockId: String, completion: @escaping (_ data: GetRawShardBlockProof200Response?, _ error: Error?) -> Void)
```



Get raw shard block proof

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)

LiteServerAPI.getRawShardBlockProof(blockId: blockId) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 

### Return type

[**GetRawShardBlockProof200Response**](GetRawShardBlockProof200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawShardInfo**
```swift
    open class func getRawShardInfo(blockId: String, workchain: Int, shard: Int64, exact: Bool, completion: @escaping (_ data: GetRawShardInfo200Response?, _ error: Error?) -> Void)
```



Get raw shard info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let blockId = "blockId_example" // String | block ID: (workchain,shard,seqno,root_hash,file_hash)
let workchain = 987 // Int | workchain
let shard = 987 // Int64 | shard
let exact = false // Bool | exact

LiteServerAPI.getRawShardInfo(blockId: blockId, workchain: workchain, shard: shard, exact: exact) { (response, error) in
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
 **blockId** | **String** | block ID: (workchain,shard,seqno,root_hash,file_hash) | 
 **workchain** | **Int** | workchain | 
 **shard** | **Int64** | shard | 
 **exact** | **Bool** | exact | 

### Return type

[**GetRawShardInfo200Response**](GetRawShardInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawTime**
```swift
    open class func getRawTime(completion: @escaping (_ data: GetRawTime200Response?, _ error: Error?) -> Void)
```



Get raw time

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


LiteServerAPI.getRawTime() { (response, error) in
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

[**GetRawTime200Response**](GetRawTime200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawTransactions**
```swift
    open class func getRawTransactions(accountId: String, count: Int, lt: Int64, hash: String, completion: @escaping (_ data: GetRawTransactions200Response?, _ error: Error?) -> Void)
```



Get raw transactions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let accountId = "accountId_example" // String | account ID
let count = 987 // Int | count
let lt = 987 // Int64 | lt
let hash = "hash_example" // String | hash

LiteServerAPI.getRawTransactions(accountId: accountId, count: count, lt: lt, hash: hash) { (response, error) in
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
 **count** | **Int** | count | 
 **lt** | **Int64** | lt | 
 **hash** | **String** | hash | 

### Return type

[**GetRawTransactions200Response**](GetRawTransactions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendRawMessage**
```swift
    open class func sendRawMessage(sendRawMessageRequest: SendRawMessageRequest, completion: @escaping (_ data: SendRawMessage200Response?, _ error: Error?) -> Void)
```



Send raw message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let sendRawMessageRequest = sendRawMessage_request(body: "body_example") // SendRawMessageRequest | Data that is expected

LiteServerAPI.sendRawMessage(sendRawMessageRequest: sendRawMessageRequest) { (response, error) in
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
 **sendRawMessageRequest** | [**SendRawMessageRequest**](SendRawMessageRequest.md) | Data that is expected | 

### Return type

[**SendRawMessage200Response**](SendRawMessage200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

