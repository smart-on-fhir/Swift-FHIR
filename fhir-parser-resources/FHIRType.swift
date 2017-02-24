//
//  FHIRTypes.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 12/16/14.
//  2014, SMART Health IT.
//

import Foundation


/**
A JSON dictionary, with `String` keys and `Any` values.
*/
public typealias FHIRJSON = [String: Any]


/**
The base type for every FHIR element.
*/
public protocol FHIRType {
	
	/// The parent/owner of the receiver, if any. Used to dereference resources.
	var _owner: FHIRAbstractBase? { get set }
}


/**
A protocol to handle FHIRType when working with JSON - which in our case is all FHIR types.
*/
public protocol FHIRJSONType: FHIRType {
	
	/// The JSON element used to deserialize the receiver from and serialize to.
	associatedtype JSONType
	
	/**
	Generic initializer to be used on deserialized JSON.
	
	- parameter json:    The value in its associated `JSONType`
	- parameter owner:   Optional, the owning element
	- parameter context: An in-out parameter for the instantiation context
	*/
	init(json: JSONType, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext)
	
	/**
	A static/class function that should return the correct (sub)type, depending on information found in `json`.
	
	On primitives, simply forwards to `init(json:owner:context:)`.
	
	- parameter json:    A JSONType instance from which to instantiate
	- parameter owner:   The FHIRAbstractBase owning the new instance, if appropriate
	- parameter context: An in-out parameter for the instantiation context
	- returns:           If possible the appropriate FHIRAbstractBase subclass, instantiated from the given JSON dictionary, Self otherwise
	*/
	static func instantiate(from json: JSONType, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext) -> Self
	
	/**
	Populate instance variables - overriding existing ones - with values found in the supplied JSON.
	
	- parameter json:    The JSON element to use to populate the receiver
	- parameter context: An in-out parameter for the instantiation context
	*/
	mutating func populateAndFinalize(from json: FHIRJSON, context: inout FHIRInstantiationContext)
	
	/**
	The main function to perform the actual JSON parsing, called from within `populate(from:strict:)` and usually overridden by subclasses.
	
	This method is expected to only ever encounter FHIRValidationError-type errors, any other errors should not occur and will simply be
	logged to the console.
	
	- parameter json:    The JSON element to use to populate the receiver
	- parameter context: An in-out parameter for the instantiation context
	*/
	mutating func populate(from json: FHIRJSON, context: inout FHIRInstantiationContext)
	
	/**
	Return the receiver's representation in `JSONType`.
	
	- parameter errors: Errors encountered during serialization
	- returns:          The FHIRJSON reperesentation of the receiver
	*/
	func asJSON(errors: inout [FHIRValidationError]) -> JSONType
	
	/**
	Represent the receiver in the given JSON dictionary.
	
	- note: Values that the instance alreay possesses and are not in the JSON should be left alone.
	
	- parameter json:    The FHIRJSON representation to populate
	- parameter withKey: The key to use
	- parameter errors:  An in-out array to be stuffed with validation errors encountered along the way
	*/
	func decorate(json: inout FHIRJSON, withKey: String, errors: inout [FHIRValidationError])
}

extension FHIRJSONType {
	
	/**
	This method must populate ivars from data found in the JSON and shoud be overridden by subclasses.
	
	- parameter json:    The JSON element to use to populate the receiver
	- parameter context: An in-out parameter being filled with key names used.
	- returns:           An optional array of errors reporting missing mandatory keys or keys containing values of the wrong type
	*/
	public func populate(from json: FHIRJSON, context: inout FHIRInstantiationContext) {
	}
	
	/**
	Will populate instance variables - overriding existing ones - with values found in the supplied JSON. Calls `populate(json:context:)`,
	which is what you should override instead, and then calls `finalize()` on the context.
	
	- parameter json:    The JSON element to use to populate the receiver
	- parameter context: An in-out parameter being filled with key names used.
	*/
	public final func populateAndFinalize(from json: FHIRJSON, context: inout FHIRInstantiationContext) {
		context.insertKey("fhir_comments")
		populate(from: json, context: &context)
		
		// finalize
		context.finalize(for: json)
		if nil == _owner {
			context.prefixErrors(with: "\(type(of: self))")
		}
	}
}


/**
Holds context during instantiation.
*/
public struct FHIRInstantiationContext {
	
	/// Whether validation errors should be thrown.
	public var strict: Bool
	
	/// A set of keys found and handled in the JSON.
	public internal(set) var presentKeys = Set<String>()
	
	/// Validation errors that occurred.
	public internal(set) var errors = [FHIRValidationError]()
	
	
	/** Designated initializer. */
	public init(strict: Bool = true) {
		self.strict = strict
	}
	
	/** Return a fresh context, retaining all relevant settings but not keys and errors, to be used on sub-items. */
	public func fresh() -> FHIRInstantiationContext {
		return FHIRInstantiationContext(strict: strict)
	}
	
	
	// MARK: - Keys
	
	/** Adds the given key to `presentKeys`. */
	public mutating func insertKey(_ key: String) {
		presentKeys.insert(key)
	}
	
	/** Checks whether the given key is already present. */
	public func containsKey(_ key: String) -> Bool {
		return presentKeys.contains(key)
	}
	
	/** Update the receiver with information from a sub-context. */
	public mutating func consume(_ context: FHIRInstantiationContext) {
		errors.append(contentsOf: context.errors)
	}
	
	
	// MARK: - Errors
	
	/** Adds the given validation error. */
	public mutating func addError(_ error: FHIRValidationError) {
		errors.append(error)
	}
	
