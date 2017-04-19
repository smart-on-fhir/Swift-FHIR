//
//  ParameterDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ParameterDefinition) on 2017-03-22.
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
	
	/// Name used to access the parameter value.
	public var name: FHIRString?
	
	/// What profile the value is expected to be.
	public var profile: Reference?
	
	/// What type of value.
	public var type: FHIRString?
	
	/// Whether the parameter is input or output for the module.
	public var use: OperationParameterUse?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString, use: OperationParameterUse) {
		self.init()
		self.type = type
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		documentation = createInstance(type: FHIRString.self, for: "documentation", in: json, context: &instCtx, owner: self) ?? documentation
		max = createInstance(type: FHIRString.self, for: "max", in: json, context: &instCtx, owner: self) ?? max
		min = createInstance(type: FHIRInteger.self, for: "min", in: json, context: &instCtx, owner: self) ?? min
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		profile = createInstance(type: Reference.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		use = createEnum(type: OperationParameterUse.self, for: "use", in: json, context: &instCtx) ?? use
		if nil == use && !instCtx.containsKey("use") {
			instCtx.addError(FHIRValidationError(missing: "use"))
		}
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

