//
//  FHIROperation.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation


/**
    The context an operation is to be performed against.
 */
public enum FHIROperationContext
{
	case None, System, Type, Instance
}


/**
    Named operations to be performed against a FHIR REST endpoint.
 */
public class FHIROperation: CustomStringConvertible
{
	/// The name of the operation.
	let name: String
	
	/// The context against which this operation is run.
	var context = FHIROperationContext.None
	
	/// Input parameters.
	var inParams: FHIRJSON?
	
	/// The resource type the operation is to be performed against.
	var type: Resource.Type? {
		didSet {
			if nil != type {
				context = .Type
			}
		}
	}
	
	/// The instance this operation is to be performed against, if any.
	var instance: Resource? {
		didSet {
			if let inst = instance {
				type = inst.dynamicType
				context = .Instance
			}
		}
	}
	
	public init(_ name: String) {
		self.name = name
	}
	
	
	// MARK: - Validation
	
	/**
	    Validate the receiver against its operation definition.
	 */
	public func validateWith(definition: OperationDefinition) throws {
		try validateContextWith(definition)
		try validateInParamsWith(definition)
	}
	
	/** Check if the receiver's context is permissible. */
	func validateContextWith(definition: OperationDefinition) throws {
		switch context {
		case .None:
			throw genServerError("Operation \(self) has not been properly set up")
		case .System:
			if nil == definition.system || !definition.system! {
				throw genServerError("Operation \(self) cannot be executed in system context")
			}
		case .Type:
			if nil == definition.type {
				throw genServerError("Operation \(self) cannot be executed in type context")
			}
			else if nil == type || !(definition.type!).contains(type!.resourceName) {
				throw genServerError("Operation \(self) cannot be executed against \(type ?? nil) type")
			}
		case .Instance:
			if nil == definition.instance || !definition.instance! {
				throw genServerError("Operation \(self) cannot be executed in instance context")
			}
			if nil == instance?.relativeURLPath() {
				throw genServerError("Operation \(self) to be executed in instance context must have an instance with an id")
			}
		}
	}
	
	/** Check if the receiver's "in" params adhere to the definition. */
	func validateInParamsWith(definition: OperationDefinition) throws {
		var leftover = inParams ?? FHIRJSON()
		
		// do we have all mandatory ones and are the ones that we have valid?
		if let params = definition.parameter {
			for param in params {
				if nil == param.name {
					continue
				}
				
				if "in" == param.use {
					
					// have the parameter, validate it
					if let _: AnyObject = inParams?[param.name!] {
						leftover.removeValueForKey(param.name!)
						
						// TODO: actually validate!
					}
					
					// check if mandatory parameter is missing
					else if let min = param.min {
						if min > 0 {
							throw genServerError("Operation \(self) is missing input parameter \"\(param.name)\"")
						}
					}
				}
			}
		}
		
		// do we have leftover parameters
		for over in leftover {
			print("-->  Ignored operation parameter \(over) in \(self)")
		}
	}
	
	
	// MARK: - Execution
	
	/**
	    Return the relative server URL the operation will call.
	
	    ATTENTION: It is **only** safe to call this method after validating the operation.
	 */
	public func serverPath() -> String {
		switch context {
		case .None:
			fatalError("Must not use `serverPath()` on an operation that has not been set up correctly")
		case .System:
			return "$\(name)"
		case .Type:
			return "\(type!.resourceName)/$\(name)"
		case .Instance:
			return "\(instance!.relativeURLPath()!)/$\(name)"
		}
	}
	
	public func perform(server: FHIRServer, callback: ((response: FHIRServerJSONResponse) -> Void)) {
		let handler = FHIRServerJSONRequestHandler(.GET)
		server.performRequestAgainst(serverPath(), handler: handler) { response in
			callback(response: response as! FHIRServerJSONResponse)
		}
	}
	
	
	// MARK: - Printable
	
	public var description: String {
		return "<FHIROperation $\(name)>"
	}
}


/// Alias to `FHIROperation` for neat operation usage.
public typealias $ = FHIROperation

