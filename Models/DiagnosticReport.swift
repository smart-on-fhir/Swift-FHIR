//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as
 *  formatted reports.
 *
 *  The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and
 *  locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider
 *  information, and some mix of atomic results, images, textual and coded interpretation, and formatted representation
 *  of diagnostic reports.
 */
public class DiagnosticReport: DomainResource
{
	override public class var resourceName: String {
		get { return "DiagnosticReport" }
	}
	
	/// Codes for the conclusion
	public var codedDiagnosis: [CodeableConcept]?
	
	/// Clinical Interpretation of test results
	public var conclusion: String?
	
	/// Physiologically Relevant time/time-period for report
	public var diagnosticDateTime: DateTime?
	
	/// Physiologically Relevant time/time-period for report
	public var diagnosticPeriod: Period?
	
	/// Health care event when test ordered
	public var encounter: Reference?
	
	/// Id for external references to this report
	public var identifier: [Identifier]?
	
	/// Key images associated with this report
	public var image: [DiagnosticReportImage]?
	
	/// Reference to full details of imaging associated with the diagnostic report
	public var imagingStudy: [Reference]?
	
	/// Date this version was released
	public var issued: DateTime?
	
	/// Name/Code for this diagnostic report
	public var name: CodeableConcept?
	
	/// Responsible Diagnostic Service
	public var performer: Reference?
	
	/// Entire Report as issued
	public var presentedForm: [Attachment]?
	
	/// What was requested
	public var requestDetail: [Reference]?
	
	/// Observations - simple, or complex nested groups
	public var result: [Reference]?
	
	/// Biochemistry, Hematology etc.
	public var serviceCategory: CodeableConcept?
	
	/// Specimens this report is based on
	public var specimen: [Reference]?
	
	/// registered | partial | final | corrected | appended | cancelled | entered-in-error
	public var status: String?
	
	/// The subject of the report, usually, but not always, the patient
	public var subject: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(diagnosticDateTime: DateTime?, diagnosticPeriod: Period?, issued: DateTime?, name: CodeableConcept?, performer: Reference?, status: String?, subject: Reference?) {
		self.init(json: nil)
		if nil != diagnosticDateTime {
			self.diagnosticDateTime = diagnosticDateTime
		}
		if nil != diagnosticPeriod {
			self.diagnosticPeriod = diagnosticPeriod
		}
		if nil != issued {
			self.issued = issued
		}
		if nil != name {
			self.name = name
		}
		if nil != performer {
			self.performer = performer
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["codedDiagnosis"] {
				presentKeys.insert("codedDiagnosis")
				if let val = exist as? [FHIRJSON] {
					self.codedDiagnosis = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "codedDiagnosis", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["conclusion"] {
				presentKeys.insert("conclusion")
				if let val = exist as? String {
					self.conclusion = val
				}
				else {
					errors.append(FHIRJSONError(key: "conclusion", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["diagnosticDateTime"] {
				presentKeys.insert("diagnosticDateTime")
				if let val = exist as? String {
					self.diagnosticDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosticDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["diagnosticPeriod"] {
				presentKeys.insert("diagnosticPeriod")
				if let val = exist as? FHIRJSON {
					self.diagnosticPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "diagnosticPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["image"] {
				presentKeys.insert("image")
				if let val = exist as? [FHIRJSON] {
					self.image = DiagnosticReportImage.from(val, owner: self) as? [DiagnosticReportImage]
				}
				else {
					errors.append(FHIRJSONError(key: "image", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["imagingStudy"] {
				presentKeys.insert("imagingStudy")
				if let val = exist as? [FHIRJSON] {
					self.imagingStudy = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "imagingStudy", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["issued"] {
				presentKeys.insert("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "issued", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "issued"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? FHIRJSON {
					self.name = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.insert("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "performer", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "performer"))
			}
			if let exist: AnyObject = js["presentedForm"] {
				presentKeys.insert("presentedForm")
				if let val = exist as? [FHIRJSON] {
					self.presentedForm = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(FHIRJSONError(key: "presentedForm", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestDetail"] {
				presentKeys.insert("requestDetail")
				if let val = exist as? [FHIRJSON] {
					self.requestDetail = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "requestDetail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["result"] {
				presentKeys.insert("result")
				if let val = exist as? [FHIRJSON] {
					self.result = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "result", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["serviceCategory"] {
				presentKeys.insert("serviceCategory")
				if let val = exist as? FHIRJSON {
					self.serviceCategory = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "serviceCategory", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specimen"] {
				presentKeys.insert("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "specimen", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "subject"))
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.diagnosticDateTime && nil == self.diagnosticPeriod {
				errors.append(FHIRJSONError(key: "diagnostic[x]*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codedDiagnosis = self.codedDiagnosis {
			json["codedDiagnosis"] = CodeableConcept.asJSONArray(codedDiagnosis)
		}
		if let conclusion = self.conclusion {
			json["conclusion"] = conclusion.asJSON()
		}
		if let diagnosticDateTime = self.diagnosticDateTime {
			json["diagnosticDateTime"] = diagnosticDateTime.asJSON()
		}
		if let diagnosticPeriod = self.diagnosticPeriod {
			json["diagnosticPeriod"] = diagnosticPeriod.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let image = self.image {
			json["image"] = DiagnosticReportImage.asJSONArray(image)
		}
		if let imagingStudy = self.imagingStudy {
			json["imagingStudy"] = Reference.asJSONArray(imagingStudy)
		}
		if let issued = self.issued {
			json["issued"] = issued.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let performer = self.performer {
			json["performer"] = performer.asJSON()
		}
		if let presentedForm = self.presentedForm {
			json["presentedForm"] = Attachment.asJSONArray(presentedForm)
		}
		if let requestDetail = self.requestDetail {
			json["requestDetail"] = Reference.asJSONArray(requestDetail)
		}
		if let result = self.result {
			json["result"] = Reference.asJSONArray(result)
		}
		if let serviceCategory = self.serviceCategory {
			json["serviceCategory"] = serviceCategory.asJSON()
		}
		if let specimen = self.specimen {
			json["specimen"] = Reference.asJSONArray(specimen)
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
public class DiagnosticReportImage: FHIRElement
{
	override public class var resourceName: String {
		get { return "DiagnosticReportImage" }
	}
	
	/// Comment about the image (e.g. explanation)
	public var comment: String?
	
	/// Reference to the image source
	public var link: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(link: Reference?) {
		self.init(json: nil)
		if nil != link {
			self.link = link
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.insert("link")
				if let val = exist as? FHIRJSON {
					self.link = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "link", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "link"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

