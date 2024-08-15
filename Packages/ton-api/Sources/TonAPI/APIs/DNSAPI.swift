//
// DNSAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DNSAPI {

    /**

     - parameter domainName: (path) domain name with .ton or .t.me 
     - returns: DnsRecord
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func dnsResolve(domainName: String) async throws -> DnsRecord {
        return try await dnsResolveWithRequestBuilder(domainName: domainName).execute().body
    }

    /**
     - GET /v2/dns/{domain_name}/resolve
     - DNS resolve for domain name
     - parameter domainName: (path) domain name with .ton or .t.me 
     - returns: RequestBuilder<DnsRecord> 
     */
    open class func dnsResolveWithRequestBuilder(domainName: String) -> RequestBuilder<DnsRecord> {
        var localVariablePath = "/v2/dns/{domain_name}/resolve"
        let domainNamePreEscape = "\(APIHelper.mapValueToPathItem(domainName))"
        let domainNamePostEscape = domainNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{domain_name}", with: domainNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DnsRecord>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter tld: (query) domain filter for current auctions \&quot;ton\&quot; or \&quot;t.me\&quot; (optional)
     - returns: Auctions
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllAuctions(tld: String? = nil) async throws -> Auctions {
        return try await getAllAuctionsWithRequestBuilder(tld: tld).execute().body
    }

    /**
     - GET /v2/dns/auctions
     - Get all auctions
     - parameter tld: (query) domain filter for current auctions \&quot;ton\&quot; or \&quot;t.me\&quot; (optional)
     - returns: RequestBuilder<Auctions> 
     */
    open class func getAllAuctionsWithRequestBuilder(tld: String? = nil) -> RequestBuilder<Auctions> {
        let localVariablePath = "/v2/dns/auctions"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "tld": (wrappedValue: tld?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Auctions>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter domainName: (path) domain name with .ton or .t.me 
     - returns: DomainInfo
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDnsInfo(domainName: String) async throws -> DomainInfo {
        return try await getDnsInfoWithRequestBuilder(domainName: domainName).execute().body
    }

    /**
     - GET /v2/dns/{domain_name}
     - Get full information about domain name
     - parameter domainName: (path) domain name with .ton or .t.me 
     - returns: RequestBuilder<DomainInfo> 
     */
    open class func getDnsInfoWithRequestBuilder(domainName: String) -> RequestBuilder<DomainInfo> {
        var localVariablePath = "/v2/dns/{domain_name}"
        let domainNamePreEscape = "\(APIHelper.mapValueToPathItem(domainName))"
        let domainNamePostEscape = domainNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{domain_name}", with: domainNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DomainInfo>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter domainName: (path) domain name with .ton or .t.me 
     - returns: DomainBids
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getDomainBids(domainName: String) async throws -> DomainBids {
        return try await getDomainBidsWithRequestBuilder(domainName: domainName).execute().body
    }

    /**
     - GET /v2/dns/{domain_name}/bids
     - Get domain bids
     - parameter domainName: (path) domain name with .ton or .t.me 
     - returns: RequestBuilder<DomainBids> 
     */
    open class func getDomainBidsWithRequestBuilder(domainName: String) -> RequestBuilder<DomainBids> {
        var localVariablePath = "/v2/dns/{domain_name}/bids"
        let domainNamePreEscape = "\(APIHelper.mapValueToPathItem(domainName))"
        let domainNamePostEscape = domainNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{domain_name}", with: domainNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DomainBids>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
