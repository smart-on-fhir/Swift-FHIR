//
//  HumanName.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/HumanName) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Name of a human - parts and usage.

A human's name with the ability to identify parts and usage.
*/
open class HumanName: Element {
	override open class var resourceType: String {
		get { return "HumanName" }
	}
	
	/// Family name (often called 'Surname').
	public var family: FHIRString?
	
	/// Given names (not always 'first'). Includes middle names.
	public var given: [FHIRString]?
	
	/// Time period when name was/is in use.
	public var period: Period?
	
	/// Parts that come before the name.
	public var prefix: [FHIRString]?
	
	/// Parts that come after the name.
	public var suffix: [FHIRString]?
	
	/// Text representation of the full name.
	public var text: FHIRString?
	
	/// Identifies the purpose for this name.
	public var use: NameUse?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		family = createInstance(type: FHIRString.self, for: "family", in: json, context: &instCtx, owner: self) ?? family
		given = createInstances(of: FHIRString.self, for: "given", in: json, context: &instCtx, owner: self) ?? given
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		prefix = createInstances(of: FHIRString.self, for: "prefix", in: json, context: &instCtx, owner: self) ?? prefix
		suffix = createInstances(of: FHIRString.self, for: "suffix", in: json, context: &instCtx, owner: self) ?? suffix
		text = createInstance(type: FHIRString.self, for: "text", in: json, context: &instCtx, owner: self) ?? text
		use = createEnum(type: NameUse.self, for: "use", in: json, context: &instCtx) ?? use
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.family?.decorate(json: &json, withKey: "family", errors: &errors)
		arrayDecorate(json: &json, withKey: "given", using: self.given, errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		arrayDecorate(json: &json, withKey: "prefix", using: self.prefix, errors: &errors)
		arrayDecorate(json: &json, withKey: "suffix", using: self.suffix, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
	}
}

