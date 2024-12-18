//
// GaslessAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GaslessAPI {

    /**

     - returns: GaslessConfig
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gaslessConfig() async throws -> GaslessConfig {
        return try await gaslessConfigWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/gasless/config
     - Returns configuration of gasless transfers
     - returns: RequestBuilder<GaslessConfig> 
     */
    open class func gaslessConfigWithRequestBuilder() -> RequestBuilder<GaslessConfig> {
        let localVariablePath = "/v2/gasless/config"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GaslessConfig>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter masterId: (path) jetton to pay commission 
     - parameter gaslessEstimateRequest: (body) bag-of-cells serialized to hex 
     - returns: SignRawParams
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gaslessEstimate(masterId: String, gaslessEstimateRequest: GaslessEstimateRequest) async throws -> SignRawParams {
        return try await gaslessEstimateWithRequestBuilder(masterId: masterId, gaslessEstimateRequest: gaslessEstimateRequest).execute().body
    }

    /**
     - POST /v2/gasless/estimate/{master_id}
     - Estimates the cost of the given messages and returns a payload to sign
     - parameter masterId: (path) jetton to pay commission 
     - parameter gaslessEstimateRequest: (body) bag-of-cells serialized to hex 
     - returns: RequestBuilder<SignRawParams> 
     */
    open class func gaslessEstimateWithRequestBuilder(masterId: String, gaslessEstimateRequest: GaslessEstimateRequest) -> RequestBuilder<SignRawParams> {
        var localVariablePath = "/v2/gasless/estimate/{master_id}"
        let masterIdPreEscape = "\(APIHelper.mapValueToPathItem(masterId))"
        let masterIdPostEscape = masterIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{master_id}", with: masterIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gaslessEstimateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SignRawParams>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter gaslessSendRequest: (body) bag-of-cells serialized to hex 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func gaslessSend(gaslessSendRequest: GaslessSendRequest) async throws {
        return try await gaslessSendWithRequestBuilder(gaslessSendRequest: gaslessSendRequest).execute().body
    }

    /**
     - POST /v2/gasless/send
     - Submits the signed gasless transaction message to the network
     - parameter gaslessSendRequest: (body) bag-of-cells serialized to hex 
     - returns: RequestBuilder<Void> 
     */
    open class func gaslessSendWithRequestBuilder(gaslessSendRequest: GaslessSendRequest) -> RequestBuilder<Void> {
        let localVariablePath = "/v2/gasless/send"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gaslessSendRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TonAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
