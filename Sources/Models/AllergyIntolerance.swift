//
//  AllergyIntolerance.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Allergy or Intolerance (generally: Risk of adverse reaction to a substance).

Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to
a substance.
*/
open class AllergyIntolerance: DomainResource {
	override open class var resourceType: String {
		get { return "AllergyIntolerance" }
	}
	
	/// Source of the information about the allergy.
	public var asserter: Reference?
	
	/// Category of the identified substance.
	public var category: [AllergyIntoleranceCategory]?
	
	/// active | inactive | resolved.
	public var clinicalStatus: CodeableConcept?
	
	/// Code that identifies the allergy or intolerance.
	public var code: CodeableConcept?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
	public var criticality: AllergyIntoleranceCriticality?
	
	/// Encounter when the allergy or intolerance was asserted.
	public var encounter: Reference?
	
	/// External ids for this item.
	public var identifier: [Identifier]?
	
	/// Date(/time) of last known occurrence of a reaction.
	public var lastOccurrence: DateTime?
	
	/// Additional text not captured in other fields.
	public var note: [Annotation]?
	
	/// When allergy or intolerance was identified.
	public var onsetAge: Age?
	
	/// When allergy or intolerance was identified.
	public var onsetDateTime: DateTime?
	
	/// When allergy or intolerance was identified.
	public var onsetPeriod: Period?
	
	/// When allergy or intolerance was identified.
	public var onsetRange: Range?
	
	/// When allergy or intolerance was identified.
	public var onsetString: FHIRString?
	
	/// Who the sensitivity is for.
	public var patient: Reference?
	
	/// Adverse Reaction Events linked to exposure to substance.
	public var reaction: [AllergyIntoleranceReaction]?
	
	/// Date first version of the resource instance was recorded.
	public var recordedDate: DateTime?
	
	/// Who recorded the sensitivity.
	public var recorder: Reference?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	public var type: AllergyIntoleranceType?
	
	/// unconfirmed | confirmed | refuted | entered-in-error.
	public var verificationStatus: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference) {
		self.init()
		self.patient = patient
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		asserter = createInstance(type: Reference.self, for: "asserter", in: json, context: &instCtx, owner: self) ?? asserter
		category = createEnums(of: AllergyIntoleranceCategory.self, for: "category", in: json, context: &instCtx) ?? category
		clinicalStatus = createInstance(type: CodeableConcept.self, for: "clinicalStatus", in: json, context: &instCtx, owner: self) ?? clinicalStatus
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		criticality = createEnum(type: AllergyIntoleranceCriticality.self, for: "criticality", in: json, context: &instCtx) ?? criticality
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		lastOccurrence = createInstance(type: DateTime.self, for: "lastOccurrence", in: json, context: &instCtx, owner: self) ?? lastOccurrence
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		onsetAge = createInstance(type: Age.self, for: "onsetAge", in: json, context: &instCtx, owner: self) ?? onsetAge
		onsetDateTime = createInstance(type: DateTime.self, for: "onsetDateTime", in: json, context: &instCtx, owner: self) ?? onsetDateTime
		onsetPeriod = createInstance(type: Period.self, for: "onsetPeriod", in: json, context: &instCtx, owner: self) ?? onsetPeriod
		onsetRange = createInstance(type: Range.self, for: "onsetRange", in: json, context: &instCtx, owner: self) ?? onsetRange
		onsetString = createInstance(type: FHIRString.self, for: "onsetString", in: json, context: &instCtx, owner: self) ?? onsetString
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		reaction = createInstances(of: AllergyIntoleranceReaction.self, for: "reaction", in: json, context: &instCtx, owner: self) ?? reaction
		recordedDate = createInstance(type: DateTime.self, for: "recordedDate", in: json, context: &instCtx, owner: self) ?? recordedDate
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		type = createEnum(type: AllergyIntoleranceType.self, for: "type", in: json, context: &instCtx) ?? type
		verificationStatus = createInstance(type: CodeableConcept.self, for: "verificationStatus", in: json, context: &instCtx, owner: self) ?? verificationStatus
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.asserter?.decorate(json: &json, withKey: "asserter", errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.clinicalStatus?.decorate(json: &json, withKey: "clinicalStatus", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.criticality?.decorate(json: &json, withKey: "criticality", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.lastOccurrence?.decorate(json: &json, withKey: "lastOccurrence", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.onsetAge?.decorate(json: &json, withKey: "onsetAge", errors: &errors)
		self.onsetDateTime?.decorate(json: &json, withKey: "onsetDateTime", errors: &errors)
		self.onsetPeriod?.decorate(json: &json, withKey: "onsetPeriod", errors: &errors)
		self.onsetRange?.decorate(json: &json, withKey: "onsetRange", errors: &errors)
		self.onsetString?.decorate(json: &json, withKey: "onsetString", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		arrayDecorate(json: &json, withKey: "reaction", using: self.reaction, errors: &errors)
		self.recordedDate?.decorate(json: &json, withKey: "recordedDate", errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.verificationStatus?.decorate(json: &json, withKey: "verificationStatus", errors: &errors)
	}
}


/**
Adverse Reaction Events linked to exposure to substance.

Details about each adverse reaction event linked to exposure to the identified substance.
*/
open class AllergyIntoleranceReaction: BackboneElement {
	override open class var resourceType: String {
		get { return "AllergyIntoleranceReaction" }
	}
	
	/// Description of the event as a whole.
	public var description_fhir: FHIRString?
	
	/// How the subject was exposed to the substance.
	public var exposureRoute: CodeableConcept?
	
	/// Clinical symptoms/signs associated with the Event.
	public var manifestation: [CodeableConcept]?
	
	/// Text about event not captured in other fields.
	public var note: [Annotation]?
	
	/// Date(/time) when manifestations showed.
	public var onset: DateTime?
	
	/// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different
	/// manifestations.
	public var severity: AllergyIntoleranceSeverity?
	
	/// Specific substance or pharmaceutical product considered to be responsible for event.
	public var substance: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(manifestation: [CodeableConcept]) {
		self.init()
		self.manifestation = manifestation
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		exposureRoute = createInstance(type: CodeableConcept.self, for: "exposureRoute", in: json, context: &instCtx, owner: self) ?? exposureRoute
		manifestation = createInstances(of: CodeableConcept.self, for: "manifestation", in: json, context: &instCtx, owner: self) ?? manifestation
		if (nil == manifestation || manifestation!.isEmpty) && !instCtx.containsKey("manifestation") {
			instCtx.addError(FHIRValidationError(missing: "manifestation"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		onset = createInstance(type: DateTime.self, for: "onset", in: json, context: &instCtx, owner: self) ?? onset
		severity = createEnum(type: AllergyIntoleranceSeverity.self, for: "severity", in: json, context: &instCtx) ?? severity
		substance = createInstance(type: CodeableConcept.self, for: "substance", in: json, context: &instCtx, owner: self) ?? substance
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.exposureRoute?.decorate(json: &json, withKey: "exposureRoute", errors: &errors)
		arrayDecorate(json: &json, withKey: "manifestation", using: self.manifestation, errors: &errors)
		if nil == manifestation || self.manifestation!.isEmpty {
			errors.append(FHIRValidationError(missing: "manifestation"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.onset?.decorate(json: &json, withKey: "onset", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		self.substance?.decorate(json: &json, withKey: "substance", errors: &errors)
	}
}

