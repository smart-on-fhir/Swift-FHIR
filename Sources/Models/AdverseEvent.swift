//
//  AdverseEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/AdverseEvent) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care,
a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization,
or that results in death.
*/
open class AdverseEvent: DomainResource {
	override open class var resourceType: String {
		get { return "AdverseEvent" }
	}
	
	/// The type of event is important to characterize what occurred and caused harm to the subject, or had the
	/// potential to cause harm to the subject.
	public var category: AdverseEventCategory?
	
	/// AdverseEvent.date.
	public var date: DateTime?
	
	/// AdverseEvent.description.
	public var description_fhir: FHIRString?
	
	/// Who  was involved in the adverse event or the potential adverse event.
	public var eventParticipant: Reference?
	
	/// AdverseEvent.identifier.
	public var identifier: Identifier?
	
	/// AdverseEvent.location.
	public var location: Reference?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown.
	public var outcome: CodeableConcept?
	
	/// Adverse Reaction Events linked to exposure to substance.
	public var reaction: [Reference]?
	
	/// AdverseEvent.recorder.
	public var recorder: Reference?
	
	/// AdverseEvent.referenceDocument.
	public var referenceDocument: [Reference]?
	
	/// Mild | Moderate | Severe.
	public var seriousness: CodeableConcept?
	
	/// AdverseEvent.study.
	public var study: [Reference]?
	
	/// Subject or group impacted by event.
	public var subject: Reference?
	
	/// AdverseEvent.subjectMedicalHistory.
	public var subjectMedicalHistory: [Reference]?
	
	/// AdverseEvent.suspectEntity.
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// actual | potential.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		category = createEnum(type: AdverseEventCategory.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors) ?? category
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		eventParticipant = try createInstance(type: Reference.self, for: "eventParticipant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventParticipant
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		location = try createInstance(type: Reference.self, for: "location", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? location
		outcome = try createInstance(type: CodeableConcept.self, for: "outcome", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? outcome
		reaction = try createInstances(of: Reference.self, for: "reaction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reaction
		recorder = try createInstance(type: Reference.self, for: "recorder", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recorder
		referenceDocument = try createInstances(of: Reference.self, for: "referenceDocument", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? referenceDocument
		seriousness = try createInstance(type: CodeableConcept.self, for: "seriousness", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? seriousness
		study = try createInstances(of: Reference.self, for: "study", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? study
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		subjectMedicalHistory = try createInstances(of: Reference.self, for: "subjectMedicalHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subjectMedicalHistory
		suspectEntity = try createInstances(of: AdverseEventSuspectEntity.self, for: "suspectEntity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? suspectEntity
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.eventParticipant?.decorate(json: &json, withKey: "eventParticipant", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		arrayDecorate(json: &json, withKey: "reaction", using: self.reaction, errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceDocument", using: self.referenceDocument, errors: &errors)
		self.seriousness?.decorate(json: &json, withKey: "seriousness", errors: &errors)
		arrayDecorate(json: &json, withKey: "study", using: self.study, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		arrayDecorate(json: &json, withKey: "subjectMedicalHistory", using: self.subjectMedicalHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "suspectEntity", using: self.suspectEntity, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
AdverseEvent.suspectEntity.
*/
open class AdverseEventSuspectEntity: BackboneElement {
	override open class var resourceType: String {
		get { return "AdverseEventSuspectEntity" }
	}
	
	/// None
	public var causality: AdverseEventCausality?
	
	/// assess1 | assess2.
	public var causalityAssessment: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityAuthor.
	public var causalityAuthor: Reference?
	
	/// method1 | method2.
	public var causalityMethod: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityProductRelatedness.
	public var causalityProductRelatedness: FHIRString?
	
	/// result1 | result2.
	public var causalityResult: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.instance.
	public var instance: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: Reference) {
		self.init()
		self.instance = instance
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		causality = createEnum(type: AdverseEventCausality.self, for: "causality", in: json, presentKeys: &presentKeys, errors: &errors) ?? causality
		causalityAssessment = try createInstance(type: CodeableConcept.self, for: "causalityAssessment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? causalityAssessment
		causalityAuthor = try createInstance(type: Reference.self, for: "causalityAuthor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? causalityAuthor
		causalityMethod = try createInstance(type: CodeableConcept.self, for: "causalityMethod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? causalityMethod
		causalityProductRelatedness = try createInstance(type: FHIRString.self, for: "causalityProductRelatedness", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? causalityProductRelatedness
		causalityResult = try createInstance(type: CodeableConcept.self, for: "causalityResult", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? causalityResult
		instance = try createInstance(type: Reference.self, for: "instance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instance
		if nil == instance && !presentKeys.contains("instance") {
			errors.append(FHIRValidationError(missing: "instance"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.causality?.decorate(json: &json, withKey: "causality", errors: &errors)
		self.causalityAssessment?.decorate(json: &json, withKey: "causalityAssessment", errors: &errors)
		self.causalityAuthor?.decorate(json: &json, withKey: "causalityAuthor", errors: &errors)
		self.causalityMethod?.decorate(json: &json, withKey: "causalityMethod", errors: &errors)
		self.causalityProductRelatedness?.decorate(json: &json, withKey: "causalityProductRelatedness", errors: &errors)
		self.causalityResult?.decorate(json: &json, withKey: "causalityResult", errors: &errors)
		self.instance?.decorate(json: &json, withKey: "instance", errors: &errors)
		if nil == self.instance {
			errors.append(FHIRValidationError(missing: "instance"))
		}
	}
}

