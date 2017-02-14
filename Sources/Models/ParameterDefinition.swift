//
//  ParameterDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ParameterDefinition) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Definition of a parameter to a module.

The parameters to the module. This collection specifies both the input and output parameters. Input parameters are
provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
*/
open class ParameterDefinition: Element {
	override open class var resourceType: String {
		get { return "ParameterDefinition" }
	}
	
	/// A brief description of the parameter.
	public var documentation: FHIRString?
	
	/// Maximum cardinality (a number of *).
	public var max: FHIRString?
	
	/// Minimum cardinality.
	public var min: FHIRInteger?
	
	/// Parameter name.
	public var name: FHIRString?
	
	/// The profile of the parameter, any.
	public var profile: Reference?
	
	/// Type for the parameter.
	public var type: FHIRString?
	
	/// Whether the parameter is input or output for the module.
	public var use: OperationParameterUse?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString, use: OperationParameterUse) {
		self.init()
		self.type = type
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		profile = try createInstance(type: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		use = createEnum(type: OperationParameterUse.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors) ?? use
		if nil == use && !presentKeys.contains("use") {
			errors.append(FHIRValidationError(missing: "use"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
		if nil == self.use {
			errors.append(FHIRValidationError(missing: "use"))
		}
	}
}

