# Risk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transferAllRemainingBalance** | **Bool** | True if the message semantics allow sweeping all current and future remaining Gram balance of the wallet (e.g. “send all” / drain patterns).  | 
**ton** | **Int64** | this field will gone after Sept. 2026, use gram instead | [optional] 
**gram** | **Int64** | Maximum Gram amount that may leave the wallet in the worst case, in nanogram. | 
**jettons** | [JettonQuantity] | Jetton positions that may be debited from the wallet in the worst case. | 
**nfts** | [NftItem] | NFT items that may be transferred out of the wallet in the worst case. | 
**totalEquivalent** | **Float** | Estimated equivalent of all assets at risk (Gram, jettons, NFTs) in the selected currency from currencyQuery (e.g. USD). Approximate, best-effort UI value.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


