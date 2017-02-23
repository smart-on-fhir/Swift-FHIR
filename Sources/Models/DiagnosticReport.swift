//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2017-02-23.
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
	
	/// Clinically Relevant time/time-period for report.
	public var effectiveDateTime: DateTime?
	
	/// Clinically Relevant time/time-period for report.
	public var effectivePeriod: Period?
	
	/// Business Identifer for report.
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
	
	/// The subject of the report, usually, but not always, the patient.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, status: DiagnosticReportStatus) {
		self.init()
		self.code = code
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		codedDiagnosis = try createInstances(of: CodeableConcept.self, for: "codedDiagnosis", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? codedDiagnosis
		conclusion = try createInstance(type: FHIRString.self, for: "conclusion", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? conclusion
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		effectiveDateTime = try createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectiveDateTime
		effectivePeriod = try createInstance(type: Period.self, for: "effectivePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? effectivePeriod
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		image = try createInstances(of: DiagnosticReportImage.self, for: "image", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? image
		imagingStudy = try createInstances(of: Reference.self, for: "imagingStudy", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? imagingStudy
		issued = try createInstance(type: Instant.self, for: "issued", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? issued
		performer = try createInstances(of: DiagnosticReportPerformer.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		presentedForm = try createInstances(of: Attachment.self, for: "presentedForm", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? presentedForm
		result = try createInstances(of: Reference.self, for: "result", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? result
		specimen = try createInstances(of: Reference.self, for: "specimen", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specimen
		status = createEnum(type: DiagnosticReportStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		link = try createInstance(type: Reference.self, for: "link", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? link
		if nil == link && !presentKeys.contains("link") {
			errors.append(FHIRValidationError(missing: "link"))
		}
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		actor = try createInstance(type: Reference.self, for: "actor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? actor
		if nil == actor && !presentKeys.contains("actor") {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		role = try createInstance(type: CodeableConcept.self, for: "role", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? role
		
		return errors.isEmpty ? nil : errors
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

