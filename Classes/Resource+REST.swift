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
public typealias FHIRResourceErrorCallback = ((resource: Resource?, error: NSError?) -> Void)

/// The FHIR resource error domain
public let FHIRResourceErrorDomain = "FHIRResourceError"


/**
    Extension to `Resource` to support REST interactions and operations.
 */
public extension Resource
{
	/**
	    Creates a `Reference` instance containing a relative reference to the receiver.
	 */
	public func asRelativeReference() -> Reference? {
		if let path = relativeURLPath() {
			let reference = Reference(json: nil)
			reference.reference = path
			if let display = preferredRelativeReferenceDisplay() {
				reference.display = display
			}
			return reference
		}
		return nil
	}
	
	/** The string used to fill a reference's "display" property for the instance. */
	public func preferredRelativeReferenceDisplay() -> String? {
		return nil
	}
	
	
	// MARK: - Retrieving Resources
	
	/**
	    The relative URL path of the resource; the instance needs to have an id.
	 */
	public func relativeURLPath() -> String? {
		if let myID = id {
			return "\(self.dynamicType.resourceName)/\(myID)"
		}
		return nil
	}
	
	/**
	    The absolute URI of the resource; needs the instance's `server` property to be set and have an id.
	 */
	public func absoluteURI() -> NSURL? {
		if let myID = id {
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
	
	    This method creates a FHIRServerJSONRequestHandler for a GET request, then deserializes the returned JSON into an instance.
	
	    :param: path The relative path on the server from which to read resource data from
	    :param: server The server to use
	    :param: callback The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public class func readFrom(path: String, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		let handler = FHIRServerJSONRequestHandler(.GET)
		server.performRequestAgainst(path, handler: handler) { response in
			if let error = response.error {
				callback(resource: nil, error: error)
			}
			else {
				let jsonres = response as! FHIRServerJSONResponse		// JSON request handlers always have JSON responses, not sure why the Swift compiler doesn't know
				let resource = self(json: jsonres.json)
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
	
	    :param: callback The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public func update(callback: FHIRErrorCallback) {
		if let server = _server {
			if let path = relativeURLPath() {
				let handler = FHIRServerJSONRequestHandler(.PUT, resource: self)
				server.performRequestAgainst(path, handler: handler) { response in
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
		if let myID = self.id {
			NSLog("UNFINISHED, must add '_id' reference to search expression")
			//return FHIRSearch(subject: "_id", reference: myID, type: self.dynamicType)
		}
		return FHIRSearch(type: self.dynamicType, query: query)
	}
	
	/**
	    Perform a search, wich the given query construct, against the receiver's compartment.
	 */
	public class func search(query: AnyObject) -> FHIRSearch {
		return FHIRSearch(type: self, query: query)
	}
	
	
	// MARK: - Operations
	
	/**
	    Perform a given operation on the receiver.
	 */
	public func perform(operation: FHIROperation, callback: FHIRResourceErrorCallback) {
		if let server = _server {
			operation.instance = self
			self.dynamicType._perform(operation, server: server, callback: callback)
		}
		else {
			callback(resource: nil, error: genServerError("The resource \(self) is not assigned to a server, cannot execute operation"))
		}
	}
	
	/**
	    Perform a given operation on the receiving type.
	 */
	public class func perform(operation: FHIROperation, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		operation.type = self
		_perform(operation, server: server, callback: callback)
	}
	
	class func _perform(operation: FHIROperation, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		server.performOperation(operation) { response in
			if let error = response.error {
				callback(resource: nil, error: error)
			}
			else {
				let resource = FHIRElement.instantiateFrom(response.json, owner: nil) as? Resource
				resource?._server = server
				callback(resource: resource, error: nil)
			}
		}
	}
}


/** Create an error in the FHIRResourceErrorDomain error domain. */
func genResourceError(message: String, code: Int = 0) -> NSError {
	return NSError(domain: FHIRResourceErrorDomain, code: code, userInfo: [NSLocalizedDescriptionKey: message])
}

