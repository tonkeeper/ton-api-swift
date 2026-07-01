# MigrationPrepareRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | legacy source wallet to drain | 
**to** | **String** | destination wallet TON address | 
**currency** | **String** | fiat currency for the preview values | [optional] [default to "USD"]
**publicKey** | **String** | hex-encoded ed25519 public key of the source wallet. If &#x60;from&#x60; wallet is uninitialized, then public_key is used to infer wallet code  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


