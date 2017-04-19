//
//  AdverseEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/AdverseEvent) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Medical care, research study or other healthcare event causing physical injury.

Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care,
a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization,
or that results in death.
*/
open class AdverseEvent: DomainResource {
	override open class var resourceType: String {
		get { return "AdverseEvent" }
	}
	
	/// The type of event which is important to characterize what occurred and caused harm to the subject, or had the
	/// potential to cause harm to the subject.
	public var category: AdverseEventCategory?
	
	/// When the event occurred.
	public var date: DateTime?
	
	/// Description of the adverse event.
	public var description_fhir: FHIRString?
	
	/// Who  was involved in the adverse event or the potential adverse event.
	public var eventParticipant: Reference?
	
	/// Business identifier for the event.
	public var identifier: Identifier?
	
	/// Location where adverse event occurred.
	public var location: Reference?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown.
	public var outcome: CodeableConcept?
	
	/// Adverse Reaction Events linked to exposure to substance.
	public var reaction: [Reference]?
	
	/// Who recorded the adverse event.
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
	
	/// The suspected agent causing the adverse event.
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// actual | potential.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		category = createEnum(type: AdverseEventCategory.self, for: "category", in: json, context: &instCtx) ?? category
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		eventParticipant = createInstance(type: Reference.self, for: "eventParticipant", in: json, context: &instCtx, owner: self) ?? eventParticipant
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		reaction = createInstances(of: Reference.self, for: "reaction", in: json, context: &instCtx, owner: self) ?? reaction
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		referenceDocument = createInstances(of: Reference.self, for: "referenceDocument", in: json, context: &instCtx, owner: self) ?? referenceDocument
		seriousness = createInstance(type: CodeableConcept.self, for: "seriousness", in: json, context: &instCtx, owner: self) ?? seriousness
		study = createInstances(of: Reference.self, for: "study", in: json, context: &instCtx, owner: self) ?? study
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		subjectMedicalHistory = createInstances(of: Reference.self, for: "subjectMedicalHistory", in: json, context: &instCtx, owner: self) ?? subjectMedicalHistory
		suspectEntity = createInstances(of: AdverseEventSuspectEntity.self, for: "suspectEntity", in: json, context: &instCtx, owner: self) ?? suspectEntity
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
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
The suspected agent causing the adverse event.

Describes the entity that is suspected to have caused the adverse event.
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
	
	/// Refers to the specific entity that caused the adverse event.
	public var instance: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: Reference) {
		self.init()
		self.instance = instance
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		causality = createEnum(type: AdverseEventCausality.self, for: "causality", in: json, context: &instCtx) ?? causality
		causalityAssessment = createInstance(type: CodeableConcept.self, for: "causalityAssessment", in: json, context: &instCtx, owner: self) ?? causalityAssessment
		causalityAuthor = createInstance(type: Reference.self, for: "causalityAuthor", in: json, context: &instCtx, owner: self) ?? causalityAuthor
		causalityMethod = createInstance(type: CodeableConcept.self, for: "causalityMethod", in: json, context: &instCtx, owner: self) ?? causalityMethod
		causalityProductRelatedness = createInstance(type: FHIRString.self, for: "causalityProductRelatedness", in: json, context: &instCtx, owner: self) ?? causalityProductRelatedness
		causalityResult = createInstance(type: CodeableConcept.self, for: "causalityResult", in: json, context: &instCtx, owner: self) ?? causalityResult
		instance = createInstance(type: Reference.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		if nil == instance && !instCtx.containsKey("instance") {
			instCtx.addError(FHIRValidationError(missing: "instance"))
		}
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

