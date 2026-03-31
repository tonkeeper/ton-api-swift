# SseJsonPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | 
**type** | **String** |  | 
**finality** | [**NonPendingFinality**](NonPendingFinality.md) |  | 
**traceExternalHashNorm** | **String** | Normalized hash of the external message that initiated a trace. | 
**transactions** | [String: Dictionary] | Map of transaction hash to transaction object. | 
**addressBook** | **[String: AnyCodable]** | Mapping of addresses to friendly-address and TON DNS information. | [optional] 
**metadata** | **[String: AnyCodable]** | Mapping of token-related addresses to metadata objects. | [optional] 
**actions** | [Dictionary] |  | 
**trace** | **[String: AnyCodable]** | Opaque Toncenter API v3 TraceNode object. | 
**account** | **String** | TON account or contract address in any valid format accepted by Toncenter. | 
**state** | **[String: AnyCodable]** | Account state similar to Toncenter API v3 AccountState, without full code and data BoCs according to the source document.  | 
**jetton** | **[String: AnyCodable]** | Opaque Toncenter API v3 JettonWallet object. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


