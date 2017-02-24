//
//  FHIRPrimitive.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 06.12.16.
//  2016, SMART Health IT.
//

import Foundation


public protocol FHIRPrimitive: FHIRJSONType {
	
	/// An optional id of the element. This is not a FHIRString as it segfaults the Swift 3.0.1 compiler.
	var id: String? { get set }
	
	/// Optional extensions of the element.
	var extension_fhir: [Extension]? { get set }
	
	func asExtraJSON(errors: inout [FHIRValidationError]) -> FHIRJSON?
}

extension FHIRPrimitive {
	
	public static func instantiate(from json: JSONType, owner: FHIRAbstractBase?, context: inout FHIRInstantiationContext) -> Self {
		return self.init(json: json, owner: owner, context: &context)
	}
	
	/**
	Default implementation to perform JSON parsing on primitives.
	
	- note: Values that the instance alreay possesses and are not in the JSON should be left alone.
	
	- parameter json:    The JSON element to use to populate the receiver
	- parameter context: The instantiation context to use
	- returns:           An optional array of errors reporting missing mandatory keys or keys containing values of the wrong type
	- throws:            If anything besides a `FHIRValidationError` happens
	*/
	public mutating func populate(from json: FHIRJSON, context: inout FHIRInstantiationContext) {
		if let id = json["id"] as? String {
			context.insertKey("id")
			self.id = id
		}
		extension_fhir = createInstances(of: Extension.self, for: "extension", in: json, context: &context, owner: _owner) ?? extension_fhir
	}
	
	public func asExtraJSON(errors: inout [FHIRValidationError]) -> FHIRJSON? {
		var extra: FHIRJSON?
		if let id = id {
			extra = extra ?? FHIRJSON()
			extra!["id"] = id
		}
		if let extensions = extension_fhir {
			extra = extra ?? FHIRJSON()
			extra!["extension"] = extensions.map() { $0.asJSON(errors: &errors) }
		}
		return extra
	}
	
	public func decorate(json: inout FHIRJSON, withKey key: String, errors: inout [FHIRValidationError]) {
		json[key] = asJSON(errors: &errors)
		if let extra = asExtraJSON(errors: &errors) {
			json["_\(key)"] = extra
		}
	}
}

public func arrayDecorate<T: FHIRJSONType>(json: inout FHIRJSON, withKey key: String, using array: [T]?, errors: inout [FHIRValidationError]) {
	guard let array = array else {
		return
	}
	let arr = array.map() { $0.asJSON(errors: &errors) }
	json[key] = arr
}

public func arrayDecorate<T: FHIRPrimitive>(json: inout FHIRJSON, withKey key: String, using array: [T]?, errors: inout [FHIRValidationError]) {
	guard let array = array else {
		return
	}
	let arr = array.map() { $0.asJSON(errors: &errors) }
	json[key] = arr
	
	// id and extensions
	let extensions = array.map() { $0.asExtraJSON(errors: &errors) }
	if extensions.filter({ nil != $0 }).count > 0 {
		json["_\(key)"] = extensions
	}
}

