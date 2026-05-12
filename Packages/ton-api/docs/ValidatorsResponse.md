# ValidatorsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**responseTimeMs** | **Int64** | Server-side response time in milliseconds. | 
**block** | [**BlockInfo**](BlockInfo.md) |  | 
**validationRound** | [**RoundInfo**](RoundInfo.md) |  | 
**electionId** | **Int64** | Current election ID (electAt timestamp). | 
**prevElectionId** | **Int64** | Election ID of the round immediately before this one. | [optional] 
**nextElectionId** | **Int64** | Election ID of the round immediately after this one. Omitted when the current round is not yet finished (next round not known).  | [optional] 
**electorBalance** | **Int64** | amount in nanotons | 
**totalStake** | **Int64** | amount in nanotons | 
**rewardPerBlock** | **Int64** | amount in nanotons | 
**validators** | [ValidatorRewardEntry] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


