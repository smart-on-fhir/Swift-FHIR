//
//  MedicinalProductIndication.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
MedicinalProductIndication.

Indication for the Medicinal Product.
*/
open class MedicinalProductIndication: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductIndication" }
	}
	
	/// Comorbidity (concurrent condition) or co-infection as part of the indication.
	public var comorbidity: [CodeableConcept]?
	
	/// The status of the disease or symptom for which the indication applies.
	public var diseaseStatus: CodeableConcept?
	
	/// The disease, symptom or procedure that is the indication for treatment.
	public var diseaseSymptomProcedure: CodeableConcept?
	
	/// Timing or duration information as part of the indication.
	public var duration: Quantity?
	
	/// The intended effect, aim or strategy to be achieved by the indication.
	public var intendedEffect: CodeableConcept?
	
	/// Information about the use of the medicinal product in relation to other therapies described as part of the
	/// indication.
	public var otherTherapy: [MedicinalProductIndicationOtherTherapy]?
	
	/// The population group to which this applies.
	public var population: [Population]?
	
	/// The medication for which this is an indication.
	public var subject: [Reference]?
	
	/// Describe the undesirable effects of the medicinal product.
	public var undesirableEffect: [Reference]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comorbidity = createInstances(of: CodeableConcept.self, for: "comorbidity", in: json, context: &instCtx, owner: self) ?? comorbidity
		diseaseStatus = createInstance(type: CodeableConcept.self, for: "diseaseStatus", in: json, context: &instCtx, owner: self) ?? diseaseStatus
		diseaseSymptomProcedure = createInstance(type: CodeableConcept.self, for: "diseaseSymptomProcedure", in: json, context: &instCtx, owner: self) ?? diseaseSymptomProcedure
		duration = createInstance(type: Quantity.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		intendedEffect = createInstance(type: CodeableConcept.self, for: "intendedEffect", in: json, context: &instCtx, owner: self) ?? intendedEffect
		otherTherapy = createInstances(of: MedicinalProductIndicationOtherTherapy.self, for: "otherTherapy", in: json, context: &instCtx, owner: self) ?? otherTherapy
		population = createInstances(of: Population.self, for: "population", in: json, context: &instCtx, owner: self) ?? population
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		undesirableEffect = createInstances(of: Reference.self, for: "undesirableEffect", in: json, context: &instCtx, owner: self) ?? undesirableEffect
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "comorbidity", using: self.comorbidity, errors: &errors)
		self.diseaseStatus?.decorate(json: &json, withKey: "diseaseStatus", errors: &errors)
		self.diseaseSymptomProcedure?.decorate(json: &json, withKey: "diseaseSymptomProcedure", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.intendedEffect?.decorate(json: &json, withKey: "intendedEffect", errors: &errors)
		arrayDecorate(json: &json, withKey: "otherTherapy", using: self.otherTherapy, errors: &errors)
		arrayDecorate(json: &json, withKey: "population", using: self.population, errors: &errors)
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		arrayDecorate(json: &json, withKey: "undesirableEffect", using: self.undesirableEffect, errors: &errors)
	}
}


/**
Information about the use of the medicinal product in relation to other therapies described as part of the indication.
*/
open class MedicinalProductIndicationOtherTherapy: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductIndicationOtherTherapy" }
	}
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication.
	public var medicationCodeableConcept: CodeableConcept?
	
	/// Reference to a specific medication (active substance, medicinal product or class of products) as part of an
	/// indication or contraindication.
	public var medicationReference: Reference?
	
	/// The type of relationship between the medicinal product indication or contraindication and another therapy.
	public var therapyRelationshipType: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(medication: Any, therapyRelationshipType: CodeableConcept) {
		self.init()
		if let value = medication as? CodeableConcept {
			self.medicationCodeableConcept = value
		}
		else if let value = medication as? Reference {
			self.medicationReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: medication))” for property “\(medication)” is invalid, ignoring")
		}
		self.therapyRelationshipType = therapyRelationshipType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		medicationCodeableConcept = createInstance(type: CodeableConcept.self, for: "medicationCodeableConcept", in: json, context: &instCtx, owner: self) ?? medicationCodeableConcept
		medicationReference = createInstance(type: Reference.self, for: "medicationReference", in: json, context: &instCtx, owner: self) ?? medicationReference
		therapyRelationshipType = createInstance(type: CodeableConcept.self, for: "therapyRelationshipType", in: json, context: &instCtx, owner: self) ?? therapyRelationshipType
		if nil == therapyRelationshipType && !instCtx.containsKey("therapyRelationshipType") {
			instCtx.addError(FHIRValidationError(missing: "therapyRelationshipType"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			instCtx.addError(FHIRValidationError(missing: "medication[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.medicationCodeableConcept?.decorate(json: &json, withKey: "medicationCodeableConcept", errors: &errors)
		self.medicationReference?.decorate(json: &json, withKey: "medicationReference", errors: &errors)
		self.therapyRelationshipType?.decorate(json: &json, withKey: "therapyRelationshipType", errors: &errors)
		if nil == self.therapyRelationshipType {
			errors.append(FHIRValidationError(missing: "therapyRelationshipType"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.medicationCodeableConcept && nil == self.medicationReference {
			errors.append(FHIRValidationError(missing: "medication[x]"))
		}
	}
}

