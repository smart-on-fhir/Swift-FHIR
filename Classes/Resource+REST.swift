//
//  Resource+REST.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation


/// The block signature for server interaction callbacks that return an error.
public typealias FHIRErrorCallback = ((error: FHIRError?) -> Void)

/// The block signature for most server interaction callbacks that return a resource and an error.
public typealias FHIRResourceErrorCallback = ((resource: Resource?, error: FHIRError?) -> Void)


/**
    Extension to `Resource` to support REST interactions and operations.
 */
public extension Resource
{
	/**
	Creates a `Reference` instance containing a relative reference to the receiver.
	
	Throws if creating the reference fails; mostly happens when the instance doesn't have an id.
	
	- returns: A Reference instance on success
	*/
	public func asRelativeReference() throws -> Reference {
		let path = try relativeURLPath()
		let reference = Reference(json: nil)
		reference.reference = path
		if let display = preferredRelativeReferenceDisplay() {
			reference.display = display
		}
		return reference
	}
	
	/** The string used to fill a reference's "display" property for the instance. */
	public func preferredRelativeReferenceDisplay() -> String? {
		return nil
	}
	
	
	// MARK: - Resource URLs
	
	/**
	    Returns the relative URL path to the receiver's type of resource. This usually is the same as the resource's name.
	    - returns: A string indicating the relative URL base, e.g. "MedicationPrescription"
	 */
	public func relativeURLBase() -> String {
		return self.dynamicType.resourceName
	}
	
	/**
	The relative URL path of the resource; the instance needs to have an id, otherwise a FHIRError is thrown.
	
	- returns: A string indicating the relative URL, e.g. "MedicationPrescription/1234"
	*/
	public func relativeURLPath() throws -> String {
		if let myID = id {
			return "\(relativeURLBase())/\(myID)"
		}
		throw FHIRError.ResourceWithoutId
	}
	
	/**
	The absolute URL of the resource. Needs the instance's `server` property to be set and have an id, otherwise a FHIRError is thrown.
	
	- returns: The resource's absolute URL, e.g. "https://fhir.smarthealthit.org/MedicationPrescription/1234"
	*/
	public func absoluteURL() throws -> NSURL {
		let relative = try relativeURLPath()
		if let server = _server {
			return server.baseURL.URLByAppendingPathComponent(relative)
		}
		throw FHIRError.ResourceWithoutServer
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
	
	- parameter path: The relative path on the server from which to read resource data from
	- parameter server: The server to use
	- parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	*/
	public class func readFrom(path: String, server: FHIRServer, callback: FHIRResourceErrorCallback) {
		server.performRequestOfType(.GET, path: path, resource: nil) { response in
			if let error = response.error {
				callback(resource: nil, error: error)
			}
			else if let resource = response.responseResource(Resource.self) {
				resource._server = server
				callback(resource: resource, error: nil)
			}
			else {
				callback(resource: nil, error: FHIRError.ResourceFailedToInstantiate(path))
			}
		}
	}
	
	/**
	    Create the receiver on the given server.
	
	    This method issues a POST, with the receiver serialized to JSON as the request's body data, to the FHIR server. If the call succeeds
	    (i.e. does not return an error), the receiver repopulates its properties with the server's response (if the server is returning the
	    resource, which some servers may not) and the `_server` property is assigned.
	
	    - parameter server: The server on which to create the resource
	    - parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public func create(server: FHIRServer, callback: FHIRErrorCallback) {
		if nil != id {
			callback(error: FHIRError.ResourceAlreadyHasId)
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
	
	    - parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	 */
	public func update(callback: FHIRErrorCallback) {
		if let server = _server {
			do {
				let path = try relativeURLPath()
				server.performRequestOfType(.PUT, path: path, resource: self) { response in
					// TODO: should we do some header inspection (response.headers)?
					callback(error: response.error)
				}
			}
			catch let error {
				callback(error: (error as! FHIRError))
			}
		}
		else {
			callback(error: FHIRError.ResourceWithoutServer)
		}
	}
	
	/**
	    Deletes the receiver's representation from its server.
	
	    This method forwards to the `delete` class method, substituting the receiver's path and server.
	 */
	public func delete(callback: FHIRErrorCallback) {
		if let server = _server {
			do {
				let path = try relativeURLPath()
				self.dynamicType.delete(path, server: server, callback: callback)
			}
			catch let error {
				callback(error: (error as! FHIRError))
			}
		}
		else {
			callback(error: FHIRError.ResourceWithoutServer)
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
		if let _ = self.id {
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
			callback(resource: nil, error: FHIRError.ResourceWithoutServer)
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