	public mutating func prefixErrors(with prefix: String) {
		errors = errors.map() { $0.prefixed(with: prefix) }
	}
	
	
	// MARK: - Evaluation/Validation
	
	/**
	Pass all keys that were present so the receiver can determine superfluuous properties.
	
	- parameter json: The JSON that was used during initialization
	*/
	public mutating func finalize(for json: FHIRJSON) {
		for key in json.keys {     // cannot use filter() because that uses a closure, which complains of caturing a mutating foobar
			if !containsKey(key) {
				addError(FHIRValidationError(unknown: key, ofType: type(of: json[key]!)))
			}
		}
	}
	
	/**
	Call to either throw or log validation errors, if any.
	*/
	public func validate() throws {
		if !errors.isEmpty {
			if strict {
				throw (1 == errors.count) ? errors[0] : FHIRValidationError(errors: errors)
			}
			fhir_warn("\(errors)")
		}
	}
}

// MARK: -


/**
Inspects the given dictionary for the value of the given key, then instantiates the desired type if possible.

Cannot implement this as `init?() throws` because it needs to inspect `P.JSONType` before calling `init()`, which is not possible.

- parameter type:    The primitive type that is wanted
- parameter key:     The key for which to look in `json`
- parameter json:    The JSON dictionary to search through
- parameter context: The instantiation context to use
- parameter owner:   The FHIRAbstractBase owning the new instance, if appropriate
- returns:           An instance of the appropriate FHIRPrimitive, or nil
*/
public func createInstance<P: FHIRJSONType>(type: P.Type, for key: String, in json: FHIRJSON, context: inout FHIRInstantiationContext, owner: FHIRAbstractBase?) -> P? {
	// TODO: should not drop out if **only** an extension is present (as "_key") but no value under "key"
	guard let exist = json[key] else {
		if let _ = json["_\(key)"] {
			context.insertKey("_\(key)")   // cheating to pass unit tests
		}
		return nil
	}
	context.insertKey(key)
	
	guard let val = exist as? P.JSONType else {
		context.addError(FHIRValidationError(key: key, wants: P.JSONType.self, has: type(of: exist)))
		return nil
	}
	
	var subContext = context.fresh()
	var prim = P.instantiate(from: val, owner: owner, context: &subContext)
	if let ext = json["_\(key)"] as? FHIRJSON {
		context.insertKey("_\(key)")
		prim.populate(from: ext, context: &subContext)
	}
	subContext.prefixErrors(with: key)
	context.consume(subContext)
	
	return prim
}


/**
Inspects the given dictionary for an array with the given key, and if successful instantiates an array of the desired types.

This method cannot be part of FHIRJSONType because it would have to be implemented by every resource class, instead of just the
base class (error is "Protocol requirement cannot be satisfied by non-final class because it uses 'Self' in a non-parameter,
non-result type position).

- parameter type:    The primitive type that is expected
- parameter key:     The key for which to look in `json`
- parameter json:    The JSON dictionary to search through
- parameter context: The instantiation context to use
- parameter owner:   The FHIRAbstractBase owning the new instance, if appropriate
- returns:           An array of the appropriate FHIRPrimitive, or nil
*/
public func createInstances<P: FHIRJSONType>(of type: P.Type, for key: String, in json: FHIRJSON, context: inout FHIRInstantiationContext, owner: FHIRAbstractBase?) -> [P]? {
	// TODO: should not drop out if **only** an extension is present (as "_key") but no value under "key"
	guard let exist = json[key] else {
		if let _ = json["_\(key)"] {
			context.insertKey("_\(key)")   // cheating to pass unit tests
		}
		return nil
	}
	context.insertKey(key)
	
	// correct type, also for _key?
	guard let val = exist as? [P.JSONType] else {
		context.addError(FHIRValidationError(key: key, wants: Array<P.JSONType>.self, has: type(of: exist)))
		return nil
	}
	
	var primitiveExtensions: [FHIRJSON?]?
	if let primitivesExist = json["_\(key)"] {
		context.insertKey("_\(key)")
		if let primitivesCorrect = primitivesExist as? [FHIRJSON?] {
			primitiveExtensions = primitivesCorrect
		}
		else {
			context.addError(FHIRValidationError(key: "_\(key)", wants: Array<FHIRJSON?>.self, has: type(of: primitivesExist)))
		}
	}
	
	// instantiate primitives including extensions
	var primitives = [P]()
	for (i, value) in val.enumerated() {
		var subContext = context.fresh()
		var prim = P.instantiate(from: value, owner: owner, context: &subContext)
		if primitiveExtensions?.count ?? 0 > i, let extended = primitiveExtensions?[i] {
			prim.populate(from: extended, context: &subContext)
		}
		primitives.append(prim)
		
		subContext.prefixErrors(with: "\(key).\(i)")   // TODO: should prefix `_key` appropriately
		context.consume(subContext)
	}
	return primitives.isEmpty ? nil : primitives
}


// MARK: - Helper Functions

/**
Execute a `print()`, prepending filename, line and function/method name, if `DEBUG` is defined.
*/
public func fhir_logIfDebug(_ message: @autoclosure () -> String, function: String = #function, file: String = #file, line: Int = #line) {
#if DEBUG
	print("SwiftFHIR [\(URL(fileURLWithPath: file).lastPathComponent):\(line)] \(function)  \(message())")
#endif
}

/**
Execute a `print()`, prepending filename, line and function/method name and "WARNING" prepended.
*/
public func fhir_warn(_ message: @autoclosure () -> String, function: String = #function, file: String = #file, line: Int = #line) {
	print("SwiftFHIR [\(URL(fileURLWithPath: file).lastPathComponent):\(line)] \(function)  WARNING: \(message())")
}

