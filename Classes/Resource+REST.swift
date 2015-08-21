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
	
	
	// MARK: - Resource URLs
	
	/**
	    Returns the relative URL path to the receiver's type of resource. This usually is the same as the resource's name.
	    :returns: A string indicating the relative URL base, e.g. "MedicationPrescription"
	 */
	public func relativeURLBase() -> String {
		return self.dynamicType.resourceName
	}
	
	/**
	    The relative URL path of the resource; the instance needs to have an id.
	    :returns: A string indicating the relative URL, e.g. "MedicationPrescription/1234"
	 */
	public func relativeURLPath() -> String? {
		if let myID = id {
			return "\(relativeURLBase())/\(myID)"
		}
		return nil
	}
	
	/**
	    The absolute URL of the resource; needs the instance's `server` property to be set and have an id.
	 */
	public func absoluteURL() -> NSURL? {
		if let relative = relativeURLPath() {
			return _server?.baseURL.URLByAppendingPathComponent(relative)
		}
		return nil
	}
	
	
	// MARK: - CRUD
	
	/**
	    Reads the resource with the given id from the given server.
	
	    Forwards to class method `readFrom` with the resource's relative URL, created from the supplied id and the resource's base.
	 */
	public class func read(id: String, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		let path = "\(resourceName)/\(id)"
		readFrom(path, server: server, callback: callback)
	}
	
	/**
	    Reads the resource from the given path on the given server.
	
	    This method creates a FHIRServerJSONRequestHandler for a GET request and deserializes the returned JSON into an instance on success.
	
	    :param: path The relative path on the server from which to read resource data from
	    :param: server The server to use
	    :param: callback The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public class func readFrom(path: String, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		server.performRequestOfType(.GET, path: path, resource: nil) { response in
			if let error = response.error {
				callback(resource: nil, error: error)
			}
			else {
				let resource = response.responseResource(Resource.self)
				resource?._server = server
				callback(resource: resource, error: nil)
			}
		}
	}
	
	/**
	    Create the receiver on the given server.
	
	    This method issues a POST, with the receiver serialized to JSON as the request's body data, to the FHIR server. If the call succeeds
	    (i.e. does not return an error), the receiver repopulates its properties with the server's response (if the server is returning the
	    resource, which some servers may not) and the `_server` property is assigned.
	
	    :param: server The server on which to create the resource
	    :param: callback The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public func create(server: FHIRServer, callback: FHIRErrorCallback) {
		if nil != id {
			callback(error: genResourceError("Cannot use `create` with a resource that already has an `id`"))
			return
		}
		
		server.performRequestOfType(.POST, path: relativeURLBase(), resource: self) { response in
			if nil == response.error {
				response.applyToResource(self)
				self._server = server
			}
			
			// TODO: should we do some header inspection (response.headers)?
			callback(error: response.error)
		}
	}
	
	/**
	    Update the resource's server representation with its current values.
	
	    This method serializes the instance to JSON and issues a PUT call to the receiver's `_server` instance.
	
	    :param: callback The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public func update(callback: FHIRErrorCallback) {
		if let server = _server {
			if let path = relativeURLPath() {
				server.performRequestOfType(.PUT, path: path, resource: self) { response in
					// TODO: should we do some header inspection (response.headers)?
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
	
	/**
	    Deletes the receiver's representation from its server.
	
	    This method forwards to the `delete` class method, substituting the receiver's path and server.
	 */
	public func delete(callback: FHIRErrorCallback) {
		if let server = _server {
			if let path = relativeURLPath() {
				self.dynamicType.delete(path, server: server, callback: callback)
			}
			else {
				callback(error: genResourceError("Cannot delete a resource without an id"))
			}
		}
		else {
			callback(error: genResourceError("Cannot delete a resource that doesn't have a server"))
		}
	}
	
	/**
	    Deletes the resource with the given ID from the server.
	
	    This implementation issues a DELETE call against the given path on the given server.
	 */
	public class func delete(path: String, server: FHIRServer, callback: FHIRErrorCallback) {
		server.performRequestOfType(.DELETE, path: path, resource: nil) { response in
			// TODO: should we do some header inspection (response.headers)?
			callback(error: response.error)
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
	public func performOperation(operation: FHIROperation, callback: FHIRResourceErrorCallback) {
		if let server = _server {
			operation.instance = self
			self.dynamicType._performOperation(operation, server: server, callback: callback)
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
		_performOperation(operation, server: server, callback: callback)
	}
	
	class func _performOperation(operation: FHIROperation, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		server.performOperation(operation) { response in
			if let error = response.error {
				callback(resource: nil, error: error)
			}
			else {
				let resource = response.responseResource(Resource.self)
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

