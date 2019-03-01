//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Condition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Detailed information about conditions, problems or diagnoses.

A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a
level of concern.
*/
open class Condition: DomainResource {
	override open class var resourceType: String {
		get { return "Condition" }
	}
	
	/// When in resolution/remission.
	public var abatementAge: Age?
	
	/// When in resolution/remission.
	public var abatementDateTime: DateTime?
	
	/// When in resolution/remission.
	public var abatementPeriod: Period?
	
	/// When in resolution/remission.
	public var abatementRange: Range?
	
	/// When in resolution/remission.
	public var abatementString: FHIRString?
	
	/// Person who asserts this condition.
	public var asserter: Reference?
	
	/// Anatomical location, if relevant.
	public var bodySite: [CodeableConcept]?
	
	/// problem-list-item | encounter-diagnosis.
	public var category: [CodeableConcept]?
	
	/// active | recurrence | relapse | inactive | remission | resolved.
	public var clinicalStatus: CodeableConcept?
	
	/// Identification of the condition, problem or diagnosis.
	public var code: CodeableConcept?
	
	/// Encounter created as part of.
	public var encounter: Reference?
	
	/// Supporting evidence.
	public var evidence: [ConditionEvidence]?
	
	/// External Ids for this condition.
	public var identifier: [Identifier]?
	
	/// Additional information about the Condition.
	public var note: [Annotation]?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetAge: Age?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetDateTime: DateTime?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetPeriod: Period?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetRange: Range?
	
	/// Estimated or actual date,  date-time, or age.
	public var onsetString: FHIRString?
	
	/// Date record was first recorded.
	public var recordedDate: DateTime?
	
	/// Who recorded the condition.
	public var recorder: Reference?
	
	/// Subjective severity of condition.
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally.
	public var stage: [ConditionStage]?
	
	/// Who has the condition?.
	public var subject: Reference?
	
	/// unconfirmed | provisional | differential | confirmed | refuted | entered-in-error.
	public var verificationStatus: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init()
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		abatementAge = createInstance(type: Age.self, for: "abatementAge", in: json, context: &instCtx, owner: self) ?? abatementAge
		abatementDateTime = createInstance(type: DateTime.self, for: "abatementDateTime", in: json, context: &instCtx, owner: self) ?? abatementDateTime
		abatementPeriod = createInstance(type: Period.self, for: "abatementPeriod", in: json, context: &instCtx, owner: self) ?? abatementPeriod
		abatementRange = createInstance(type: Range.self, for: "abatementRange", in: json, context: &instCtx, owner: self) ?? abatementRange
		abatementString = createInstance(type: FHIRString.self, for: "abatementString", in: json, context: &instCtx, owner: self) ?? abatementString
		asserter = createInstance(type: Reference.self, for: "asserter", in: json, context: &instCtx, owner: self) ?? asserter
		bodySite = createInstances(of: CodeableConcept.self, for: "bodySite", in: json, context: &instCtx, owner: self) ?? bodySite
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		clinicalStatus = createInstance(type: CodeableConcept.self, for: "clinicalStatus", in: json, context: &instCtx, owner: self) ?? clinicalStatus
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		evidence = createInstances(of: ConditionEvidence.self, for: "evidence", in: json, context: &instCtx, owner: self) ?? evidence
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		onsetAge = createInstance(type: Age.self, for: "onsetAge", in: json, context: &instCtx, owner: self) ?? onsetAge
		onsetDateTime = createInstance(type: DateTime.self, for: "onsetDateTime", in: json, context: &instCtx, owner: self) ?? onsetDateTime
		onsetPeriod = createInstance(type: Period.self, for: "onsetPeriod", in: json, context: &instCtx, owner: self) ?? onsetPeriod
		onsetRange = createInstance(type: Range.self, for: "onsetRange", in: json, context: &instCtx, owner: self) ?? onsetRange
		onsetString = createInstance(type: FHIRString.self, for: "onsetString", in: json, context: &instCtx, owner: self) ?? onsetString
		recordedDate = createInstance(type: DateTime.self, for: "recordedDate", in: json, context: &instCtx, owner: self) ?? recordedDate
		recorder = createInstance(type: Reference.self, for: "recorder", in: json, context: &instCtx, owner: self) ?? recorder
		severity = createInstance(type: CodeableConcept.self, for: "severity", in: json, context: &instCtx, owner: self) ?? severity
		stage = createInstances(of: ConditionStage.self, for: "stage", in: json, context: &instCtx, owner: self) ?? stage
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		verificationStatus = createInstance(type: CodeableConcept.self, for: "verificationStatus", in: json, context: &instCtx, owner: self) ?? verificationStatus
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.abatementAge?.decorate(json: &json, withKey: "abatementAge", errors: &errors)
		self.abatementDateTime?.decorate(json: &json, withKey: "abatementDateTime", errors: &errors)
		self.abatementPeriod?.decorate(json: &json, withKey: "abatementPeriod", errors: &errors)
		self.abatementRange?.decorate(json: &json, withKey: "abatementRange", errors: &errors)
		self.abatementString?.decorate(json: &json, withKey: "abatementString", errors: &errors)
		self.asserter?.decorate(json: &json, withKey: "asserter", errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.clinicalStatus?.decorate(json: &json, withKey: "clinicalStatus", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "evidence", using: self.evidence, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.onsetAge?.decorate(json: &json, withKey: "onsetAge", errors: &errors)
		self.onsetDateTime?.decorate(json: &json, withKey: "onsetDateTime", errors: &errors)
		self.onsetPeriod?.decorate(json: &json, withKey: "onsetPeriod", errors: &errors)
		self.onsetRange?.decorate(json: &json, withKey: "onsetRange", errors: &errors)
		self.onsetString?.decorate(json: &json, withKey: "onsetString", errors: &errors)
		self.recordedDate?.decorate(json: &json, withKey: "recordedDate", errors: &errors)
		self.recorder?.decorate(json: &json, withKey: "recorder", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		arrayDecorate(json: &json, withKey: "stage", using: self.stage, errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.verificationStatus?.decorate(json: &json, withKey: "verificationStatus", errors: &errors)
	}
}


/**
Supporting evidence.

Supporting evidence / manifestations that are the basis of the Condition's verification status, such as evidence that
confirmed or refuted the condition.
*/
open class ConditionEvidence: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionEvidence" }
	}
	
	/// Manifestation/symptom.
	public var code: [CodeableConcept]?
	
	/// Supporting information found elsewhere.
	public var detail: [Reference]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstances(of: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		detail = createInstances(of: Reference.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		arrayDecorate(json: &json, withKey: "detail", using: self.detail, errors: &errors)
	}
}


/**
Stage/grade, usually assessed formally.

Clinical stage or grade of a condition. May include formal severity assessments.
*/
open class ConditionStage: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionStage" }
	}
	
	/// Formal record of assessment.
	public var assessment: [Reference]?
	
	/// Simple summary (disease specific).
	public var summary: CodeableConcept?
	
	/// Kind of staging.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assessment = createInstances(of: Reference.self, for: "assessment", in: json, context: &instCtx, owner: self) ?? assessment
		summary = createInstance(type: CodeableConcept.self, for: "summary", in: json, context: &instCtx, owner: self) ?? summary
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "assessment", using: self.assessment, errors: &errors)
		self.summary?.decorate(json: &json, withKey: "summary", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

