# ValidationRound

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**electionId** | **Int64** | Election ID (electAt timestamp). | 
**startUtime** | **Int64** |  | [optional] 
**endUtime** | **Int64** |  | [optional] 
**startBlock** | **Int** | Masterchain block seqno at (or nearest to) round start. | 
**endBlock** | **Int** | Masterchain block seqno at (or nearest to) round end. Omitted if round hasn&#39;t finished. | [optional] 
**prevElectionId** | **Int64** | Election ID of the round immediately before this one. | [optional] 
**nextElectionId** | **Int64** | Election ID of the round immediately after this one. Omitted when this round is not yet finished (next round not known).  | [optional] 
**totalStake** | **Int64** | Total stake locked in the round. | [optional] 
**bonuses** | **Int64** | Total rewards the elector pays for the round. Omitted if round hasn&#39;t finished. | [optional] 
**finished** | **Bool** | Whether the validation round is complete. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


