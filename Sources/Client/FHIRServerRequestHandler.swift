//
//  FHIRServerRequestHandler.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
Base for different request/response handlers.

Would love to make this a protocol but since it has an associated type which does cannot be used for initialization from subclasses -- the
associated type of the class that implements the method is always used -- it cannot be used nicely. Hence a class.
*/
open class FHIRServerRequestHandler {
	
	open class var defaultHeaders: FHIRRequestHeaders {
		return FHIRRequestHeaders()
	}
	
	/// The HTTP type of the request.
	open let type: FHIRRequestType
	
	/// Headers to be used on the request.
	open var headers: FHIRRequestHeaders
	
	/// The data to be used in the request body.
	open var data: Data?
	
	/// The receiver may hold on to a resource that supplies the request's body data.
	open var resource: Resource?
	
	public init(_ type: FHIRRequestType, resource: Resource? = nil) {
		self.type = type
		self.headers = type(of: self).defaultHeaders
		self.resource = resource
	}
	
	
	// MARK: - Preparation
	
	/**
	Add the given headers to the request, overwriting existing headers.
	
	- parameter headers: The headers to add to the receiver
	*/
	open func add(headers inHeaders: FHIRRequestHeaders) {
		var hdrs = headers
		inHeaders.headers.forEach() { hdrs[$0] = $1 }
		headers = hdrs
		
	}
	
	/**
	Prepare body data for the request.
	*/
	open func prepareData() throws {
		if nil == resource {
			return
		}
		throw FHIRError.requestCannotPrepareBody
	}
	
	/**
	Give the request type a chance to prepare/alter the URL request.
	
	Typically the FHIRRequestType instance sets the correct HTTPMethod as well as correct FHIR headers.
	*/
	open func prepare(request: inout URLRequest) throws {
		try prepareData()
		type.prepare(request: &request, body: data)
		headers.prepare(request: &request)
	}
	
	open class var ResponseType: FHIRServerResponse.Type {
		return FHIRServerDataResponse.self
	}
	
	
	// MARK: - Response
	
	/**
	Instantiate an object of ResponseType-type based on the response and data that we get.
	*/
	open func response(response: URLResponse?, data inData: Data? = nil, error: Error? = nil) -> FHIRServerResponse {
		if let res = response {
			return type(of: self).ResponseType.init(response: res, data: inData, error: error)
		}
		if let error = error {
			return type(of: self).ResponseType.init(error: error)
		}
		return type(of: self).ResponseType.noneReceived()
	}
	
	/**
	Convenience method to indicate a request that has not actually been sent.
	*/
	open func notSent(_ reason: String) -> FHIRServerResponse {
		return type(of: self).ResponseType.init(error: FHIRError.requestNotSent(reason))
	}
	
	/**
	Convenience method to indicate that no request handler for the given type is available.
	
	- parameter forType: The request type
	*/
	open class func noneAvailable(forType type: FHIRRequestType) -> FHIRServerResponse {
		return ResponseType.init(error: FHIRError.noRequestHandlerAvailable(type.rawValue))
	}
}


/**
Prepare and handle a request returning JSON data.

JSON body data can be greated from the resource, if the receiver holds on to one. The header's content type for PUT and POST will be set to
"application/json+fhir; charset=utf-8" no matter what.
*/
open class FHIRServerJSONRequestHandler: FHIRServerRequestHandler {
	
	override open class var defaultHeaders: FHIRRequestHeaders {
		return FHIRRequestHeaders([.accept: "application/json+fhir"])
	}
	
	open var json: FHIRJSON?
	
	
	override open func prepareData() throws {
		guard nil == data else {
			return
		}
		if nil == json {
			json = resource?.asJSON()
		}
		if let json = json {
			data = try JSONSerialization.data(withJSONObject: json, options: [])
		}			// for GET requests we don't have data, which is fine too
	}
	
	override open func prepare(request: inout URLRequest) throws {
		switch type {
		case .PUT:
			headers[.contentType] = "application/json+fhir; charset=utf-8"
		case .POST:
			headers[.contentType] = "application/json+fhir; charset=utf-8"
		default:
			break
		}
		try super.prepare(request: &request)
	}
	
	override open class var ResponseType: FHIRServerResponse.Type {
		return FHIRServerJSONResponse.self
	}
}


/**
PRELIMINARY! Prepare and handle a request returning some type of data.

If you use this as PUT/POST, you are responsible for setting the `data` property to an appropriate NSData representation. The "Accept" and
"Content-Type" headers will be set to the `contentType` property
*/
open class FHIRServerDataRequestHandler: FHIRServerRequestHandler {
	
	open let contentType: String
	
	init(_ type: FHIRRequestType, contentType: String) {
		self.contentType = contentType
		super.init(type, resource: nil)
	}
	
	override open func prepareData() throws {
	}
	
	override open func prepare(request: inout URLRequest) throws {
		switch type {
		case .GET:
			headers[.accept] = contentType
		case .PUT:
			// TODO: make useful for PUT/POST (by setting correct "Accept" headers) and implement error handling (i.e. OperationOutcome) for GET requests
			headers[.contentType] = contentType
		case .POST:
			headers[.contentType] = contentType
		default:
			break
		}
		try super.prepare(request: &request)
	}
	
	override open class var ResponseType: FHIRServerResponse.Type {
		return FHIRServerDataResponse.self
	}
}

