# SseSubscriptionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | **[String]** | Wallet or contract addresses to monitor. | [optional] 
**traceExternalHashNorms** | **[String]** | Trace external hashes to monitor. | [optional] 
**types** | Set<SubscriptionType> | Event types to receive. | 
**minFinality** | [**Finality**](Finality.md) |  | [optional] 
**includeAddressBook** | **Bool** | Include friendly names and TON DNS information for known addresses. | [optional] 
**includeMetadata** | **Bool** | Include metadata for known token contracts such as Jettons and NFTs. | [optional] 
**actionTypes** | **[String]** | Filter delivered actions by action classification type. Applies only to &#x60;actions&#x60; events.  | [optional] 
**supportedActionTypes** | **[String]** | Advertises which action classification versions the client understands. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


