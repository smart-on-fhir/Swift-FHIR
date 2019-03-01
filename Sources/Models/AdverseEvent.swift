//
//  AdverseEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/AdverseEvent) on 2019-03-01.
//  2019, SMART Health IT.
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
	
	/// Whether the event actually happened, or just had the potential to. Note that this is independent of whether
	/// anyone was affected or harmed or how severely.
	public var actuality: AdverseEventActuality?
	
	/// product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-
	/// technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-
	/// device-use-error | problem-different-manufacturer | unsafe-physical-environment.
	public var category: [CodeableConcept]?
	
	/// Who  was involved in the adverse event or the potential adverse event.
	public var contributor: [Reference]?
	
	/// When the event occurred.
	public var date: DateTime?
	
	/// When the event was detected.
	public var detected: DateTime?
	
	/// Encounter created as part of.
	public var encounter: Reference?
	
	/// Type of the event itself in relation to the subject.
	public var event: CodeableConcept?
	
	/// Business identifier for the event.
	public var identifier: Identifier?
	
	/// Location where adverse event occurred.
	public var location: Reference?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown.
	public var outcome: CodeableConcept?
	
	/// When the event was recorded.
	public var recordedDate: DateTime?
	
	/// Who recorded the adverse event.
	public var recorder: Reference?
	
	/// AdverseEvent.referenceDocument.
	public var referenceDocument: [Reference]?
	
	/// Effect on the subject due to this event.
	public var resultingCondition: [Reference]?
	
	/// Seriousness of the event.
	public var seriousness: CodeableConcept?
	
	/// mild | moderate | severe.
	public var severity: CodeableConcept?
	
	/// AdverseEvent.study.
	public var study: [Reference]?
	
	/// Subject impacted by event.
	public var subject: Reference?
	
	/// AdverseEvent.subjectMedicalHistory.
	public var subjectMedicalHistory: [Reference]?
	
	/// The suspected agent causing the adverse event.
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actuality: AdverseEventActuality, subject: Reference) {
		self.init()
		self.actuality = actuality
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actuality = createEnum(type: AdverseEventActuality.self, for: "actuality", in: json, context: &instCtx) ?? actuality
		if nil == actuality && !instCtx.containsKey("actuality") {
			instCtx.addError(FHIRValidationError(missing: "actuality"))
		}
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		contributor = createInstances(of: Reference.self, for: "contributor", in: json, context: &instCtx, owner: self) ?? contributor
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		detected = createInstance(type: DateTime.self, for: "detected", in: json, context: &instCtx, owner: self) ?? detected
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		event = createInstance(type: CodeableConcept.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		recordedDate = createInstance(type: DateTime.self, for: "recordedDate", in: json, context: &instCtx, owner: self) ?? recordedDate
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		referenceDocument = createInstances(of: Reference.self, for: "referenceDocument", in: json, context: &instCtx, owner: self) ?? referenceDocument
		resultingCondition = createInstances(of: Reference.self, for: "resultingCondition", in: json, context: &instCtx, owner: self) ?? resultingCondition
		seriousness = createInstance(type: CodeableConcept.self, for: "seriousness", in: json, context: &instCtx, owner: self) ?? seriousness
		severity = createInstance(type: CodeableConcept.self, for: "severity", in: json, context: &instCtx, owner: self) ?? severity
		study = createInstances(of: Reference.self, for: "study", in: json, context: &instCtx, owner: self) ?? study
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		subjectMedicalHistory = createInstances(of: Reference.self, for: "subjectMedicalHistory", in: json, context: &instCtx, owner: self) ?? subjectMedicalHistory
		suspectEntity = createInstances(of: AdverseEventSuspectEntity.self, for: "suspectEntity", in: json, context: &instCtx, owner: self) ?? suspectEntity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actuality?.decorate(json: &json, withKey: "actuality", errors: &errors)
		if nil == self.actuality {
			errors.append(FHIRValidationError(missing: "actuality"))
		}
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		arrayDecorate(json: &json, withKey: "contributor", using: self.contributor, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.detected?.decorate(json: &json, withKey: "detected", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		self.event?.decorate(json: &json, withKey: "event", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.recordedDate?.decorate(json: &json, withKey: "recordedDate", errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceDocument", using: self.referenceDocument, errors: &errors)
		arrayDecorate(json: &json, withKey: "resultingCondition", using: self.resultingCondition, errors: &errors)
		self.seriousness?.decorate(json: &json, withKey: "seriousness", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		arrayDecorate(json: &json, withKey: "study", using: self.study, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "subjectMedicalHistory", using: self.subjectMedicalHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "suspectEntity", using: self.suspectEntity, errors: &errors)
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
	
	/// Information on the possible cause of the event.
	public var causality: [AdverseEventSuspectEntityCausality]?
	
	/// Refers to the specific entity that caused the adverse event.
	public var instance: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(instance: Reference) {
		self.init()
		self.instance = instance
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		causality = createInstances(of: AdverseEventSuspectEntityCausality.self, for: "causality", in: json, context: &instCtx, owner: self) ?? causality
		instance = createInstance(type: Reference.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		if nil == instance && !instCtx.containsKey("instance") {
			instCtx.addError(FHIRValidationError(missing: "instance"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "causality", using: self.causality, errors: &errors)
		self.instance?.decorate(json: &json, withKey: "instance", errors: &errors)
		if nil == self.instance {
			errors.append(FHIRValidationError(missing: "instance"))
		}
	}
}


/**
Information on the possible cause of the event.
*/
open class AdverseEventSuspectEntityCausality: BackboneElement {
	override open class var resourceType: String {
		get { return "AdverseEventSuspectEntityCausality" }
	}
	
	/// Assessment of if the entity caused the event.
	public var assessment: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityAuthor.
	public var author: Reference?
	
	/// ProbabilityScale | Bayesian | Checklist.
	public var method: CodeableConcept?
	
	/// AdverseEvent.suspectEntity.causalityProductRelatedness.
	public var productRelatedness: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assessment = createInstance(type: CodeableConcept.self, for: "assessment", in: json, context: &instCtx, owner: self) ?? assessment
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		method = createInstance(type: CodeableConcept.self, for: "method", in: json, context: &instCtx, owner: self) ?? method
		productRelatedness = createInstance(type: FHIRString.self, for: "productRelatedness", in: json, context: &instCtx, owner: self) ?? productRelatedness
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assessment?.decorate(json: &json, withKey: "assessment", errors: &errors)
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.method?.decorate(json: &json, withKey: "method", errors: &errors)
		self.productRelatedness?.decorate(json: &json, withKey: "productRelatedness", errors: &errors)
	}
}

