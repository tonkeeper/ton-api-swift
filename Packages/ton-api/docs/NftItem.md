# NftItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** |  | 
**index** | **Int64** |  | 
**owner** | [**AccountAddress**](AccountAddress.md) |  | [optional] 
**collection** | [**NftItemCollection**](NftItemCollection.md) |  | [optional] 
**verified** | **Bool** | Collection master contract confirmed that this item is part of collection | 
**metadata** | **[String: AnyCodable]** |  | 
**sale** | [**Sale**](Sale.md) |  | [optional] 
**previews** | [ImagePreview] |  | [optional] 
**dns** | **String** |  | [optional] 
**approvedBy** | **[String]** | Please use trust field | 
**includeCnft** | **Bool** |  | [optional] 
**trust** | [**TrustType**](TrustType.md) |  | 
**codeHash** | **String** | Hash of the NFT item account code cell (hex) | [optional] 
**dataHash** | **String** | Hash of the NFT item account data cell (hex) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


