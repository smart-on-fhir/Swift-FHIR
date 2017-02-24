//
//  FHIRRequest.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 01/24/15.
//  2015, SMART Health IT.
//

import Foundation


/**
Struct to describe REST request types, with a convenience method to make a request FHIR compliant.
*/
public enum FHIRRequestMethod: String {
	case GET = "GET"
	case PUT = "PUT"
	case POST = "POST"
	case PATCH = "PATCH"
	case DELETE = "DELETE"
	case OPTIONS = "OPTIONS"
	
	/**
	Prepare a given mutable URL request with the respective method and body values.
	*/
	public func prepare(request: inout URLRequest, body: Data? = nil) {
		request.httpMethod = rawValue
		
		switch self {
		case .GET:
			break
		case .PUT:
			request.httpBody = body
		case .POST:
			request.httpBody = body
		case .PATCH:
			request.httpBody = body
		case .DELETE:
			break
		case .OPTIONS:
			break
		}
	}
}


/**
Struct to hold request headers. By default, the "Accept-Charset" header is set to "utf-8" upon initialization.
*/
public struct FHIRRequestHeaders {
	
	/// All the headers the instance is holding on to.
	public var headers: [FHIRRequestHeaderField: String]
	
	public init(_ headers: [FHIRRequestHeaderField: String]? = nil) {
		var hdrs = [FHIRRequestHeaderField.acceptCharset: "utf-8"]
		headers?.forEach() { hdrs[$0] = $1 }
		self.headers = hdrs
	}
	
	public subscript(key: FHIRRequestHeaderField) -> String? {
		get { return headers[key] }
		set { headers[key] = newValue }
	}
	
	
	/**
	Prepare a given mutable URL request with the receiver's values.
	*/
	public func prepare(request: inout URLRequest) {
		headers.forEach {
			request.setValue($1, forHTTPHeaderField: $0.rawValue)
		}
	}
}


/**
Describe valid (and supported) FHIR request headers.

The "Authorization" header is not used in the basic library, it is provided for convenience's sake.
*/
public enum FHIRRequestHeaderField: String {
	case accept          = "Accept"
	case acceptCharset   = "Accept-Charset"
	case authorization   = "Authorization"
	case contentType     = "Content-Type"
	case prefer          = "Prefer"
	case ifMatch         = "If-Match"
	case ifNoneMatch     = "If-None-Match"
	case ifModifiedSince = "If-Modified-Since"
	case ifNoneExist     = "If-None-Exist"
}


/**
Parameters to pass along when making a request.
*/
public struct FHIRRequestParameters {
	
	private var parameters: [FHIRRequestParameterField: String]
	
	/** Designated initializer. */
	public init(_ params: [FHIRRequestParameterField: String]? = nil) {
		parameters = params ?? [FHIRRequestParameterField: String]()
	}
	
	public subscript(key: FHIRRequestParameterField) -> String? {
		get { return parameters[key] }
		set { parameters[key] = newValue }
	}
	
	
	/**
	Prepare a given mutable URL request with the receiver's parameters.
	*/
	public func prepare(request: inout URLRequest) {
		guard parameters.count > 0 else {
			return
		}
		if let url = request.url, var comps = URLComponents(url: url, resolvingAgainstBaseURL: false) {
			var query = comps.queryItems ?? []
			for (param, value) in parameters {
				query = query.filter() { param.rawValue != $0.name }
				query.append(URLQueryItem(name: param.rawValue, value: value))
			}
			comps.queryItems = query
			request.url = comps.url
		}
	}
}


/**
Describe valid (and supported) FHIR request query parameters.
*/
public enum FHIRRequestParameterField: String {
	
	/// Request a summary; you probably want `Summary.true.rawValue` as its value.
	case summary = "_summary"
	
	/// Include only the listed top-level elements; provide a comma-separated list of element names as value.
	case elements = "_elements"
	
	
	/**
	The options that are valid for the `summary` case.
	*/
	public enum Summary: String {
		case `true`  = "true"
		case `false` = "false"
		case text    = "text"
		case data    = "data"
		case count   = "count"
	}
}


/**
Options to pass along to request handlers.
*/
public struct FHIRRequestOption: OptionSet {
	public let rawValue: Int
	
	/** Designated initializer. Without this, Swift 3.0 compiler wants to insert a million `public struct` and will still complain... */
	public init(rawValue: Int) {
		self.rawValue = rawValue
	}
	
	/// Add a `_summary=true` parameter to only receive a summary of the resource.
	public static let summary = FHIRRequestOption(rawValue: 1)
	
	/// Tolerate JSON validation errors when receiving a response, i.e. don't throw upon instantiation, use what's provided.
	public static let lenient = FHIRRequestOption(rawValue: 2)
}

