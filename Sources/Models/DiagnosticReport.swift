//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as
 *  formatted reports.
 *
 *  The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and
 *  locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider
 *  information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation
 *  of diagnostic reports.
 */
open class DiagnosticReport: DomainResource {
	override open class var resourceType: String {
		get { return "DiagnosticReport" }
	}
	
	/// Service category.
	public var category: CodeableConcept?
	
	/// Name/Code for this diagnostic report.
	public var code: CodeableConcept?
	
	/// Codes for the conclusion.
	public var codedDiagnosis: [CodeableConcept]?
	
	/// Clinical Interpretation of test results.
	public var conclusion: String?
	
	/// Clinically Relevant time/time-period for report.
	public var effectiveDateTime: DateTime?
	
	/// Clinically Relevant time/time-period for report.
	public var effectivePeriod: Period?
	
	/// Health care event when test ordered.
	public var encounter: Reference?
	
	/// Id for external references to this report.
	public var identifier: [Identifier]?
	
	/// Key images associated with this report.
	public var image: [DiagnosticReportImage]?
	
	/// Reference to full details of imaging associated with the diagnostic report.
	public var imagingStudy: [Reference]?
	
	/// DateTime this version was released.
	public var issued: Instant?
	
	/// Responsible Diagnostic Service.
	public var performer: [Reference]?
	
	/// Entire report as issued.
	public var presentedForm: [Attachment]?
	
	/// What was requested.
	public var request: [Reference]?
	
	/// Observations - simple, or complex nested groups.
	public var result: [Reference]?
	
	/// Specimens this report is based on.
	public var specimen: [Reference]?
	
	/// registered | partial | final | corrected | appended | cancelled | entered-in-error.
	public var status: String?
	
	/// The subject of the report, usually, but not always, the patient.
	public var subject: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, effective: Any, issued: Instant, performer: [Reference], status: String, subject: Reference) {
		self.init()
		self.code = code
		if let value = effective as? DateTime {
			self.effectiveDateTime = value
		}
		else if let value = effective as? Period {
			self.effectivePeriod = value
		}
		else {
			fhir_warn("Type “\(type(of: effective))” for property “\(effective)” is invalid, ignoring")
		}
		self.issued = issued
		self.performer = performer
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["codedDiagnosis"] {
			presentKeys.insert("codedDiagnosis")
			if let val = exist as? [FHIRJSON] {
				do {
					self.codedDiagnosis = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "codedDiagnosis"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "codedDiagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["conclusion"] {
			presentKeys.insert("conclusion")
			if let val = exist as? String {
				self.conclusion = val
			}
			else {
				errors.append(FHIRValidationError(key: "conclusion", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectiveDateTime"] {
			presentKeys.insert("effectiveDateTime")
			if let val = exist as? String {
				self.effectiveDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "effectiveDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["effectivePeriod"] {
			presentKeys.insert("effectivePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.effectivePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "effectivePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["image"] {
			presentKeys.insert("image")
			if let val = exist as? [FHIRJSON] {
				do {
					self.image = try DiagnosticReportImage.instantiate(fromArray: val, owner: self) as? [DiagnosticReportImage]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "image"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "image", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["imagingStudy"] {
			presentKeys.insert("imagingStudy")
			if let val = exist as? [FHIRJSON] {
				do {
					self.imagingStudy = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "imagingStudy"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "imagingStudy", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["issued"] {
			presentKeys.insert("issued")
			if let val = exist as? String {
				self.issued = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "issued", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "issued"))
		}
		if let exist = json["performer"] {
			presentKeys.insert("performer")
			if let val = exist as? [FHIRJSON] {
				do {
					self.performer = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "performer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "performer"))
		}
		if let exist = json["presentedForm"] {
			presentKeys.insert("presentedForm")
			if let val = exist as? [FHIRJSON] {
				do {
					self.presentedForm = try Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "presentedForm"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "presentedForm", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? [FHIRJSON] {
				do {
					self.request = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["result"] {
			presentKeys.insert("result")
			if let val = exist as? [FHIRJSON] {
				do {
					self.result = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "result"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "result", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["specimen"] {
			presentKeys.insert("specimen")
			if let val = exist as? [FHIRJSON] {
				do {
					self.specimen = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specimen"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specimen", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.effectiveDateTime && nil == self.effectivePeriod {
			errors.append(FHIRValidationError(missing: "effective[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let codedDiagnosis = self.codedDiagnosis {
			json["codedDiagnosis"] = codedDiagnosis.map() { $0.asJSON(errors: &errors) }
		}
		if let conclusion = self.conclusion {
			json["conclusion"] = conclusion.asJSON()
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON(errors: &errors)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let image = self.image {
			json["image"] = image.map() { $0.asJSON(errors: &errors) }
		}
		if let imagingStudy = self.imagingStudy {
			json["imagingStudy"] = imagingStudy.map() { $0.asJSON(errors: &errors) }
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON(errors: &errors) }
		}
		if let presentedForm = self.presentedForm {
			json["presentedForm"] = presentedForm.map() { $0.asJSON(errors: &errors) }
		}
		if let request = self.request {
			json["request"] = request.map() { $0.asJSON(errors: &errors) }
		}
		if let result = self.result {
			json["result"] = result.map() { $0.asJSON(errors: &errors) }
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Key images associated with this report.
 *
 *  A list of key images associated with this report. The images are generally created during the diagnostic process,
 *  and may be directly of the patient, or of treated specimens (i.e. slides of interest).
 */
open class DiagnosticReportImage: BackboneElement {
	override open class var resourceType: String {
		get { return "DiagnosticReportImage" }
	}
	
	/// Comment about the image (e.g. explanation).
	public var comment: String?
	
	/// Reference to the image source.
	public var link: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(link: Reference) {
		self.init()
		self.link = link
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = val
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["link"] {
			presentKeys.insert("link")
			if let val = exist as? FHIRJSON {
				do {
					self.link = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "link"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "link", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "link"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let link = self.link {
			json["link"] = link.asJSON(errors: &errors)
		}
		
		return json
	}
}

