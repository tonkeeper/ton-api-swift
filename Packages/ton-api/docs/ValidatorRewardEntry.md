# ValidatorRewardEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **Int** | Position sorted by effective stake (descending). | 
**publicKey** | **String** | Validator&#39;s public key (hex-encoded Ed25519). | 
**effectiveStake** | **Int64** | amount in nanotons | 
**weight** | **Double** | Fraction of total effective stake (0–1). | 
**reward** | **Int64** | amount in nanotons | 
**pool** | **String** | Pool smart contract address (bounceable, base64url). | [optional] 
**poolType** | **String** | Contract type detected by code hash. | [optional] 
**ownerAddress** | **String** |  | [optional] 
**validatorAddress** | **String** |  | [optional] 
**validatorStake** | **Int64** | amount in nanotons | [optional] 
**nominatorsStake** | **Int64** | amount in nanotons | [optional] 
**totalStake** | **Int64** | Total funds deposited by the pool: effective_stake + credit (leftover balance kept in the elector contract after election).  | [optional] 
**validatorRewardShare** | **Double** | Fraction of staking rewards kept by the validator (0.3 &#x3D; 30%). | [optional] 
**nominatorsCount** | **Int** |  | [optional] 
**nominators** | [NominatorRewardEntry] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


