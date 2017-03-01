//
//  FHIROpenServer.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/30/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
A very basic FHIRServer implementation that deals with Open FHIR servers in JSON.

It knows its base URL, can fetch and hold on to the cabability statement and perform requests and operations.

These methods are of interest to you when you create a subclass:

- `handlerForRequest(withMethod:resource:)`: what kind of handler your server wants to use. Returns `FHIRJSONRequestHandler`.
- `configurableRequest(for:)`: the SMART framework returns a request that already has an Authorization headers set, if needed.
*/
open class FHIROpenServer: FHIRMinimalServer {
	
	
	// MARK: - Server Capability
	
	/// The server's cabability statement. Must be implicitly fetched using `getCapabilityStatement()`
	public final internal(set) var cabability: CapabilityStatement? {
		didSet {
			if let cabability = cabability {
				didSetCapabilityStatement(cabability)
			}
		}
	}
	
	open func didSetCapabilityStatement(_ cabability: CapabilityStatement) {
		
		// look at CapabilityStatementRest entries for security and operation information
		if let rests = cabability.rest {
			var best: CapabilityStatementRest?
			for rest in rests {
				if nil == best {
					best = rest
				}
				else if .client == rest.mode {
					best = rest
					break
				}
			}
			
			// use the "best" matching rest entry to extract the information we want
			if let rest = best {
				didFindCapabilityStatementRest(rest)
			}
		}
	}
	
	open func didFindCapabilityStatementRest(_ rest: CapabilityStatementRest) {
		if let operations = rest.operation {
			cababilityOperations = operations
		}
	}
	
	/**
	Executes a `read` action against the server's "metadata" path, as returned from `cababilityStatementPath()`, which should return the
	cabability statement.
	*/
	final func getCapabilityStatement(_ callback: @escaping (_ error: FHIRError?) -> ()) {
		if nil != cabability {
			callback(nil)
			return
		}
		
		// not yet fetched, fetch it
		CapabilityStatement.readFrom("metadata", server: self, options: [.summary, .lenient]) { resource, error in
			if let conf = resource as? CapabilityStatement {
				self.cabability = conf
				callback(nil)
			}
			else {
				callback(error ?? FHIRError.error("CapabilityStatement.readFrom() did not return a CapabilityStatement instance but \(resource?.description ?? "nil")"))
			}
		}
	}
	
	
	// MARK: - Operations
	
	/// The operations the server supports, as specified in the cabability statement.
	var operations: [String: OperationDefinition]?
	
	/// Operations as found in the cabability statement.
	var cababilityOperations: [CapabilityStatementRestOperation]?
	
	/** Find operation with given name. */
	func cababilityOperation(_ name: String) -> CapabilityStatementRestOperation? {
		if let defs = cababilityOperations {
			for def in defs {
				if name == def.name?.string {
					return def
				}
			}
		}
		return nil
	}
	
	/**
	Retrieve the operation definition with the given name, either from cache or load the OperationDefinition resource.
	
	Once an OperationDefinition has been retrieved, it is cached into the instance's `operations` dictionary. Must be used after the
	cabability statement has been fetched, i.e. after using `ready` or `getCapabilityStatement`.
	*/
	open func operation(_ name: String, callback: @escaping ((OperationDefinition?) -> Void)) {
		if let op = operations?[name] {
			callback(op)
		}
		else if let def = cababilityOperation(name) {
			def.definition?.resolve(OperationDefinition.self) { optop in
				if let op = optop {
					if nil != self.operations {
						self.operations![name] = op
					}
					else {
						self.operations = [name: op]
					}
				}
				callback(optop)
			}
		}
		else {
			callback(nil)
		}
	}
	
	/**
	Performs the given Operation.
	
	The server first validates the operation and only proceeds with execution if validation succeeds.
	
	`Resource` has extensions to facilitate working with operations, be sure to take a look.
	
	- parameter operation: The operation instance to perform
	- parameter callback: The callback to call when the request ends (success or failure)
	*/
	open func perform(_ operation: FHIROperation, callback: @escaping ((FHIRServerResponse) -> Void)) {
		self.operation(operation.name) { definition in
			if let def = definition {
				do {
					try operation.validate(with: def)
					try operation.perform(onServer: self, callback: callback)
				}
				catch let error {
					callback(FHIRServerJSONResponse(error: error))
				}
			}
			else {
				callback(FHIRServerJSONResponse(error: FHIRError.operationNotSupported(operation.name)))
			}
		}
	}
}

