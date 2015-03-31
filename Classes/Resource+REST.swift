//
//  Resource+REST.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation


/// The block signature for server interaction callbacks that return an error.
public typealias FHIRErrorCallback = ((error: NSError?) -> Void)

/// The block signature for most server interaction callbacks that return a resource and an error.
public typealias FHIRResourceErrorCallback = ((resource: FHIRResource?, error: NSError?) -> Void)

/// The FHIR resource error domain
public let FHIRResourceErrorDomain = "FHIRResourceError"


/**
	Extension to `Resource` to support REST interactions and operations.
 */
public extension Resource
{
	
	// MARK: - Retrieving Resources
	
	/**
		The absolute URI of the resource; needs the instance's `server` property to be set and have an id.
	 */
	public func absoluteURI() -> NSURL? {
		if let myID = self.id {
			return _server?.baseURL.URLByAppendingPathComponent(self.dynamicType.resourceName).URLByAppendingPathComponent(myID)
		}
		return nil
	}
	
	/**
		Reads the resource with the given id from the given server.
	 */
	public class func read(id: String, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		let path = "\(resourceName)/\(id)"
		readFrom(path, server: server, callback: callback)
	}
	
	/**
		Reads the resource from the given path on the given server.
	 */
	public class func readFrom(path: String, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		server.getJSON(path) { response in
			if let error = response.error {
				callback(resource: nil, error: error)
			}
			else {
				let resource = self(json: response.json)
				resource._server = server
				callback(resource: resource, error: nil)
			}
		}
	}
	
	
	// MARK: - Sending Resources
	
	/**
		Create the receiver on the given server.
	 */
	public func create(server: FHIRServer, callback: FHIRErrorCallback) {
		callback(error: genResourceError("Not implemented"))
	}
	
	/**
		Update the resource's server representation with its current values.
	
		This method serializes the instance to JSON and issues a PUT call to the receiver's `_server` instance.
	 */
	public func update(callback: FHIRErrorCallback) {
		if let server = _server {
			if let id = self.id {
				server.putJSON("\(self.dynamicType.resourceName)/\(id)", body: asJSON()) { response in
					// should we do some header inspection (response.headers)?
					callback(error: response.error)
				}
			}
			else {
				callback(error: genResourceError("Cannot update a resource without id"))
			}
		}
		else {
			callback(error: genResourceError("Cannot update a resource that doesn't have a server"))
		}
	}
	
	
	// MARK: - Search
	
	/**
		Perform a search against the receiver's type's compartment.
	
		UNFINISHED.
	 */
	public func search(query: AnyObject) -> FHIRSearch {
		if let myId = self.id {
			NSLog("UNFINISHED, must add '_id' reference to search expression")
			//return FHIRSearch(subject: "_id", reference: myId, type: self.dynamicType)
		}
		return FHIRSearch(type: self.dynamicType, query: query)
	}
	
	/**
		Perform a search, wich the given query construct, against the receiver's compartment.
	 */
	public class func search(query: AnyObject) -> FHIRSearch {
		return FHIRSearch(type: self, query: query)
	}
}


/** Create an error in the FHIRResourceErrorDomain error domain. */
func genResourceError(message: String, code: Int = 0) -> NSError {
	return NSError(domain: FHIRResourceErrorDomain, code: code, userInfo: [NSLocalizedDescriptionKey: message])
}

