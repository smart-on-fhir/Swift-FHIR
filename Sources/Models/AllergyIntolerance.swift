//
//  AllergyIntolerance.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/AllergyIntolerance) on 2016-12-08.
//  2016, SMART Health IT.
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
	
	/// Date record was believed accurate.
	public var assertedDate: DateTime?
	
	/// Source of the information about the allergy.
	public var asserter: Reference?
	
	/// Category of the identified substance.
	public var category: [AllergyIntoleranceCategory]?
	
	/// The clinical status of the allergy or intolerance.
	public var clinicalStatus: AllergyIntoleranceClinicalStatus?
	
	/// Allergy or intolerance code.
	public var code: CodeableConcept?
	
	/// Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.
	public var criticality: AllergyIntoleranceCriticality?
	
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
	
	/// Who recorded the sensitivity.
	public var recorder: Reference?
	
	/// Identification of the underlying physiological mechanism for the reaction risk.
	public var type: AllergyIntoleranceType?
	
	/// Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified
	/// substance (including pharmaceutical product).
	public var verificationStatus: AllergyIntoleranceVerificationStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(patient: Reference, verificationStatus: AllergyIntoleranceVerificationStatus) {
		self.init()
		self.patient = patient
		self.verificationStatus = verificationStatus
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		assertedDate = try createInstance(type: DateTime.self, for: "assertedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? assertedDate
		asserter = try createInstance(type: Reference.self, for: "asserter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asserter
		category = createEnums(of: AllergyIntoleranceCategory.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors) ?? category
		clinicalStatus = createEnum(type: AllergyIntoleranceClinicalStatus.self, for: "clinicalStatus", in: json, presentKeys: &presentKeys, errors: &errors) ?? clinicalStatus
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		criticality = createEnum(type: AllergyIntoleranceCriticality.self, for: "criticality", in: json, presentKeys: &presentKeys, errors: &errors) ?? criticality
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		lastOccurrence = try createInstance(type: DateTime.self, for: "lastOccurrence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastOccurrence
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		onsetAge = try createInstance(type: Age.self, for: "onsetAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetAge
		onsetDateTime = try createInstance(type: DateTime.self, for: "onsetDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetDateTime
		onsetPeriod = try createInstance(type: Period.self, for: "onsetPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetPeriod
		onsetRange = try createInstance(type: Range.self, for: "onsetRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetRange
		onsetString = try createInstance(type: FHIRString.self, for: "onsetString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetString
		patient = try createInstance(type: Reference.self, for: "patient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patient
		if nil == patient && !presentKeys.contains("patient") {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		reaction = try createInstances(of: AllergyIntoleranceReaction.self, for: "reaction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reaction
		recorder = try createInstance(type: Reference.self, for: "recorder", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recorder
		type = createEnum(type: AllergyIntoleranceType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		verificationStatus = createEnum(type: AllergyIntoleranceVerificationStatus.self, for: "verificationStatus", in: json, presentKeys: &presentKeys, errors: &errors) ?? verificationStatus
		if nil == verificationStatus && !presentKeys.contains("verificationStatus") {
			errors.append(FHIRValidationError(missing: "verificationStatus"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assertedDate?.decorate(json: &json, withKey: "assertedDate", errors: &errors)
		self.asserter?.decorate(json: &json, withKey: "asserter", errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.clinicalStatus?.decorate(json: &json, withKey: "clinicalStatus", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.criticality?.decorate(json: &json, withKey: "criticality", errors: &errors)
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
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.verificationStatus?.decorate(json: &json, withKey: "verificationStatus", errors: &errors)
		if nil == self.verificationStatus {
			errors.append(FHIRValidationError(missing: "verificationStatus"))
		}
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
	
	/// Statement about the degree of clinical certainty that the specific substance was the cause of the manifestation
	/// in this reaction event.
	public var certainty: AllergyIntoleranceCertainty?
	
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		certainty = createEnum(type: AllergyIntoleranceCertainty.self, for: "certainty", in: json, presentKeys: &presentKeys, errors: &errors) ?? certainty
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		exposureRoute = try createInstance(type: CodeableConcept.self, for: "exposureRoute", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? exposureRoute
		manifestation = try createInstances(of: CodeableConcept.self, for: "manifestation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? manifestation
		if (nil == manifestation || manifestation!.isEmpty) && !presentKeys.contains("manifestation") {
			errors.append(FHIRValidationError(missing: "manifestation"))
		}
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		onset = try createInstance(type: DateTime.self, for: "onset", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onset
		severity = createEnum(type: AllergyIntoleranceSeverity.self, for: "severity", in: json, presentKeys: &presentKeys, errors: &errors) ?? severity
		substance = try createInstance(type: CodeableConcept.self, for: "substance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? substance
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.certainty?.decorate(json: &json, withKey: "certainty", errors: &errors)
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

