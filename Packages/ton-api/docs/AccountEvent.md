# AccountEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventId** | **String** |  | 
**account** | [**AccountAddress**](AccountAddress.md) |  | 
**timestamp** | **Int64** |  | 
**actions** | [Action] |  | 
**isScam** | **Bool** | scam | 
**lt** | **Int64** |  | 
**inProgress** | **Bool** | Event trace is not finished yet. Transactions still happening. | 
**extra** | **Int64** | Net TON change for this account not explained by actions, in nanotons: extra &#x3D; final_balance - initial_balance - sum(explicit TON changes from actions). extra &lt; 0 - implicit fee, extra &gt; 0 - refund. For UI display only  | 
**progress** | **Float** | Event completion ratio in [0,1] | 
**extMsgHash** | **String** | Normalized hash of the root external inbound message (hex). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


