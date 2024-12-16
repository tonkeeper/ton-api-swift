# OpenapiAPI

All URIs are relative to *https://tonapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOpenapiJson**](OpenapiAPI.md#getopenapijson) | **GET** /v2/openapi.json | 
[**getOpenapiYml**](OpenapiAPI.md#getopenapiyml) | **GET** /v2/openapi.yml | 


# **getOpenapiJson**
```swift
    open class func getOpenapiJson(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



Get the openapi.json file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


OpenapiAPI.getOpenapiJson() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenapiYml**
```swift
    open class func getOpenapiYml(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Get the openapi.yml file

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import TonAPI


OpenapiAPI.getOpenapiYml() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-yaml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

