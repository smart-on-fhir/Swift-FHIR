//
//  Resource+REST.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/// The block signature for server interaction callbacks that return an error.
public typealias FHIRErrorCallback = ((FHIRError?) -> Void)

/// The block signature for most server interaction callbacks that return a resource and an error.
public typealias FHIRResourceErrorCallback = ((Resource?, FHIRError?) -> Void)


/**
Extension to `Resource` to support REST interactions and operations.
*/
public extension Resource {
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
		return type(of: self).resourceType
	}
	
	/**
	The relative URL path of the resource; the instance needs to have an id, otherwise a FHIRError is thrown.
	
	- returns: A string indicating the relative URL, e.g. "MedicationPrescription/1234"
	*/
	public func relativeURLPath() throws -> String {
		if let myID = id {
			return "\(relativeURLBase())/\(myID)"
		}
		throw FHIRError.resourceWithoutId
	}
	
	/**
	The absolute URL of the resource. Needs the instance's `server` property to be set and have an id, otherwise a FHIRError is thrown.
	
	- returns: The resource's absolute URL, e.g. "https://fhir.smarthealthit.org/MedicationPrescription/1234"
	*/
	public func absoluteURL() throws -> URL {
		let relative = try relativeURLPath()
		if let server = _server {
			return server.baseURL.appendingPathComponent(relative)
		}
		throw FHIRError.resourceWithoutServer
	}
	
	
	// MARK: - CRUD
	
	/**
	Reads the resource with the given id from the given server.
	
	Forwards to class method `readFrom` with the resource's relative URL, created from the supplied id and the resource's base.
	*/
	public class func read(_ id: String, server: FHIRServer, callback: @escaping FHIRResourceErrorCallback) {
		let path = "\(resourceType)/\(id)"
		readFrom(path, server: server, callback: callback)
	}
	
	/**
	Reads the resource from the given path on the given server.
	
	This method creates a FHIRServerJSONRequestHandler for a GET request and deserializes the returned JSON into an instance on success.
	
	- parameter path: The relative path on the server from which to read resource data from
	- parameter server: The server to use
	- parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	*/
	public class func readFrom(_ path: String, server: FHIRServer, callback: @escaping FHIRResourceErrorCallback) {
		server.performRequest(ofType: .GET, path: path, resource: nil, additionalHeaders: nil) { response in
			if let error = response.error {
				callback(nil, error)
			}
			else if let resource = response.responseResource(ofType: Resource.self) {
				resource._server = server
				do {
					try response.applyHeaders(to: resource)
				}
				catch let error {
					fhir_warn("Error applying response headers after `read` call: \(error)")
				}
				if nil == resource.id {
					resource.id = (path as NSString).lastPathComponent
				}
				callback(resource, nil)
			}
			else {
				callback(nil, FHIRError.resourceFailedToInstantiate(path))
			}
		}
	}
	
	/**
	Create the receiver on the given server.
	
	This method issues a POST, with the receiver serialized to JSON as the request's body data, to the FHIR server. If the call succeeds
	(i.e. does not return an error), the receiver updates its `meta` properties from the response "Location", if available, and the
	`_server` property is assigned.
	
	This method will set the "Prefer" header to "return=minimal", meaning the server may not return the actual resource content created.
	Use `createAndReturn(server:callback:)` if you want to make sure that you're getting the resource back.
	
	- parameter server:   The server on which to create the resource
	- parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	*/
	public func create(_ server: FHIRServer, callback: @escaping FHIRErrorCallback) {
		guard nil == id else {
			callback(FHIRError.resourceAlreadyHasId)
			return
		}
		
		let headers = FHIRRequestHeaders([.prefer: "return=minimal"])
		server.performRequest(ofType: .POST, path: relativeURLBase(), resource: self, additionalHeaders: headers) { response in
			if nil == response.error {
				self._server = server
				do {
					try response.applyHeaders(to: self)
				}
				catch let error {
					fhir_warn("Error applying response headers after `create` call: \(error)")
				}
			}
			callback(response.error)
		}
	}
	
	/**
	Create the receiver on the given server, ensuring that the created resource is returned.
	
	This method issues a POST, with the receiver serialized to JSON as the request's body data, to the FHIR server. If the call succeeds
	(i.e. does not return an error), the receiver updates its properties from the full resource response, and the `_server` property is
	assigned.
	
	This method will set the "Prefer" header to "return=representation", meaning the server should return the actual resource created. If it
	does not do so, a `read` call will be issued to ensure the most recent representation is in memory, and then the callback is called.
	Use `create(server:callback:)` if you do not need the actual resource back.
	
	- parameter server:   The server on which to create the resource
	- parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	*/
	func createAndReturn(_ server: FHIRServer, callback: @escaping FHIRErrorCallback) {
		guard nil == id else {
			callback(FHIRError.resourceAlreadyHasId)
			return
		}
		
		let headers = FHIRRequestHeaders([.prefer: "return=representation"])
		server.performRequest(ofType: .POST, path: relativeURLBase(), resource: self, additionalHeaders: headers) { response in
			if nil == response.error {
				self._server = server
				do {
					try response.applyHeaders(to: self)
					try response.applyBody(to: self)
				}
					
				// no resource, but hopefully the id was detected in the Location header, so go and read the resource
				catch FHIRError.responseNoResourceReceived {
					if let id = self.id {
						type(of: self).read(id, server: server) { resource, error in
							if let resource = resource {
								_ = self.populate(from: resource.asJSON())
							}
							callback(error)
						}
					}
					else {
						callback(FHIRError.resourceWithoutId)
					}
					return
				}
				catch let error {
					fhir_warn("Error applying resource header or data after `createAndReturn` call: \(error)")
					
					// if we didn't manage to get the id one way or the other, we have a problem
					if nil == self.id {
						callback(FHIRError.resourceWithoutId)
						return
					}
				}
			}
			callback(response.error)
		}
	}
	
	/**
	Update the resource's server representation with its current values.
	
	This method serializes the instance to JSON and issues a PUT call to the receiver's `_server` instance.
	
	- parameter callback: The callback to execute once done. The callback is NOT guaranteed to be executed on the main thread!
	*/
	public func update(callback: @escaping FHIRErrorCallback) {
		if let server = _server {
			do {
				let path = try relativeURLPath()
				server.performRequest(ofType: .PUT, path: path, resource: self, additionalHeaders: nil) { response in
					do {
						try response.applyHeaders(to: self)
					}
					catch let error {
						fhir_warn("Error applying response headers after `update` call: \(error)")
					}
					callback(response.error)
				}
			}
			catch let error {
				callback((error as! FHIRError))
			}
		}
		else {
			callback(FHIRError.resourceWithoutServer)
		}
	}
	
	/**
	Deletes the receiver's representation from its server.
	
	This method forwards to the `delete` class method, substituting the receiver's path and server.
	*/
	public func delete(callback: @escaping FHIRErrorCallback) {
		if let server = _server {
			do {
				let path = try relativeURLPath()
				type(of: self).delete(path, server: server, callback: callback)
			}
			catch let error {
				callback((error as! FHIRError))
			}
		}
		else {
			callback(FHIRError.resourceWithoutServer)
		}
	}
	
	/**
	Deletes the resource with the given ID from the server.
	
	This implementation issues a DELETE call against the given path on the given server.
	*/
	public class func delete(_ path: String, server: FHIRServer, callback: @escaping FHIRErrorCallback) {
		server.performRequest(ofType: .DELETE, path: path, resource: nil, additionalHeaders: nil) { response in
			// TODO: should we do some header inspection (response.headers)?
			callback(response.error)
		}
	}
	
	
	// MARK: - Search
	
	/**
	Perform a search against the receiver's type's compartment.
	
	UNFINISHED.
	*/
	public func search(_ query: Any) -> FHIRSearch {
		if let _ = self.id {
			NSLog("UNFINISHED, must add '_id' reference to search expression")
			//return FHIRSearch(subject: "_id", reference: myID, type: type(of: self))
		}
		return FHIRSearch(type: type(of: self), query: query)
	}
	
	/**
	Perform a search, wich the given query construct, against the receiver's compartment.
	*/
	public class func search(_ query: Any) -> FHIRSearch {
		return FHIRSearch(type: self, query: query)
	}
	
	
	// MARK: - Operations
	
	/**
	Perform a given operation on the receiver.
	*/
	public func perform(operation: FHIROperation, callback: @escaping FHIRResourceErrorCallback) {
		if let server = _server {
			if let server = server as? FHIROpenServer {
				operation.instance = self
				type(of: self)._perform(operation: operation, server: server, callback: callback)
			}
			else {
				callback(nil, FHIRError.error("Must be living on a FHIROpenServer or subclass"))
			}
		}
		else {
			callback(nil, FHIRError.resourceWithoutServer)
		}
	}
	
	/**
	Perform a given operation on the receiving type.
	*/
	public class func perform(operation: FHIROperation, server: FHIROpenServer, callback: @escaping FHIRResourceErrorCallback) {
		operation.type = self
		_perform(operation: operation, server: server, callback: callback)
	}
	
	class func _perform(operation: FHIROperation, server: FHIROpenServer, callback: @escaping FHIRResourceErrorCallback) {
		server.perform(operation) { response in
			if let error = response.error {
				callback(nil, error)
			}
			else {
				let resource = response.responseResource(ofType: Resource.self)
				resource?._server = server
				callback(resource, nil)
			}
		}
	}
}

