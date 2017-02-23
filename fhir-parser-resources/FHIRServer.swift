//
//  FHIRServer.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 01/24/15.
//  2015, SMART Health IT.
//

import Foundation


/**
Protocol for server objects to be used by `FHIRResource` and subclasses.
*/
public protocol FHIRServer {
	
	/** A server object must always have a base URL. */
	var baseURL: URL { get }
	
	/**
	Designated initializer. Should make sure that the base URL ends with a "/"!
	*/
	init(baseURL base: URL, auth: [String: Any]?)
	
	
	// MARK: - Methods
	
	/**
	Create a request handler with the given method and the given resource (if any).
	
	- parameter method:   The HTTP method type of the request
	- parameter resource: The resource to be involved in the request, if any
	- returns:            A request handler that can be used with the `performRequest(against:handler:callback:)` method
	*/
	func handlerForRequest(withMethod method: FHIRRequestMethod, resource: Resource?) -> FHIRRequestHandler?
	
	/**
	Execute a request against a given relative URL with a given request/response handler.
	
	- parameter path:     The path, relative to the server's base; may include URL query and URL fragment (!)
	- parameter handler:  The FHIRRequestHandler that prepares the request and processes the response
	- parameter callback: The callback to execute; NOT guaranteed to be performed on the main thread!
	*/
	func performRequest(against path: String, handler: FHIRRequestHandler, callback: @escaping ((FHIRServerResponse) -> Void))
}

