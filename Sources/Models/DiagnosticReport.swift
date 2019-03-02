//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2019-03-01.
//  2019, SMART Health IT.
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
	public var category: [CodeableConcept]?
	
	/// Name/Code for this diagnostic report.
	public var code: CodeableConcept?
	
	/// Clinical conclusion (interpretation) of test results.
	public var conclusion: FHIRString?
	
	/// Codes for the clinical conclusion of test results.
	public var conclusionCode: [CodeableConcept]?
	
	/// Clinically relevant time/time-period for report.
	public var effectiveDateTime: DateTime?
	
	/// Clinically relevant time/time-period for report.
	public var effectivePeriod: Period?
	
	/// Health care event when test ordered.
	public var encounter: Reference?
	
	/// Business identifier for report.
	public var identifier: [Identifier]?
	
	/// Reference to full details of imaging associated with the diagnostic report.
	public var imagingStudy: [Reference]?
	
	/// DateTime this version was made.
	public var issued: Instant?
	
	/// Key images associated with this report.
	public var media: [DiagnosticReportMedia]?
	
	/// Responsible Diagnostic Service.
	public var performer: [Reference]?
	
	/// Entire report as issued.
	public var presentedForm: [Attachment]?
	
	/// Observations.
	public var result: [Reference]?
	
	/// Primary result interpreter.
	public var resultsInterpreter: [Reference]?
	
	/// Specimens this report is based on.
	public var specimen: [Reference]?
	
	/// The status of the diagnostic report.
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
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		conclusion = createInstance(type: FHIRString.self, for: "conclusion", in: json, context: &instCtx, owner: self) ?? conclusion
		conclusionCode = createInstances(of: CodeableConcept.self, for: "conclusionCode", in: json, context: &instCtx, owner: self) ?? conclusionCode
		effectiveDateTime = createInstance(type: DateTime.self, for: "effectiveDateTime", in: json, context: &instCtx, owner: self) ?? effectiveDateTime
		effectivePeriod = createInstance(type: Period.self, for: "effectivePeriod", in: json, context: &instCtx, owner: self) ?? effectivePeriod
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		imagingStudy = createInstances(of: Reference.self, for: "imagingStudy", in: json, context: &instCtx, owner: self) ?? imagingStudy
		issued = createInstance(type: Instant.self, for: "issued", in: json, context: &instCtx, owner: self) ?? issued
		media = createInstances(of: DiagnosticReportMedia.self, for: "media", in: json, context: &instCtx, owner: self) ?? media
		performer = createInstances(of: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		presentedForm = createInstances(of: Attachment.self, for: "presentedForm", in: json, context: &instCtx, owner: self) ?? presentedForm
		result = createInstances(of: Reference.self, for: "result", in: json, context: &instCtx, owner: self) ?? result
		resultsInterpreter = createInstances(of: Reference.self, for: "resultsInterpreter", in: json, context: &instCtx, owner: self) ?? resultsInterpreter
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
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.conclusion?.decorate(json: &json, withKey: "conclusion", errors: &errors)
		arrayDecorate(json: &json, withKey: "conclusionCode", using: self.conclusionCode, errors: &errors)
		self.effectiveDateTime?.decorate(json: &json, withKey: "effectiveDateTime", errors: &errors)
		self.effectivePeriod?.decorate(json: &json, withKey: "effectivePeriod", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "imagingStudy", using: self.imagingStudy, errors: &errors)
		self.issued?.decorate(json: &json, withKey: "issued", errors: &errors)
		arrayDecorate(json: &json, withKey: "media", using: self.media, errors: &errors)
		arrayDecorate(json: &json, withKey: "performer", using: self.performer, errors: &errors)
		arrayDecorate(json: &json, withKey: "presentedForm", using: self.presentedForm, errors: &errors)
		arrayDecorate(json: &json, withKey: "result", using: self.result, errors: &errors)
		arrayDecorate(json: &json, withKey: "resultsInterpreter", using: self.resultsInterpreter, errors: &errors)
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
open class DiagnosticReportMedia: BackboneElement {
	override open class var resourceType: String {
		get { return "DiagnosticReportMedia" }
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

