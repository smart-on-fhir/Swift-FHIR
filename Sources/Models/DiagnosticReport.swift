//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2016-08-17.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, effectiveDateTime: DateTime, effectivePeriod: Period, issued: Instant, performer: [Reference], status: String, subject: Reference) {
		self.init(json: nil)
		self.code = code
		self.effectiveDateTime = effectiveDateTime
		self.effectivePeriod = effectivePeriod
		self.issued = issued
		self.performer = performer
		self.status = status
		self.subject = subject
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist = js["codedDiagnosis"] {
				presentKeys.insert("codedDiagnosis")
				if let val = exist as? [FHIRJSON] {
					self.codedDiagnosis = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "codedDiagnosis", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["conclusion"] {
				presentKeys.insert("conclusion")
				if let val = exist as? String {
					self.conclusion = val
				}
				else {
					errors.append(FHIRJSONError(key: "conclusion", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["effectiveDateTime"] {
				presentKeys.insert("effectiveDateTime")
				if let val = exist as? String {
					self.effectiveDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["effectivePeriod"] {
				presentKeys.insert("effectivePeriod")
				if let val = exist as? FHIRJSON {
					self.effectivePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectivePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["image"] {
				presentKeys.insert("image")
				if let val = exist as? [FHIRJSON] {
					self.image = DiagnosticReportImage.instantiate(fromArray: val, owner: self) as? [DiagnosticReportImage]
				}
				else {
					errors.append(FHIRJSONError(key: "image", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["imagingStudy"] {
				presentKeys.insert("imagingStudy")
				if let val = exist as? [FHIRJSON] {
					self.imagingStudy = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "imagingStudy", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["issued"] {
				presentKeys.insert("issued")
				if let val = exist as? String {
					self.issued = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "issued", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "issued"))
			}
			if let exist = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? [FHIRJSON] {
					self.performer = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "performer"))
			}
			if let exist = js["presentedForm"] {
				presentKeys.insert("presentedForm")
				if let val = exist as? [FHIRJSON] {
					self.presentedForm = Attachment.instantiate(fromArray: val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "presentedForm", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? [FHIRJSON] {
					self.request = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["result"] {
				presentKeys.insert("result")
				if let val = exist as? [FHIRJSON] {
					self.result = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "result", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["specimen"] {
				presentKeys.insert("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "specimen", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.effectiveDateTime && nil == self.effectivePeriod {
				errors.append(FHIRJSONError(key: "effective*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let codedDiagnosis = self.codedDiagnosis {
			json["codedDiagnosis"] = codedDiagnosis.map() { $0.asJSON() }
		}
		if let conclusion = self.conclusion {
			json["conclusion"] = conclusion.asJSON()
		}
		if let effectiveDateTime = self.effectiveDateTime {
			json["effectiveDateTime"] = effectiveDateTime.asJSON()
		}
		if let effectivePeriod = self.effectivePeriod {
			json["effectivePeriod"] = effectivePeriod.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let image = self.image {
			json["image"] = image.map() { $0.asJSON() }
		}
		if let imagingStudy = self.imagingStudy {
			json["imagingStudy"] = imagingStudy.map() { $0.asJSON() }
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.map() { $0.asJSON() }
		}
		if let presentedForm = self.presentedForm {
			json["presentedForm"] = presentedForm.map() { $0.asJSON() }
		}
		if let request = self.request {
			json["request"] = request.map() { $0.asJSON() }
		}
		if let result = self.result {
			json["result"] = result.map() { $0.asJSON() }
		}
		if let specimen = self.specimen {
			json["specimen"] = specimen.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(link: Reference) {
		self.init(json: nil)
		self.link = link
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? FHIRJSON {
					self.link = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "link"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let link = self.link {
			json["link"] = link.asJSON()
		}
		
		return json
	}
}

