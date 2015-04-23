//
//  DiagnosticReport.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DiagnosticReport) on 2015-04-23.
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
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["codedDiagnosis"] {
				presentKeys.addObject("codedDiagnosis")
				if let val = exist as? [FHIRJSON] {
					self.codedDiagnosis = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"codedDiagnosis\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["conclusion"] {
				presentKeys.addObject("conclusion")
				if let val = exist as? String {
					self.conclusion = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"conclusion\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["diagnosticDateTime"] {
				presentKeys.addObject("diagnosticDateTime")
				if let val = exist as? String {
					self.diagnosticDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"diagnosticDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["diagnosticPeriod"] {
				presentKeys.addObject("diagnosticPeriod")
				if let val = exist as? FHIRJSON {
					self.diagnosticPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"diagnosticPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.addObject("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"encounter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["image"] {
				presentKeys.addObject("image")
				if let val = exist as? [FHIRJSON] {
					self.image = DiagnosticReportImage.from(val, owner: self) as? [DiagnosticReportImage]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"image\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["imagingStudy"] {
				presentKeys.addObject("imagingStudy")
				if let val = exist as? [FHIRJSON] {
					self.imagingStudy = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"imagingStudy\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["issued"] {
				presentKeys.addObject("issued")
				if let val = exist as? String {
					self.issued = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"issued\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"issued\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? FHIRJSON {
					self.name = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["performer"] {
				presentKeys.addObject("performer")
				if let val = exist as? FHIRJSON {
					self.performer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"performer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"performer\" but it is missing"))
			}
			if let exist: AnyObject = js["presentedForm"] {
				presentKeys.addObject("presentedForm")
				if let val = exist as? [FHIRJSON] {
					self.presentedForm = Attachment.from(val, owner: self) as? [Attachment]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"presentedForm\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requestDetail"] {
				presentKeys.addObject("requestDetail")
				if let val = exist as? [FHIRJSON] {
					self.requestDetail = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requestDetail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["result"] {
				presentKeys.addObject("result")
				if let val = exist as? [FHIRJSON] {
					self.result = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"result\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["serviceCategory"] {
				presentKeys.addObject("serviceCategory")
				if let val = exist as? FHIRJSON {
					self.serviceCategory = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"serviceCategory\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specimen"] {
				presentKeys.addObject("specimen")
				if let val = exist as? [FHIRJSON] {
					self.specimen = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specimen\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["subject"] {
				presentKeys.addObject("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subject\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"subject\" but it is missing"))
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.diagnosticDateTime && nil == self.diagnosticPeriod {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"diagnostic[x]\" but none was found"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(link: Reference?) {
		self.init(json: nil)
		if nil != link {
			self.link = link
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["comment"] {
				presentKeys.addObject("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comment\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["link"] {
				presentKeys.addObject("link")
				if let val = exist as? FHIRJSON {
					self.link = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"link\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"link\" but it is missing"))
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

