//
//  ClinicalImpression.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ClinicalImpression) on 2017-03-22.
//  2017, SMART Health IT.
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
	
	/// Action taken as part of assessment procedure.
	public var action: [Reference]?
	
	/// The clinician performing the assessment.
	public var assessor: Reference?
	
	/// Kind of assessment performed.
	public var code: CodeableConcept?
	
	/// Encounter or Episode created from.
	public var context: Reference?
	
	/// When the assessment was documented.
	public var date: DateTime?
	
	/// Why/how the assessment was performed.
	public var description_fhir: FHIRString?
	
	/// Time of assessment.
	public var effectiveDateTime: DateTime?
	
	/// Time of assessment.
	public var effectivePeriod: Period?
	
	/// Possible or likely findings and diagnoses.
	public var finding: [ClinicalImpressionFinding]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// One or more sets of investigations (signs, symptions, etc.).
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
	public var status: ClinicalImpressionStatus?
	
	/// Patient or group assessed.
	public var subject: Reference?
	
	/// Summary of the assessment.
	public var summary: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ClinicalImpressionStatus, subject: Reference) {
		self.init()
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstances(of: Reference.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		assessor = createInstance(type: Reference.self, for: "assessor", in: json, context: &instCtx, owner: self) ?? assessor
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		finding = createInstances(of: ClinicalImpressionFinding.self, for: "finding", in: json, context: &instCtx, owner: self) ?? finding
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		investigation = createInstances(of: ClinicalImpressionInvestigation.self, for: "investigation", in: json, context: &instCtx, owner: self) ?? investigation
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		previous = createInstance(type: Reference.self, for: "previous", in: json, context: &instCtx, owner: self) ?? previous
		problem = createInstances(of: Reference.self, for: "problem", in: json, context: &instCtx, owner: self) ?? problem
		prognosisCodeableConcept = createInstances(of: CodeableConcept.self, for: "prognosisCodeableConcept", in: json, context: &instCtx, owner: self) ?? prognosisCodeableConcept
		prognosisReference = createInstances(of: Reference.self, for: "prognosisReference", in: json, context: &instCtx, owner: self) ?? prognosisReference
		protocol_fhir = createInstances(of: FHIRURL.self, for: "protocol", in: json, context: &instCtx, owner: self) ?? protocol_fhir
		status = createEnum(type: ClinicalImpressionStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		summary = createInstance(type: FHIRString.self, for: "summary", in: json, context: &instCtx, owner: self) ?? summary
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "action", using: self.action, errors: &errors)
		self.assessor?.decorate(json: &json, withKey: "assessor", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
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
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		self.summary?.decorate(json: &json, withKey: "summary", errors: &errors)
	}
}


/**
Possible or likely findings and diagnoses.

Specific findings or diagnoses that was considered likely or relevant to ongoing treatment.
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
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basis = createInstance(type: FHIRString.self, for: "basis", in: json, context: &instCtx, owner: self) ?? basis
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.basis?.decorate(json: &json, withKey: "basis", errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}


/**
One or more sets of investigations (signs, symptions, etc.).

One or more sets of investigations (signs, symptions, etc.). The actual grouping of investigations vary greatly
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

