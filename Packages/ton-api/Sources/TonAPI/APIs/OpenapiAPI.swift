//
// OpenapiAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OpenapiAPI {

    /**

     - returns: AnyCodable
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getOpenapiJson() async throws -> AnyCodable {
        return try await getOpenapiJsonWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/openapi.json
     - Get the openapi.json file
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getOpenapiJsonWithRequestBuilder() -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/v2/openapi.json"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: URL
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getOpenapiYml() async throws -> URL {
        return try await getOpenapiYmlWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/openapi.yml
     - Get the openapi.yml file
     - returns: RequestBuilder<URL> 
     */
    open class func getOpenapiYmlWithRequestBuilder() -> RequestBuilder<URL> {
        let localVariablePath = "/v2/openapi.yml"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
