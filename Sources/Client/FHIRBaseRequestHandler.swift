//
//  FHIRBaseRequestHandler.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
Base implementation of `FHIRRequestHandler`.
*/
open class FHIRBaseRequestHandler: FHIRRequestHandler {
	
	/// The HTTP method of the request.
	open let method: FHIRRequestMethod
	
	/// Headers to be used on the request.
	open var headers = FHIRRequestHeaders()
	
	/// Request parameters to pass along.
	open var parameters = FHIRRequestParameters()
	
	/// Which options to apply.
	open var options: FHIRRequestOption
	
	/// The data to be used in the request body.
	open var data: Data?
	
	/// The receiver may hold on to a resource that supplies the request's body data.
	open var resource: Resource?
	
	
	/**
	Designated initializer.
	*/
	public required init(_ method: FHIRRequestMethod, resource: Resource? = nil) {
		self.method = method
		self.options = []
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
	
	Typically the FHIRRequestMethod instance sets the correct HTTPMethod as well as correct FHIR headers. It will also inspect the `options`
	property and add appropriate query params.
	*/
	open func prepare(request: inout URLRequest) throws {
		var params = parameters
		if options.contains(.summary) {
			params[.summary] = FHIRRequestParameterField.Summary.true.rawValue
		}
		
		try prepareData()
		method.prepare(request: &request, body: data)
		headers.prepare(request: &request)
		params.prepare(request: &request)
	}
	
	
	// MARK: - Response
	
	/**
	Instantiate a FHIRServerResponse based on the response and data that we get.
	*/
	open func response(response: URLResponse?, data inData: Data? = nil, error: Error? = nil) -> FHIRServerResponse {
		if let res = response {
			return FHIRServerDataResponse(handler: self, response: res, data: inData, error: error)
		}
		if let error = error {
			return FHIRServerDataResponse(error: error, handler: self)
		}
		return FHIRServerDataResponse(error: FHIRError.noResponseReceived, handler: self)
	}
	
	/**
	Convenience method to indicate a request that has not actually been sent.
	*/
	open func notSent(_ reason: String) -> FHIRServerResponse {
		return FHIRServerDataResponse(error: FHIRError.requestNotSent(reason), handler: self)
	}
}


/**
Prepare and handle a request returning JSON data.

JSON body data can be greated from the resource, if the receiver holds on to one. The header's content type for PUT and POST will be set to
"application/fhir+json; charset=utf-8" no matter what.
*/
open class FHIRJSONRequestHandler: FHIRBaseRequestHandler {
	
	open var json: FHIRJSON?
	
	override open func prepareData() throws {
		guard nil == data else {
			return
		}
		if nil == json {
			json = try resource?.asJSON()
		}
		if let json = json {
			data = try JSONSerialization.data(withJSONObject: json, options: [])
		}			// for GET requests we don't have data, which is fine too
	}
	
	override open func prepare(request: inout URLRequest) throws {
		headers[.accept] = "application/fhir+json"
		switch method {
		case .PUT:
			headers[.contentType] = "application/fhir+json; charset=utf-8"
		case .POST:
			headers[.contentType] = "application/fhir+json; charset=utf-8"
		default:
			break
		}
		try super.prepare(request: &request)
	}
	
	/**
	Instantiate a FHIRServerResponse based on the response and data that we get.
	*/
	override open func response(response: URLResponse?, data inData: Data? = nil, error: Error? = nil) -> FHIRServerResponse {
		if let res = response {
			return FHIRServerJSONResponse(handler: self, response: res, data: inData, error: error)
		}
		if let error = error {
			return FHIRServerJSONResponse(error: error, handler: self)
		}
		return FHIRServerJSONResponse(error: FHIRError.noResponseReceived, handler: self)
	}
}


/**
PRELIMINARY! Prepare and handle a request returning some type of data.

If you use this as PUT/POST, you are responsible for setting the `data` property to an appropriate NSData representation. The "Accept" and
"Content-Type" headers will be set to the `contentType` property
*/
open class FHIRDataRequestHandler: FHIRBaseRequestHandler {
	
	open let contentType: String
	
	init(_ method: FHIRRequestMethod, contentType: String) {
		self.contentType = contentType
		super.init(method, resource: nil)
	}
	
	public required init(_ method: FHIRRequestMethod, resource: Resource?) {
		contentType = ""
		super.init(method, resource: resource)
	}
	
	override open func prepareData() throws {
	}
	
	override open func prepare(request: inout URLRequest) throws {
		switch method {
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
}

