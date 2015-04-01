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
public class FHIROperation: Printable
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
	public func validateWith(definition: OperationDefinition, error: NSErrorPointer) -> Bool {
		if !validateContextWith(definition, error: error) {
			return false
		}
		if !validateInParamsWith(definition, error: error) {
			return false
		}
		return true
	}
	
	/** Check if the receiver's context is permissible. */
	func validateContextWith(definition: OperationDefinition, error: NSErrorPointer) -> Bool {
		switch context {
		case .None:
			if nil != error {
				error.memory = genServerError("Operation \(self) has not been properly set up")
			}
			return false
		case .System:
			if nil == definition.system || !definition.system! {
				if nil != error {
					error.memory = genServerError("Operation \(self) cannot be executed in system context")
				}
				return false
			}
		case .Type:
			if nil == definition.type {
				if nil != error {
					error.memory = genServerError("Operation \(self) cannot be executed in type context")
				}
				return false
			}
			else if nil == type || !contains(definition.type!, type!.resourceName) {
				if nil != error {
					error.memory = genServerError("Operation \(self) cannot be executed against \(type ?? nil) type")
				}
				return false
			}
		case .Instance:
			if nil == definition.instance || !definition.instance! {
				if nil != error {
					error.memory = genServerError("Operation \(self) cannot be executed in instance context")
				}
				return false
			}
			if nil == instance?.relativeURL() {
				if nil != error {
					error.memory = genServerError("Operation \(self) to be executed in instance context must have an instance with an id")
				}
				return false
			}
		}
		return true
	}
	
	/** Check if the receiver's "in" params adhere to the definition. */
	func validateInParamsWith(definition: OperationDefinition, error: NSErrorPointer) -> Bool {
		var leftover = inParams ?? FHIRJSON()
		
		// do we have all mandatory ones and are the ones that we have valid?
		if let params = definition.parameter {
			for param in params {
				if nil == param.name {
					continue
				}
				
				if "in" == param.use {
					
					// have the parameter, validate it
					if let has: AnyObject = inParams?[param.name!] {
						leftover.removeValueForKey(param.name!)
						
						// TODO: actually validate!
					}
					
					// check if mandatory parameter is missing
					else if let min = param.min {
						if min > 0 {
							if nil != error {
								error.memory = genServerError("Operation \(self) is missing input parameter \"\(param.name)\"")
							}
							return false
						}
					}
				}
			}
		}
		
		// do we have leftover parameters
		for over in leftover {
			println("-->  Ignored operation parameter \(over) in \(self)")
		}
		return true
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
			return "\(instance!.relativeURL()!)/$\(name)"
		}
	}
	
	public func execute(server: FHIRServer, callback: ((response: FHIRServerJSONResponse) -> Void)) {
		server.getJSON(serverPath(), callback: callback)
	}
	
	
	// MARK: - Printable
	
	public var description: String {
		return "<FHIROperation $\(name)>"
	}
}


/// Alias to `FHIROperation` for neat operation usage.
public typealias $ = FHIROperation

