# MigrationTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seqno** | **Int** | wallet seqno baked into the unsigned body | 
**boc** | **String** | base64 BOC of the unsigned wallet body. Sign its hash, prepend the signature, wrap it in an external message and broadcast.  | 
**emulation** | [**MessageConsequences**](MessageConsequences.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


