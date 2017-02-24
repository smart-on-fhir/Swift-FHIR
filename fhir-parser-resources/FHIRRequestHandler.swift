//
//  FHIRRequestHandler.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation


/**
Protocol for different request/response handlers.

TODO: should add `ResponseType` associated type as soon as those can be constrained (SE-0142 – Swift 4?).
*/
public protocol FHIRRequestHandler {
	
	//associatedtype ResponseType: FHIRServerResponse
	
	/// The HTTP method of the request.
	var method: FHIRRequestMethod { get }
	
	/// Headers to be used on the request.
	var headers: FHIRRequestHeaders { get }
	
	/// Request parameters to pass along.
	var parameters: FHIRRequestParameters { get set }
	
	/// Request options to pass along.
	var options: FHIRRequestOption { get set }
	
	/// The receiver may hold on to a resource that supplies the request's body data.
	var resource: Resource? { get set }
	
	
	/**
	Designated initializer.
	*/
	init(_ method: FHIRRequestMethod, resource: Resource?)
	
	
	// MARK: - Preparation
	
	/**
	Add the given headers to the request, overwriting existing headers.
	
	- parameter headers: The headers to add to the receiver
	*/
	func add(headers inHeaders: FHIRRequestHeaders)
	
	/**
	Give the receiver a chance to prepare/alter the URL request.
	
	For example, this method will tell the FHIRRequestMethod instance to set the correct HTTPMethod as well as FHIR headers.
	
	- parameter request: The request to decorate
	*/
	func prepare(request: inout URLRequest) throws
	
	
	// MARK: - Response
	
	/**
	Instantiate a FHIRServerResponse based on the response and data that we get.
	
	- parameter response: The URLResponse resulting from the request, if any
	- parameter data:     The data that was returned, if any
	- parameter error:    The error that was reported, if any
	- returns:            An appropriately configured `FHIRServerResponse` instance
	*/
	func response(response: URLResponse?, data: Data?, error: Error?) -> FHIRServerResponse
	
	/**
	Convenience method to indicate a request that has not actually been sent.
	
	- parameter reason: Why the request was not sent
	- returns:            An appropriately configured `FHIRServerResponse` instance
	*/
	func notSent(_ reason: String) -> FHIRServerResponse
}

