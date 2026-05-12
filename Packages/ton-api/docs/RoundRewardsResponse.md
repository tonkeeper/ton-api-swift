# RoundRewardsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**responseTimeMs** | **Int64** | Server-side response time in milliseconds. | 
**electionId** | **Int64** | Election ID (electAt timestamp). | 
**prevElectionId** | **Int64** | Election ID of the round immediately before this one. | [optional] 
**nextElectionId** | **Int64** | Election ID of the round immediately after this one. | [optional] 
**roundStart** | **Date** | Validation round start time. | 
**roundEnd** | **Date** | Validation round end time. | 
**startBlock** | **Int** | First masterchain block of the round. | 
**endBlock** | **Int** | Last masterchain block of the round. | 
**totalBonuses** | **Int64** | amount in nanotons | 
**totalStake** | **Int64** | amount in nanotons | 
**validators** | [ValidatorRewardEntry] |  | 
**error** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


