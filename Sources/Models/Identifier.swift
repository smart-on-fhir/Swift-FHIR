//
//  Identifier.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Identifier) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
An identifier intended for computation.

An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
*/
open class Identifier: Element {
	override open class var resourceType: String {
		get { return "Identifier" }
	}
	
	/// Organization that issued id (may be just text).
	public var assigner: Reference?
	
	/// Time period when id is/was valid for use.
	public var period: Period?
	
	/// The namespace for the identifier value.
	public var system: FHIRURL?
	
	/// Description of identifier.
	public var type: CodeableConcept?
	
	/// The purpose of this identifier.
	public var use: IdentifierUse?
	
	/// The value that is unique.
	public var value: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assigner = createInstance(type: Reference.self, for: "assigner", in: json, context: &instCtx, owner: self) ?? assigner
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		system = createInstance(type: FHIRURL.self, for: "system", in: json, context: &instCtx, owner: self) ?? system
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		use = createEnum(type: IdentifierUse.self, for: "use", in: json, context: &instCtx) ?? use
		value = createInstance(type: FHIRString.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assigner?.decorate(json: &json, withKey: "assigner", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}

