//
//  FHIRServerRequestHandler.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  Copyright (c) 2015 SMART Platforms. All rights reserved.
//

import Foundation


/**
    Base for different request/response handlers.

    Would love to make this a protocol but since it has an associated type it cannot be used nicely, hence a class.
 */
public class FHIRServerRequestHandler
{
	/// The HTTP type of the request.
	public let type: FHIRRequestType
	
	/// The data to be used in the request body.
	public var data: NSData?
	
	/// The receiver may hold on to a resource that supplies the request's body data.
	public var resource: FHIRResource?
	
	public init(_ type: FHIRRequestType, resource: FHIRResource? = nil) {
		self.type = type
		self.resource = resource
	}
	
	public func prepareData(error: NSErrorPointer) -> Bool {
		if nil == resource {
			return true
		}
		if nil != error {
			error.memory = NSError(domain: "FHIRErrorDomain", code: 0, userInfo: [NSLocalizedDescriptionKey: "`FHIRServerRequestHandler` cannot prepare request body data"])
		}
		return false
	}
	
	/**
	    Give the request type a chance to prepare/alter the URL request.
	
	    Typically the FHIRRequestType instance sets the correct HTTPMethod as well as correct FHIR headers.
	 */
	public func prepareRequest(req: NSMutableURLRequest, error: NSErrorPointer) -> Bool {
		if prepareData(error) {
			type.prepareRequest(req, body: data)
			return true
		}
		return false
	}
	
	public class var ResponseType: FHIRServerResponse.Type {
		return FHIRServerResponse.self
	}
	
	/**
	    Instantiate an object of ResponseType-type based on the response and data that we get.
	 */
	public func response(# response: NSURLResponse?, data inData: NSData? = nil) -> FHIRServerResponse {
		if let res = response {
			return self.dynamicType.ResponseType(response: res, data: inData)
		}
		return self.dynamicType.ResponseType.noneReceived()
	}
	
	/**
	Convenience method to indicate a request that has not actually been sent.
	*/
	public func notSent(reason: String) -> FHIRServerResponse {
		return self.dynamicType.ResponseType(notSentBecause: genServerError(reason, code: 710))
	}
	
	/**
	Convenience method to indicate that no request handler for the given type is available.
	*/
	public class func noneAvailableForType(type: FHIRRequestType) -> FHIRServerResponse {
		return self.ResponseType(notSentBecause: genServerError("No request handler is available for \(type.rawValue) requests", code: 700))
	}
}


/**
    Prepare and handle a request returning JSON data.

    JSON body data can be greated from the resource, if the receiver holds on to one.
 */
public class FHIRServerJSONRequestHandler: FHIRServerRequestHandler
{
	public var json: FHIRJSON?
	
	
	override public func prepareData(error: NSErrorPointer) -> Bool {
		if nil != data {
			return true
		}
		if nil == json {
			json = resource?.asJSON()
		}
		if let json = json {
			data = NSJSONSerialization.dataWithJSONObject(json, options: nil, error: error)
			return nil != data
		}
		return true			// e.g. for GET requests, we don't have data, so that's fine too
	}
	
	public override func prepareRequest(req: NSMutableURLRequest, error: NSErrorPointer) -> Bool {
		if super.prepareRequest(req, error: error) {
			req.setValue("application/json+fhir", forHTTPHeaderField: "Accept")
			switch type {
			case .PUT:
				req.setValue("application/json+fhir; charset=utf-8", forHTTPHeaderField: "Content-Type")
			case .POST:
				req.setValue("application/json+fhir; charset=utf-8", forHTTPHeaderField: "Content-Type")
			default:
				break
			}
			return true
		}
		return false
	}
	
	public override class var ResponseType: FHIRServerResponse.Type {
		return FHIRServerJSONResponse.self
	}
}

