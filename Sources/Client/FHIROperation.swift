//
//  FHIROperation.swift
//  SwiftSMART
//
//  Created by Pascal Pfiffner on 3/31/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


/**
    The context an operation is to be performed against.
 */
public enum FHIROperationContext {
	case None, System, ResourceType, Instance
}


/**
    Named operations to be performed against a FHIR REST endpoint.
 */
public class FHIROperation: CustomStringConvertible {
	
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
				context = .ResourceType
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
			throw FHIRError.OperationConfigurationError("Operation \(self) has not been properly set up")
		case .System:
			if nil == definition.system || !definition.system! {
				throw FHIRError.OperationConfigurationError("Operation \(self) cannot be executed in system context")
			}
		case .ResourceType:
			if nil == definition.type {
				throw FHIRError.OperationConfigurationError("Operation \(self) cannot be executed in type context")
			}
			else if nil == type || !(definition.type!).contains(type!.resourceName) {
				throw FHIRError.OperationConfigurationError("Operation \(self) cannot be executed against \(type ?? nil) type")
			}
		case .Instance:
			if nil == definition.instance || !definition.instance! {
				throw FHIRError.OperationConfigurationError("Operation \(self) cannot be executed in instance context")
			}
			try instance?.relativeURLPath()
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
							throw FHIRError.OperationInputParameterMissing(param.name ?? "unknown")
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
	*/
	public func serverPath() throws -> String {
		switch context {
		case .None:
			throw FHIRError.OperationConfigurationError("Operation \(self) has not been properly set up")
		case .System:
			return "$\(name)"
		case .ResourceType:
			return "\(type!.resourceName)/$\(name)"
		case .Instance:
			let path = try instance!.relativeURLPath()
			return "\(path)/$\(name)"
		}
	}
	
	/**
	Perform the operation on the given server. You probably want to call `validateWith()` first.
	*/
	public func perform(server: FHIRServer, callback: ((response: FHIRServerResponse) -> Void)) throws {
		let path = try serverPath()
		server.performRequestOfType(.GET, path: path, resource: nil, additionalHeaders: nil, callback: callback)
	}
	
	
	// MARK: - Printable
	
	public var description: String {
		return "<FHIROperation $\(name)>"
	}
}


/// Alias to `FHIROperation` for neat operation usage.
public typealias $ = FHIROperation

