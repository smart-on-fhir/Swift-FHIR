//
//  FHIRServer.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 01/24/15.
//  2015, SMART Platforms.
//

import Foundation


/// The FHIR server error domain.
public let FHIRServerErrorDomain = "FHIRServerError"


/**
	Struct to describe REST request types, with a convenience method to make a request FHIR compliant.
 */
public enum FHIRRequestType: String
{
	case GET = "GET"
	case PUT = "PUT"
	case POST = "POST"
	
	/** Prepare a given mutable URL request with appropriate headers, methods and body values. */
	func prepareRequest(req: NSMutableURLRequest, body: NSData? = nil) {
		req.HTTPMethod = rawValue
		switch self {
		case .GET:
			req.setValue("application/json+fhir", forHTTPHeaderField: "Accept")
			req.setValue("UTF-8", forHTTPHeaderField: "Accept-Charset")
		case .PUT:
			req.setValue("application/json+fhir; charset=utf-8", forHTTPHeaderField: "Content-Type")
			req.setValue("application/json+fhir", forHTTPHeaderField: "Accept")
			req.setValue("UTF-8", forHTTPHeaderField: "Accept-Charset")
			req.HTTPBody = body
		case .POST:
			// TODO: set headers
			req.HTTPBody = body
		}
	}
}


/**
	Protocol for server objects to be used by `FHIRResource` and subclasses.
 */
public protocol FHIRServer
{
	/** A server object must always have a base URL. */
	var baseURL: NSURL { get }
	
	
	// MARK: - Base Requests
	
	/**
		Instance method that takes a path, which is relative to `baseURL`, executes a GET request from that URL and
		returns a JSON response object in the callback.
		
		:param: path The REST path to request, relative to the server's base URL
		:param: callback The callback to call when the request ends (success or failure)
	 */
	func getJSON(path: String, callback: ((response: FHIRServerJSONResponse) -> Void))
	
	/**
		Instance method that takes a path, which is relative to `baseURL`, executes a PUT request at that URL and
		returns a JSON response object in the callback.
		
		:param: path The REST path to request, relative to the server's base URL
		:param: body The request body data as FHIRJSON
		:param: callback The callback to call when the request ends (success or failure)
	 */
	func putJSON(path: String, body: FHIRJSON, callback: ((response: FHIRServerJSONResponse) -> Void))
	
	/**
		Instance method that takes a path, which is relative to `baseURL`, executes a POST request at that URL and
		returns a JSON response object in the callback.
	
		:param: path The REST path to request, relative to the server's base URL
		:param: body The request body data as FHIRJSON
		:param: callback The callback to call when the request ends (success or failure)
	 */
	func postJSON(path: String, body: FHIRJSON, callback: ((response: FHIRServerJSONResponse) -> Void))
	
	
	// MARK: - Operations
	
	/**
		Performs the given Operation.
	
		The server should first validate the operation and only proceed with execution if validation succeeds.
	
		`Resource` has extensions to facilitate working with operations, be sure to take a look.
		
		:param: operation The operation instance to perform
		:param: callback The callback to call when the request ends (success or failure)
	 */
	func perform(operation: FHIROperation, callback: ((response: FHIRServerJSONResponse) -> Void))
}


/** Create an error in the FHIRServerErrorDomain error domain. */
func genServerError(message: String, code: Int = 0) -> NSError {
	return NSError(domain: FHIRServerErrorDomain, code: code, userInfo: [NSLocalizedDescriptionKey: message])
}

