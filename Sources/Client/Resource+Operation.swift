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


/**
Extension to `Resource` to support REST interactions and operations.
*/
public extension Resource {
	
	
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
				do {
					let resource = try response.responseResource(ofType: Resource.self)
					resource._server = server
					callback(resource, nil)
				}
				catch FHIRError.noResponseReceived {
					callback(nil, nil)
				}
				catch {
					callback(nil, error.asFHIRError)
				}
			}
		}
	}
}

