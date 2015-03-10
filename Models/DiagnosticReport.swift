//
//  DiagnosticReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2015-03-10.
//  2015, SMART Platforms.
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
	
	/// registered | partial | final | corrected +
	public var status: String?
	
	/// The subject of the report, usually, but not always, the patient
	public var subject: Reference?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["codedDiagnosis"] as? [JSONDictionary] {
				self.codedDiagnosis = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["conclusion"] as? String {
				self.conclusion = val
			}
			if let val = js["diagnosticDateTime"] as? String {
				self.diagnosticDateTime = DateTime(string: val)
			}
			if let val = js["diagnosticPeriod"] as? JSONDictionary {
				self.diagnosticPeriod = Period(json: val, owner: self)
			}
			if let val = js["encounter"] as? JSONDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["image"] as? [JSONDictionary] {
				self.image = DiagnosticReportImage.from(val, owner: self) as? [DiagnosticReportImage]
			}
			if let val = js["imagingStudy"] as? [JSONDictionary] {
				self.imagingStudy = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["issued"] as? String {
				self.issued = DateTime(string: val)
			}
			if let val = js["name"] as? JSONDictionary {
				self.name = CodeableConcept(json: val, owner: self)
			}
			if let val = js["performer"] as? JSONDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["presentedForm"] as? [JSONDictionary] {
				self.presentedForm = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["requestDetail"] as? [JSONDictionary] {
				self.requestDetail = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["result"] as? [JSONDictionary] {
				self.result = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["serviceCategory"] as? JSONDictionary {
				self.serviceCategory = CodeableConcept(json: val, owner: self)
			}
			if let val = js["specimen"] as? [JSONDictionary] {
				self.specimen = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	public convenience init(link: Reference?) {
		self.init(json: nil)
		if nil != link {
			self.link = link
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["link"] as? JSONDictionary {
				self.link = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

