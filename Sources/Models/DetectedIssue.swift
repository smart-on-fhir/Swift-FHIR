//
//  DetectedIssue.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/DetectedIssue) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Clinical issue with action.

Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a
patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
*/
open class DetectedIssue: DomainResource {
	override open class var resourceType: String {
		get { return "DetectedIssue" }
	}
	
	/// The provider or device that identified the issue.
	public var author: Reference?
	
	/// Issue Category, e.g. drug-drug, duplicate therapy, etc..
	public var code: CodeableConcept?
	
	/// Description and context.
	public var detail: FHIRString?
	
	/// Supporting evidence.
	public var evidence: [DetectedIssueEvidence]?
	
	/// When identified.
	public var identifiedDateTime: DateTime?
	
	/// When identified.
	public var identifiedPeriod: Period?
	
	/// Unique id for the detected issue.
	public var identifier: [Identifier]?
	
	/// Problem resource.
	public var implicated: [Reference]?
	
	/// Step taken to address.
	public var mitigation: [DetectedIssueMitigation]?
	
	/// Associated patient.
	public var patient: Reference?
	
	/// Authority for issue.
	public var reference: FHIRURL?
	
	/// Indicates the degree of importance associated with the identified issue based on the potential impact on the
	/// patient.
	public var severity: DetectedIssueSeverity?
	
	/// Indicates the status of the detected issue.
	public var status: ObservationStatus?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: ObservationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		detail = createInstance(type: FHIRString.self, for: "detail", in: json, context: &instCtx, owner: self) ?? detail
		evidence = createInstances(of: DetectedIssueEvidence.self, for: "evidence", in: json, context: &instCtx, owner: self) ?? evidence
		identifiedDateTime = createInstance(type: DateTime.self, for: "identifiedDateTime", in: json, context: &instCtx, owner: self) ?? identifiedDateTime
		identifiedPeriod = createInstance(type: Period.self, for: "identifiedPeriod", in: json, context: &instCtx, owner: self) ?? identifiedPeriod
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		implicated = createInstances(of: Reference.self, for: "implicated", in: json, context: &instCtx, owner: self) ?? implicated
		mitigation = createInstances(of: DetectedIssueMitigation.self, for: "mitigation", in: json, context: &instCtx, owner: self) ?? mitigation
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		reference = createInstance(type: FHIRURL.self, for: "reference", in: json, context: &instCtx, owner: self) ?? reference
		severity = createEnum(type: DetectedIssueSeverity.self, for: "severity", in: json, context: &instCtx) ?? severity
		status = createEnum(type: ObservationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.detail?.decorate(json: &json, withKey: "detail", errors: &errors)
		arrayDecorate(json: &json, withKey: "evidence", using: self.evidence, errors: &errors)
		self.identifiedDateTime?.decorate(json: &json, withKey: "identifiedDateTime", errors: &errors)
		self.identifiedPeriod?.decorate(json: &json, withKey: "identifiedPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "implicated", using: self.implicated, errors: &errors)
		arrayDecorate(json: &json, withKey: "mitigation", using: self.mitigation, errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.reference?.decorate(json: &json, withKey: "reference", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}


/**
Supporting evidence.

Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a
GuidanceResponse or MeasureReport.
*/
open class DetectedIssueEvidence: BackboneElement {
	override open class var resourceType: String {
		get { return "DetectedIssueEvidence" }
	}
	
	/// Manifestation.
	public var code: [CodeableConcept]?
	
	/// Supporting information.
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
Step taken to address.

Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by
the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may
reduce/eliminate the need for any action.
*/
open class DetectedIssueMitigation: BackboneElement {
	override open class var resourceType: String {
		get { return "DetectedIssueMitigation" }
	}
	
	/// What mitigation?.
	public var action: CodeableConcept?
	
	/// Who is committing?.
	public var author: Reference?
	
	/// Date committed.
	public var date: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(action: CodeableConcept) {
		self.init()
		self.action = action
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		action = createInstance(type: CodeableConcept.self, for: "action", in: json, context: &instCtx, owner: self) ?? action
		if nil == action && !instCtx.containsKey("action") {
			instCtx.addError(FHIRValidationError(missing: "action"))
		}
		author = createInstance(type: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.action?.decorate(json: &json, withKey: "action", errors: &errors)
		if nil == self.action {
			errors.append(FHIRValidationError(missing: "action"))
		}
		self.author?.decorate(json: &json, withKey: "author", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
	}
}

