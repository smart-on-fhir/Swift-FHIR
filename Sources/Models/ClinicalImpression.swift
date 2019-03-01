//
//  ClinicalImpression.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ClinicalImpression) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A clinical assessment performed when planning treatments and management strategies for a patient.

A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the
treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a
clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called
"ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as
Apgar score.
*/
open class ClinicalImpression: DomainResource {
	override open class var resourceType: String {
		get { return "ClinicalImpression" }
	}
	
	/// The clinician performing the assessment.
	public var assessor: Reference?
	
	/// Kind of assessment performed.
	public var code: CodeableConcept?
	
	/// When the assessment was documented.
	public var date: DateTime?
	
	/// Why/how the assessment was performed.
	public var description_fhir: FHIRString?
	
	/// Time of assessment.
	public var effectiveDateTime: DateTime?
	
	/// Time of assessment.
	public var effectivePeriod: Period?
	
	/// Encounter created as part of.
	public var encounter: Reference?
	
	/// Possible or likely findings and diagnoses.
	public var finding: [ClinicalImpressionFinding]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// One or more sets of investigations (signs, symptoms, etc.).
	public var investigation: [ClinicalImpressionInvestigation]?
	
	/// Comments made about the ClinicalImpression.
	public var note: [Annotation]?
	
	/// Reference to last assessment.
	public var previous: Reference?
	
	/// Relevant impressions of patient state.
	public var problem: [Reference]?
	
	/// Estimate of likely outcome.
	public var prognosisCodeableConcept: [CodeableConcept]?
	
	/// RiskAssessment expressing likely outcome.
	public var prognosisReference: [Reference]?
	
	/// Clinical Protocol followed.
	public var protocol_fhir: [FHIRURL]?
	
	/// Identifies the workflow status of the assessment.
	/// Only use: ['in-progress', 'completed', 'entered-in-error']
	public var status: EventStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	/// Patient or group assessed.
	public var subject: Reference?
	
	/// Summary of the assessment.
	public var summary: FHIRString?
	
	/// Information supporting the clinical impression.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: EventStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		assessor = createInstance(type: Reference.self, for: "assessor", in: json, context: &instCtx, owner: self) ?? assessor
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		finding = createInstances(of: ClinicalImpressionFinding.self, for: "finding", in: json, context: &instCtx, owner: self) ?? finding
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		investigation = createInstances(of: ClinicalImpressionInvestigation.self, for: "investigation", in: json, context: &instCtx, owner: self) ?? investigation
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		previous = createInstance(type: Reference.self, for: "previous", in: json, context: &instCtx, owner: self) ?? previous
		problem = createInstances(of: Reference.self, for: "problem", in: json, context: &instCtx, owner: self) ?? problem
		prognosisCodeableConcept = createInstances(of: CodeableConcept.self, for: "prognosisCodeableConcept", in: json, context: &instCtx, owner: self) ?? prognosisCodeableConcept
		prognosisReference = createInstances(of: Reference.self, for: "prognosisReference", in: json, context: &instCtx, owner: self) ?? prognosisReference
		protocol_fhir = createInstances(of: FHIRURL.self, for: "protocol", in: json, context: &instCtx, owner: self) ?? protocol_fhir
		status = createEnum(type: EventStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		summary = createInstance(type: FHIRString.self, for: "summary", in: json, context: &instCtx, owner: self) ?? summary
		supportingInfo = createInstances(of: Reference.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.assessor?.decorate(json: &json, withKey: "assessor", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "finding", using: self.finding, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "investigation", using: self.investigation, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.previous?.decorate(json: &json, withKey: "previous", errors: &errors)
		arrayDecorate(json: &json, withKey: "problem", using: self.problem, errors: &errors)
		arrayDecorate(json: &json, withKey: "prognosisCodeableConcept", using: self.prognosisCodeableConcept, errors: &errors)
		arrayDecorate(json: &json, withKey: "prognosisReference", using: self.prognosisReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "protocol", using: self.protocol_fhir, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.summary?.decorate(json: &json, withKey: "summary", errors: &errors)
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
	}
}


/**
Possible or likely findings and diagnoses.

Specific findings or diagnoses that were considered likely or relevant to ongoing treatment.
*/
open class ClinicalImpressionFinding: BackboneElement {
	override open class var resourceType: String {
		get { return "ClinicalImpressionFinding" }
	}
	
	/// Which investigations support finding.
	public var basis: FHIRString?
	
	/// What was found.
	public var itemCodeableConcept: CodeableConcept?
	
	/// What was found.
	public var itemReference: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basis = createInstance(type: FHIRString.self, for: "basis", in: json, context: &instCtx, owner: self) ?? basis
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.basis?.decorate(json: &json, withKey: "basis", errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
	}
}


/**
One or more sets of investigations (signs, symptoms, etc.).

One or more sets of investigations (signs, symptoms, etc.). The actual grouping of investigations varies greatly
depending on the type and context of the assessment. These investigations may include data generated during the
assessment process, or data previously generated and recorded that is pertinent to the outcomes.
*/
open class ClinicalImpressionInvestigation: BackboneElement {
	override open class var resourceType: String {
		get { return "ClinicalImpressionInvestigation" }
	}
	
	/// A name/code for the set.
	public var code: CodeableConcept?
	
	/// Record of a specific investigation.
	public var item: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		item = createInstances(of: Reference.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "item", using: self.item, errors: &errors)
	}
}

