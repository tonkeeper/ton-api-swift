//
// WalletAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WalletAPI {

    /**

     - parameter emulateMessageToWalletRequest: (body) bag-of-cells serialized to base64/hex and additional parameters to configure emulation 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - returns: MessageConsequences
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emulateMessageToWallet(emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil) async throws -> MessageConsequences {
        return try await emulateMessageToWalletWithRequestBuilder(emulateMessageToWalletRequest: emulateMessageToWalletRequest, acceptLanguage: acceptLanguage).execute().body
    }

    /**
     - POST /v2/wallet/emulate
     - Emulate sending message to blockchain
     - parameter emulateMessageToWalletRequest: (body) bag-of-cells serialized to base64/hex and additional parameters to configure emulation 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - returns: RequestBuilder<MessageConsequences> 
     */
    open class func emulateMessageToWalletWithRequestBuilder(emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil) -> RequestBuilder<MessageConsequences> {
        let localVariablePath = "/v2/wallet/emulate"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emulateMessageToWalletRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Accept-Language": acceptLanguage?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessageConsequences>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accountId: (path) account ID 
     - returns: Seqno
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountSeqno(accountId: String) async throws -> Seqno {
        return try await getAccountSeqnoWithRequestBuilder(accountId: accountId).execute().body
    }

    /**
     - GET /v2/wallet/{account_id}/seqno
     - Get account seqno
     - parameter accountId: (path) account ID 
     - returns: RequestBuilder<Seqno> 
     */
    open class func getAccountSeqnoWithRequestBuilder(accountId: String) -> RequestBuilder<Seqno> {
        var localVariablePath = "/v2/wallet/{account_id}/seqno"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Seqno>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter publicKey: (path)  
     - returns: Accounts
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getWalletsByPublicKey(publicKey: String) async throws -> Accounts {
        return try await getWalletsByPublicKeyWithRequestBuilder(publicKey: publicKey).execute().body
    }

    /**
     - GET /v2/pubkeys/{public_key}/wallets
     - Get wallets by public key
     - parameter publicKey: (path)  
     - returns: RequestBuilder<Accounts> 
     */
    open class func getWalletsByPublicKeyWithRequestBuilder(publicKey: String) -> RequestBuilder<Accounts> {
        var localVariablePath = "/v2/pubkeys/{public_key}/wallets"
        let publicKeyPreEscape = "\(APIHelper.mapValueToPathItem(publicKey))"
        let publicKeyPostEscape = publicKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{public_key}", with: publicKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Accounts>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter tonConnectProofRequest: (body) Data that is expected from TON Connect 
     - returns: TonConnectProof200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func tonConnectProof(tonConnectProofRequest: TonConnectProofRequest) async throws -> TonConnectProof200Response {
        return try await tonConnectProofWithRequestBuilder(tonConnectProofRequest: tonConnectProofRequest).execute().body
    }

    /**
     - POST /v2/wallet/auth/proof
     - Account verification and token issuance
     - parameter tonConnectProofRequest: (body) Data that is expected from TON Connect 
     - returns: RequestBuilder<TonConnectProof200Response> 
     */
    open class func tonConnectProofWithRequestBuilder(tonConnectProofRequest: TonConnectProofRequest) -> RequestBuilder<TonConnectProof200Response> {
        let localVariablePath = "/v2/wallet/auth/proof"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tonConnectProofRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TonConnectProof200Response>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
