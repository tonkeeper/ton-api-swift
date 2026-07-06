# MigrationTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seqno** | **Int** | wallet seqno baked into the unsigned body | 
**boc** | **String** | base64 BOC of the unsigned wallet body. Sign its hash, prepend the signature, wrap it in an external message and broadcast.  | 
**stateInit** | **String** | base64 BOC of the wallet StateInit (code + data). Present only on the first transaction when the source wallet is not yet initialized  | [optional] 
**messages** | [MigrationOutMessage] | ordered raw internal messages carried by this transaction — the cells the wallet resends. These are what populate the payload/actions.  | 
**emulation** | [**MessageConsequences**](MessageConsequences.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


