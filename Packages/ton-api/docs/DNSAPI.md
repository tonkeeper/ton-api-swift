# DNSAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dnsResolve**](DNSAPI.md#dnsresolve) | **GET** /v2/dns/{domain_name}/resolve | 
[**getAllAuctions**](DNSAPI.md#getallauctions) | **GET** /v2/dns/auctions | 
[**getDnsInfo**](DNSAPI.md#getdnsinfo) | **GET** /v2/dns/{domain_name} | 
[**getDomainBids**](DNSAPI.md#getdomainbids) | **GET** /v2/dns/{domain_name}/bids | 


# **dnsResolve**
```swift
    open class func dnsResolve(domainName: String, xCapability: XCapability_dnsResolve? = nil, filter: Bool? = nil, completion: @escaping (_ data: DnsRecord?, _ error: Error?) -> Void)
```



DNS resolve for domain name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let domainName = "domainName_example" // String | domain name with .ton or .t.me
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let filter = true // Bool |  (optional) (default to false)

DNSAPI.dnsResolve(domainName: domainName, xCapability: xCapability, filter: filter) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainName** | **String** | domain name with .ton or .t.me | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **filter** | **Bool** |  | [optional] [default to false]

### Return type

[**DnsRecord**](DnsRecord.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAuctions**
```swift
    open class func getAllAuctions(xCapability: XCapability_getAllAuctions? = nil, tld: String? = nil, completion: @escaping (_ data: Auctions?, _ error: Error?) -> Void)
```



Get all auctions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)
let tld = "tld_example" // String | domain filter for current auctions \"ton\" or \"t.me\" (optional)

DNSAPI.getAllAuctions(xCapability: xCapability, tld: tld) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]
 **tld** | **String** | domain filter for current auctions \&quot;ton\&quot; or \&quot;t.me\&quot; | [optional] 

### Return type

[**Auctions**](Auctions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDnsInfo**
```swift
    open class func getDnsInfo(domainName: String, xCapability: XCapability_getDnsInfo? = nil, completion: @escaping (_ data: DomainInfo?, _ error: Error?) -> Void)
```



Get full information about domain name

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let domainName = "domainName_example" // String | domain name with .ton or .t.me
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

DNSAPI.getDnsInfo(domainName: domainName, xCapability: xCapability) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainName** | **String** | domain name with .ton or .t.me | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**DomainInfo**](DomainInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDomainBids**
```swift
    open class func getDomainBids(domainName: String, xCapability: XCapability_getDomainBids? = nil, completion: @escaping (_ data: DomainBids?, _ error: Error?) -> Void)
```



Get domain bids

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI

let domainName = "domainName_example" // String | domain name with .ton or .t.me
let xCapability = "xCapability_example" // String | Request sub-second capability. (optional) (default to .subSecond)

DNSAPI.getDomainBids(domainName: domainName, xCapability: xCapability) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainName** | **String** | domain name with .ton or .t.me | 
 **xCapability** | **String** | Request sub-second capability. | [optional] [default to .subSecond]

### Return type

[**DomainBids**](DomainBids.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

