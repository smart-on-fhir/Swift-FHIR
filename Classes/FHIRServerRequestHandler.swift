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
	public func prepareRequest(req: NSMutableURLRequest, error: NSErrorPointer) -> Bool {
		type.prepareRequest(req)
		return true
	}
	
	/**
		Instantiate an object of ResponseType-type based on the response and data that we get.
	 */
	public func response(# response: NSURLResponse?, data inData: NSData? = nil) -> ResponseType {
		if let res = response {
			return self.dynamicType.ResType(response: res, data: inData)
		}
		return self.dynamicType.ResType.noneReceived()
	}
	
	/**
		Convenience method to indicate a request that has not actually been sent.
	 */
	public func notSent(reason: String) -> ResponseType {
		return self.dynamicType.ResType(notSentBecause: genServerError(reason, code: 700))
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
	
	public var data: NSData?
	
	public init(_ type: FHIRRequestType, data: NSData? = nil) {
		super.init(type)
		self.data = data
	}
	
	public func prepareData(error: NSErrorPointer) -> Bool {
		return true
	}
	
	public override func prepareRequest(req: NSMutableURLRequest, error: NSErrorPointer) -> Bool {
		if prepareData(error) {
			type.prepareRequest(req, body: data)
			return true
		}
		return false
	}
	
	override class var ResType: FHIRServerResponse.Type {
		return FHIRServerDataResponse.self
	}
}


/**
	Prepare and handle a request returning JSON data.
 */
public class FHIRServerJSONRequestHandler: FHIRServerDataRequestHandler
{
	public typealias ResponseType = FHIRServerJSONResponse
	
	public var json: FHIRJSON?
	
	public init(_ type: FHIRRequestType, json: FHIRJSON? = nil) {
		super.init(type)
		self.json = json
	}
	
	override public func prepareData(error: NSErrorPointer) -> Bool {
		if nil == data && nil != json {
			data = NSJSONSerialization.dataWithJSONObject(json!, options: nil, error: error)
			return nil != data
		}
		return true
	}
	
	override class var ResType: FHIRServerResponse.Type {
		return FHIRServerJSONResponse.self
	}
}

