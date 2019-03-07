//
//  Population.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Population) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A definition of a set of people that apply to some clinically related context, for example people contraindicated for a
certain medication.

A populatioof people with some set of grouping criteria.
*/
open class Population: BackboneElement {
	override open class var resourceType: String {
		get { return "Population" }
	}
	
	/// The age of the specific population.
	public var ageCodeableConcept: CodeableConcept?
	
	/// The age of the specific population.
	public var ageRange: Range?
	
	/// The gender of the specific population.
	public var gender: CodeableConcept?
	
	/// The existing physiological conditions of the specific population to which this applies.
	public var physiologicalCondition: CodeableConcept?
	
	/// Race of the specific population.
	public var race: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		ageCodeableConcept = createInstance(type: CodeableConcept.self, for: "ageCodeableConcept", in: json, context: &instCtx, owner: self) ?? ageCodeableConcept
		ageRange = createInstance(type: Range.self, for: "ageRange", in: json, context: &instCtx, owner: self) ?? ageRange
		gender = createInstance(type: CodeableConcept.self, for: "gender", in: json, context: &instCtx, owner: self) ?? gender
		physiologicalCondition = createInstance(type: CodeableConcept.self, for: "physiologicalCondition", in: json, context: &instCtx, owner: self) ?? physiologicalCondition
		race = createInstance(type: CodeableConcept.self, for: "race", in: json, context: &instCtx, owner: self) ?? race
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.ageCodeableConcept?.decorate(json: &json, withKey: "ageCodeableConcept", errors: &errors)
		self.ageRange?.decorate(json: &json, withKey: "ageRange", errors: &errors)
		self.gender?.decorate(json: &json, withKey: "gender", errors: &errors)
		self.physiologicalCondition?.decorate(json: &json, withKey: "physiologicalCondition", errors: &errors)
		self.race?.decorate(json: &json, withKey: "race", errors: &errors)
	}
}

