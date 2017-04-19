//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as formatted
reports.

The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and locations,
and/or specimens derived from these. The report includes clinical context such as requesting and provider information,
and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic
reports.
*/
open class DiagnosticReport: DomainResource {
	override open class var resourceType: String {
		get { return "DiagnosticReport" }
	}
	
	/// What was requested.
	public var basedOn: [Reference]?
	
	/// Service category.
	public var category: CodeableConcept?
	
	/// Name/Code for this diagnostic report.
	public var code: CodeableConcept?
	
	/// Codes for the conclusion.
	public var codedDiagnosis: [CodeableConcept]?
	
	/// Clinical Interpretation of test results.
	public var conclusion: FHIRString?
	
	/// Health care event when test ordered.
	public var context: Reference?
	
	/// Clinically relevant time/time-period for report.
	public var effectiveDateTime: DateTime?
	
	/// Clinically relevant time/time-period for report.
	public var effectivePeriod: Period?
	
	/// Business identifier for report.
	public var identifier: [Identifier]?
	
	/// Key images associated with this report.
	public var image: [DiagnosticReportImage]?
	
	/// Reference to full details of imaging associated with the diagnostic report.
	public var imagingStudy: [Reference]?
	
	/// DateTime this version was released.
	public var issued: Instant?
	
	/// Participants in producing the report.
	public var performer: [DiagnosticReportPerformer]?
	
	/// Entire report as issued.
	public var presentedForm: [Attachment]?
	
	/// Observations - simple, or complex nested groups.
	public var result: [Reference]?
	
	/// Specimens this report is based on.
	public var specimen: [Reference]?
	
	/// The status of the diagnostic report as a whole.
	public var status: DiagnosticReportStatus?
	
	/// The subject of the report - usually, but not always, the patient.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: DiagnosticReportStatus) {
		self.init()
		self.code = code
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		category = createInstance(type: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		codedDiagnosis = createInstances(of: CodeableConcept.self, for: "codedDiagnosis", in: json, context: &instCtx, owner: self) ?? codedDiagnosis
		conclusion = createInstance(type: FHIRString.self, for: "conclusion", in: json, context: &instCtx, owner: self) ?? conclusion
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		image = createInstances(of: DiagnosticReportImage.self, for: "image", in: json, context: &instCtx, owner: self) ?? image
		imagingStudy = createInstances(of: Reference.self, for: "imagingStudy", in: json, context: &instCtx, owner: self) ?? imagingStudy
		issued = createInstance(type: Instant.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		performer = createInstances(of: DiagnosticReportPerformer.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		presentedForm = createInstances(of: Attachment.self, for: "presentedForm", in: json, context: &instCtx, owner: self) ?? presentedForm
		result = createInstances(of: Reference.self, for: "result", in: json, context: &instCtx, owner: self) ?? result
		specimen = createInstances(of: Reference.self, for: "specimen", in: json, context: &instCtx, owner: self) ?? specimen
		status = createEnum(type: DiagnosticReportStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "codedDiagnosis", using: self.codedDiagnosis, errors: &errors)
		self.conclusion?.decorate(json: &json, withKey: "conclusion", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "image", using: self.image, errors: &errors)
		arrayDecorate(json: &json, withKey: "imagingStudy", using: self.imagingStudy, errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "presentedForm", using: self.presentedForm, errors: &errors)
		arrayDecorate(json: &json, withKey: "result", using: self.result, errors: &errors)
		arrayDecorate(json: &json, withKey: "specimen", using: self.specimen, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
	}
}


/**
Key images associated with this report.

A list of key images associated with this report. The images are generally created during the diagnostic process, and
may be directly of the patient, or of treated specimens (i.e. slides of interest).
*/
open class DiagnosticReportImage: BackboneElement {
	override open class var resourceType: String {
		get { return "DiagnosticReportImage" }
	}
	
	/// Comment about the image (e.g. explanation).
	public var comment: FHIRString?
	
	/// Reference to the image source.
	public var link: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(link: Reference) {
		self.init()
		self.link = link
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		link = createInstance(type: Reference.self, for: "link", in: json, context: &instCtx, owner: self) ?? link
		if nil == link && !instCtx.containsKey("link") {
			instCtx.addError(FHIRValidationError(missing: "link"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		self.link?.decorate(json: &json, withKey: "link", errors: &errors)
		if nil == self.link {
			errors.append(FHIRValidationError(missing: "link"))
		}
	}
}


/**
Participants in producing the report.

Indicates who or what participated in producing the report.
*/
open class DiagnosticReportPerformer: BackboneElement {
	override open class var resourceType: String {
		get { return "DiagnosticReportPerformer" }
	}
	
	/// Practitioner or Organization  participant.
	public var actor: Reference?
	
	/// Type of performer.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

