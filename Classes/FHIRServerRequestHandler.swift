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
	/// The response type instances of this class provide.
	public typealias ResponseType = FHIRServerResponse
	
	/// The HTTP type of the request.
	public let type: FHIRRequestType
	
	public init(_ type: FHIRRequestType) {
		self.type = type
	}
	
	/**
	    Give the request type a chance to prepare/alter the URL request.
	
	    Typically the FHIRRequestType instance sets the correct HTTPMethod as well as correct FHIR headers.
	 */
	public func prepareRequest(req: NSMutableURLRequest) throws {
		type.prepareRequest(req)
	}
	
	/**
	    Instantiate an object of ResponseType-type based on the response and data that we get.
	 */
	public func response(response response: NSURLResponse?, data inData: NSData? = nil) -> ResponseType {
		if let res = response {
			return self.dynamicType.ResType.init(response: res, data: inData)
		}
		return self.dynamicType.ResType.noneReceived()
	}
	
	/**
	    Convenience method to indicate a request that has not actually been sent.
	 */
	public func notSent(reason: String) -> ResponseType {
		return self.dynamicType.ResType.init(notSentBecause: genServerError(reason, code: 700))
	}
	
	class var ResType: FHIRServerResponse.Type {
		return FHIRServerResponse.self
	}
}


/**
	Prepare and handle a request for data.
 */
public class FHIRServerDataRequestHandler: FHIRServerRequestHandler
{
	public typealias ResponseType = FHIRServerDataResponse
	
	/// The receiver may hold on to a resource that supplies the request's body data
	public var resource: FHIRResource?
	
	public var data: NSData?
	
	public init(_ type: FHIRRequestType, data: NSData? = nil) {
		super.init(type)
		self.data = data
	}
	
	public func prepareData() throws {
	}
	
	public override func prepareRequest(req: NSMutableURLRequest) throws {
		var error: NSError! = NSError(domain: "Migrator", code: 0, userInfo: nil)
		do {
			try prepareData()
			type.prepareRequest(req, body: data)
			return
		} catch let error1 as NSError {
			error = error1
		}
		throw error
	}
	
	override class var ResType: FHIRServerResponse.Type {
		return FHIRServerDataResponse.self
	}
}


/**
    Prepare and handle a request returning JSON data.

    JSON body data can be greated from the resource, if the receiver holds on to one.
 */
public class FHIRServerJSONRequestHandler: FHIRServerDataRequestHandler
{
	public typealias ResponseType = FHIRServerJSONResponse
	
	public var json: FHIRJSON?
	
	public init(_ type: FHIRRequestType, resource: FHIRResource? = nil) {
		super.init(type)
		self.resource = resource
	}
	
	override public func prepareData() throws {
		var error: NSError! = NSError(domain: "Migrator", code: 0, userInfo: nil)
		if nil != data {
			return
		}
		if nil == json {
			json = resource?.asJSON()
		}
		if let json = json {
			do {
				data = try NSJSONSerialization.dataWithJSONObject(json, options: [])
			} catch let error1 as NSError {
				error = error1
				data = nil
			}
			if nil != data {
				return
			}
			throw error
		}			// e.g. for GET requests, we don't have data, so that's fine too
	}
	
	override class var ResType: FHIRServerResponse.Type {
		return FHIRServerJSONResponse.self
	}
}

