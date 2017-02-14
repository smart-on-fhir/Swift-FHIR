//
//  Condition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Condition) on 2017-02-14.
//  2017, SMART Health IT.
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
	
	/// If/when in resolution/remission.
	public var abatementAge: Age?
	
	/// If/when in resolution/remission.
	public var abatementBoolean: FHIRBool?
	
	/// If/when in resolution/remission.
	public var abatementDateTime: DateTime?
	
	/// If/when in resolution/remission.
	public var abatementPeriod: Period?
	
	/// If/when in resolution/remission.
	public var abatementRange: Range?
	
	/// If/when in resolution/remission.
	public var abatementString: FHIRString?
	
	/// Date record was believed accurate.
	public var assertedDate: DateTime?
	
	/// Person who asserts this condition.
	public var asserter: Reference?
	
	/// Anatomical location, if relevant.
	public var bodySite: [CodeableConcept]?
	
	/// problem-list-item | encounter-diagnosis.
	public var category: [CodeableConcept]?
	
	/// active | recurrence | inactive | remission | resolved.
	public var clinicalStatus: FHIRString?
	
	/// Identification of the condition, problem or diagnosis.
	public var code: CodeableConcept?
	
	/// Encounter when condition first asserted.
	public var context: Reference?
	
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
	
	/// Subjective severity of condition.
	public var severity: CodeableConcept?
	
	/// Stage/grade, usually assessed formally.
	public var stage: ConditionStage?
	
	/// Who has the condition?.
	public var subject: Reference?
	
	/// The verification status to support the clinical status of the condition.
	public var verificationStatus: ConditionVerificationStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(subject: Reference) {
		self.init()
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		abatementAge = try createInstance(type: Age.self, for: "abatementAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abatementAge
		abatementBoolean = try createInstance(type: FHIRBool.self, for: "abatementBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abatementBoolean
		abatementDateTime = try createInstance(type: DateTime.self, for: "abatementDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abatementDateTime
		abatementPeriod = try createInstance(type: Period.self, for: "abatementPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abatementPeriod
		abatementRange = try createInstance(type: Range.self, for: "abatementRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abatementRange
		abatementString = try createInstance(type: FHIRString.self, for: "abatementString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? abatementString
		assertedDate = try createInstance(type: DateTime.self, for: "assertedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? assertedDate
		asserter = try createInstance(type: Reference.self, for: "asserter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asserter
		bodySite = try createInstances(of: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		clinicalStatus = try createInstance(type: FHIRString.self, for: "clinicalStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? clinicalStatus
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		evidence = try createInstances(of: ConditionEvidence.self, for: "evidence", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? evidence
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		onsetAge = try createInstance(type: Age.self, for: "onsetAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetAge
		onsetDateTime = try createInstance(type: DateTime.self, for: "onsetDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetDateTime
		onsetPeriod = try createInstance(type: Period.self, for: "onsetPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetPeriod
		onsetRange = try createInstance(type: Range.self, for: "onsetRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetRange
		onsetString = try createInstance(type: FHIRString.self, for: "onsetString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onsetString
		severity = try createInstance(type: CodeableConcept.self, for: "severity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? severity
		stage = try createInstance(type: ConditionStage.self, for: "stage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? stage
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		verificationStatus = createEnum(type: ConditionVerificationStatus.self, for: "verificationStatus", in: json, presentKeys: &presentKeys, errors: &errors) ?? verificationStatus
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.abatementAge?.decorate(json: &json, withKey: "abatementAge", errors: &errors)
		self.abatementBoolean?.decorate(json: &json, withKey: "abatementBoolean", errors: &errors)
		self.abatementDateTime?.decorate(json: &json, withKey: "abatementDateTime", errors: &errors)
		self.abatementPeriod?.decorate(json: &json, withKey: "abatementPeriod", errors: &errors)
		self.abatementRange?.decorate(json: &json, withKey: "abatementRange", errors: &errors)
		self.abatementString?.decorate(json: &json, withKey: "abatementString", errors: &errors)
		self.assertedDate?.decorate(json: &json, withKey: "assertedDate", errors: &errors)
		self.asserter?.decorate(json: &json, withKey: "asserter", errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.clinicalStatus?.decorate(json: &json, withKey: "clinicalStatus", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "evidence", using: self.evidence, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.onsetAge?.decorate(json: &json, withKey: "onsetAge", errors: &errors)
		self.onsetDateTime?.decorate(json: &json, withKey: "onsetDateTime", errors: &errors)
		self.onsetPeriod?.decorate(json: &json, withKey: "onsetPeriod", errors: &errors)
		self.onsetRange?.decorate(json: &json, withKey: "onsetRange", errors: &errors)
		self.onsetString?.decorate(json: &json, withKey: "onsetString", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		self.stage?.decorate(json: &json, withKey: "stage", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.verificationStatus?.decorate(json: &json, withKey: "verificationStatus", errors: &errors)
	}
}


/**
Supporting evidence.

Supporting Evidence / manifestations that are the basis on which this condition is suspected or confirmed.
*/
open class ConditionEvidence: BackboneElement {
	override open class var resourceType: String {
		get { return "ConditionEvidence" }
	}
	
	/// Manifestation/symptom.
	public var code: [CodeableConcept]?
	
	/// Supporting information found elsewhere.
	public var detail: [Reference]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		code = try createInstances(of: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		detail = try createInstances(of: Reference.self, for: "detail", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? detail
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		assessment = try createInstances(of: Reference.self, for: "assessment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? assessment
		summary = try createInstance(type: CodeableConcept.self, for: "summary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? summary
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "assessment", using: self.assessment, errors: &errors)
		self.summary?.decorate(json: &json, withKey: "summary", errors: &errors)
	}
}

