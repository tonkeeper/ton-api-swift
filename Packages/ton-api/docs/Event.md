# Event

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventId** | **String** |  | 
**timestamp** | **Int64** |  | 
**actions** | [Action] |  | 
**valueFlow** | [ValueFlow] |  | 
**isScam** | **Bool** | scam | 
**lt** | **Int64** |  | 
**inProgress** | **Bool** | Event trace is not finished yet. Transactions still happening. | 
**progress** | **Float** |  | 
**lastSliceId** | **Int64** | ID of the slice where this event was finalized. Null if not yet finalized. | [optional] 
**extMsgHash** | **String** | Normalized hash of the root external inbound message (hex). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


