# Risk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transferAllRemainingBalance** | **Bool** | True if the message semantics allow sweeping all current and future remaining TON balance of the wallet (e.g. “send all” / drain patterns).  | 
**ton** | **Int64** | Maximum TON amount that may leave the wallet in the worst case, in nanotons. | 
**jettons** | [JettonQuantity] | Jetton positions that may be debited from the wallet in the worst case. | 
**nfts** | [NftItem] | NFT items that may be transferred out of the wallet in the worst case. | 
**totalEquivalent** | **Float** | Estimated equivalent of all assets at risk (TON, jettons, NFTs) in the selected currency from currencyQuery (e.g. USD). Approximate, best-effort UI value.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


