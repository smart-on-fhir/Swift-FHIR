//
//  MedicinalProductUndesirableEffect.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
MedicinalProductUndesirableEffect.

Describe the undesirable effects of the medicinal product.
*/
open class MedicinalProductUndesirableEffect: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductUndesirableEffect" }
	}
	
	/// Classification of the effect.
	public var classification: CodeableConcept?
	
	/// The frequency of occurrence of the effect.
	public var frequencyOfOccurrence: CodeableConcept?
	
	/// The population group to which this applies.
	public var population: [Population]?
	
	/// The medication for which this is an indication.
	public var subject: [Reference]?
	
	/// The symptom, condition or undesirable effect.
	public var symptomConditionEffect: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		classification = createInstance(type: CodeableConcept.self, for: "classification", in: json, context: &instCtx, owner: self) ?? classification
		frequencyOfOccurrence = createInstance(type: CodeableConcept.self, for: "frequencyOfOccurrence", in: json, context: &instCtx, owner: self) ?? frequencyOfOccurrence
		population = createInstances(of: Population.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		symptomConditionEffect = createInstance(type: CodeableConcept.self, for: "symptomConditionEffect", in: json, context: &instCtx, owner: self) ?? symptomConditionEffect
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.classification?.decorate(json: &json, withKey: "classification", errors: &errors)
		self.frequencyOfOccurrence?.decorate(json: &json, withKey: "frequencyOfOccurrence", errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		self.symptomConditionEffect?.decorate(json: &json, withKey: "symptomConditionEffect", errors: &errors)
	}
}

