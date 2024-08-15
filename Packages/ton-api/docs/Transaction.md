# Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** |  | 
**lt** | **Int64** |  | 
**account** | [**AccountAddress**](AccountAddress.md) |  | 
**success** | **Bool** |  | 
**utime** | **Int64** |  | 
**origStatus** | [**AccountStatus**](AccountStatus.md) |  | 
**endStatus** | [**AccountStatus**](AccountStatus.md) |  | 
**totalFees** | **Int64** |  | 
**endBalance** | **Int64** |  | 
**transactionType** | [**TransactionType**](TransactionType.md) |  | 
**stateUpdateOld** | **String** |  | 
**stateUpdateNew** | **String** |  | 
**inMsg** | [**Message**](Message.md) |  | [optional] 
**outMsgs** | [Message] |  | 
**block** | **String** |  | 
**prevTransHash** | **String** |  | [optional] 
**prevTransLt** | **Int64** |  | [optional] 
**computePhase** | [**ComputePhase**](ComputePhase.md) |  | [optional] 
**storagePhase** | [**StoragePhase**](StoragePhase.md) |  | [optional] 
**creditPhase** | [**CreditPhase**](CreditPhase.md) |  | [optional] 
**actionPhase** | [**ActionPhase**](ActionPhase.md) |  | [optional] 
**bouncePhase** | [**BouncePhaseType**](BouncePhaseType.md) |  | [optional] 
**aborted** | **Bool** |  | 
**destroyed** | **Bool** |  | 
**raw** | **String** | hex encoded boc with raw transaction | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


