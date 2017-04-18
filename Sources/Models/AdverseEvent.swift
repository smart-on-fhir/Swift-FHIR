//
//  AdverseEvent.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11923 (http://hl7.org/fhir/StructureDefinition/AdverseEvent) on 2017-04-18.
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
	
	/// When the event occurred.
	public var date: DateTime?
	
	/// Description of the adverse event.
	public var description_fhir: FHIRString?
	
	/// Type of the event itself in releation to the subject.
	public var event: CodeableConcept?
	
	/// Who  was involved in the adverse event or the potential adverse event.
	public var eventParticipant: Reference?
	
	/// Business identifier for the event.
	public var identifier: Identifier?
	
	/// The type of event, important to characterize what occurred and caused harm to the subject, or had the potential
	/// to cause harm to the subject.
	public var kind: AdverseEventKind?
	
	/// Location where adverse event occurred.
	public var location: Reference?
	
	/// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown.
	public var outcome: CodeableConcept?
	
	/// Who recorded the adverse event.
	public var recorder: Reference?
	
	/// AdverseEvent.referenceDocument.
	public var referenceDocument: [Reference]?
	
	/// Effect on the subject due to this event.
	public var resultingCondition: [Reference]?
	
	/// Seriousness of the event.
	public var seriousness: CodeableConcept?
	
	/// Mild | Moderate | Severe.
	public var severity: CodeableConcept?
	
	/// AdverseEvent.study.
	public var study: [Reference]?
	
	/// Subject or group impacted by event.
	public var subject: Reference?
	
	/// AdverseEvent.subjectMedicalHistory.
	public var subjectMedicalHistory: [Reference]?
	
	/// The suspected agent causing the adverse event.
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(kind: AdverseEventKind) {
		self.init()
		self.kind = kind
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		event = createInstance(type: CodeableConcept.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		eventParticipant = createInstance(type: Reference.self, for: "eventParticipant", in: json, context: &instCtx, owner: self) ?? eventParticipant
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		kind = createEnum(type: AdverseEventKind.self, for: "kind", in: json, context: &instCtx) ?? kind
		if nil == kind && !instCtx.containsKey("kind") {
			instCtx.addError(FHIRValidationError(missing: "kind"))
		}
		location = createInstance(type: Reference.self, for: "location", in: json, context: &instCtx, owner: self) ?? location
		outcome = createInstance(type: CodeableConcept.self, for: "outcome", in: json, context: &instCtx, owner: self) ?? outcome
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		referenceDocument = createInstances(of: Reference.self, for: "referenceDocument", in: json, context: &instCtx, owner: self) ?? referenceDocument
		resultingCondition = createInstances(of: Reference.self, for: "resultingCondition", in: json, context: &instCtx, owner: self) ?? resultingCondition
		seriousness = createInstance(type: CodeableConcept.self, for: "seriousness", in: json, context: &instCtx, owner: self) ?? seriousness
		severity = createInstance(type: CodeableConcept.self, for: "severity", in: json, context: &instCtx, owner: self) ?? severity
		study = createInstances(of: Reference.self, for: "study", in: json, context: &instCtx, owner: self) ?? study
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		subjectMedicalHistory = createInstances(of: Reference.self, for: "subjectMedicalHistory", in: json, context: &instCtx, owner: self) ?? subjectMedicalHistory
		suspectEntity = createInstances(of: AdverseEventSuspectEntity.self, for: "suspectEntity", in: json, context: &instCtx, owner: self) ?? suspectEntity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.event?.decorate(json: &json, withKey: "event", errors: &errors)
		self.eventParticipant?.decorate(json: &json, withKey: "eventParticipant", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		self.location?.decorate(json: &json, withKey: "location", errors: &errors)
		self.outcome?.decorate(json: &json, withKey: "outcome", errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		arrayDecorate(json: &json, withKey: "referenceDocument", using: self.referenceDocument, errors: &errors)
		arrayDecorate(json: &json, withKey: "resultingCondition", using: self.resultingCondition, errors: &errors)
		self.seriousness?.decorate(json: &json, withKey: "seriousness", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		arrayDecorate(json: &json, withKey: "study", using: self.study, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
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

