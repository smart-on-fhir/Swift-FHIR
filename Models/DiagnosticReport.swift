//
//  DiagnosticReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as
 *  formatted reports.
 *
 *  Scope and Usage A diagnostic report is the set of information that is typically provided by a diagnostic
 *  service when investigations are complete. The information includes a mix of atomic results, text reports,
 *  images, and codes. The mix varies depending on the nature of the diagnostic procedure, and sometimes on the
 *  nature of the outcomes for a particular investigation.
 *  
 *  The Diagnostic Report Resource is suitable for the following kinds of Diagnostic Reports:
 *  
 *  * Laboratory (Clinical Chemistry, Hematology, Microbiology, etc.)
 *  * Pathology / Histopathology / related disciplines
 *  * Imaging Investigations (x-ray, CT, MRI etc.)
 *  * Other diagnostics - Cardiology, Gastroenterology etc.
 *  The Diagnostic Report resource is not intended to support cumulative result presentation (tabular presentation
 *  of past and present results in the resource). The Diagnostic Report resource does not yet provide full support
 *  for detailed structured reports of sequencing; this is planned for a future release.
 */
public class DiagnosticReport: FHIRResource
{
	override public class var resourceName: String {
		get { return "DiagnosticReport" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Name/Code for this diagnostic report */
	public var name: CodeableConcept?
	
	/** registered | partial | final | corrected + */
	public var status: String?
	
	/** Date this version was released */
	public var issued: NSDate?
	
	/** The subject of the report, usually, but not always, the patient */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Responsible Diagnostic Service */
	public var performer: FHIRElement? {
		get { return resolveReference("performer") }
		set {
			if newValue {
				didSetReference(newValue!, name: "performer")
			}
		}
	}
	
	/** Id for external references to this report */
	public var identifier: Identifier?
	
	/** What was requested */
	public var requestDetail: [FHIRElement]? {
		get { return resolveReferences("requestDetail") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "requestDetail")
			}
		}
	}
	
	/** Biochemistry, Hematology etc. */
	public var serviceCategory: CodeableConcept?
	
	/** Physiologically Relevant time/time-period for report */
	public var diagnosticDateTime: NSDate?
	
	/** Physiologically Relevant time/time-period for report */
	public var diagnosticPeriod: Period?
	
	/** Specimens this report is based on */
	public var specimen: [FHIRElement]? {
		get { return resolveReferences("specimen") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "specimen")
			}
		}
	}
	
	/** Observations - simple, or complex nested groups */
	public var result: [FHIRElement]? {
		get { return resolveReferences("result") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "result")
			}
		}
	}
	
	/** Reference to full details of imaging associated with the diagnostic report */
	public var imagingStudy: [FHIRElement]? {
		get { return resolveReferences("imagingStudy") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "imagingStudy")
			}
		}
	}
	
	/** Key images associated with this report */
	public var image: [DiagnosticReportImage]?
	
	/** Clinical Interpretation of test results */
	public var conclusion: String?
	
	/** Codes for the conclusion */
	public var codedDiagnosis: [CodeableConcept]?
	
	/** Entire Report as issued */
	public var presentedForm: [Attachment]?
	
	public convenience init(name: CodeableConcept?, status: String?, issued: NSDate?, subject: ResourceReference?, performer: ResourceReference?, diagnosticDateTime: NSDate?, diagnosticPeriod: Period?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
		if status {
			self.status = status
		}
		if issued {
			self.issued = issued
		}
		if subject {
			self.subject = subject
		}
		if performer {
			self.performer = performer
		}
		if diagnosticDateTime {
			self.diagnosticDateTime = diagnosticDateTime
		}
		if diagnosticPeriod {
			self.diagnosticPeriod = diagnosticPeriod
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["name"] as? NSDictionary {
				self.name = CodeableConcept(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["issued"] as? String {
				self.issued = NSDate(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["performer"] as? NSDictionary {
				self.performer = ResourceReference(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["requestDetail"] as? [NSDictionary] {
				self.requestDetail = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["serviceCategory"] as? NSDictionary {
				self.serviceCategory = CodeableConcept(json: val)
			}
			if let val = js["diagnosticDateTime"] as? String {
				self.diagnosticDateTime = NSDate(json: val)
			}
			if let val = js["diagnosticPeriod"] as? NSDictionary {
				self.diagnosticPeriod = Period(json: val)
			}
			if let val = js["specimen"] as? [NSDictionary] {
				self.specimen = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["result"] as? [NSDictionary] {
				self.result = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["imagingStudy"] as? [NSDictionary] {
				self.imagingStudy = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["image"] as? [NSDictionary] {
				self.image = DiagnosticReportImage.from(val) as? [DiagnosticReportImage]
			}
			if let val = js["conclusion"] as? String {
				self.conclusion = val
			}
			if let val = js["codedDiagnosis"] as? [NSDictionary] {
				self.codedDiagnosis = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["presentedForm"] as? [NSDictionary] {
				self.presentedForm = Attachment.from(val) as? [Attachment]
			}
		}
	}
}


/**
 *  Key images associated with this report.
 *
 *  A list of key images associated with this report. The images are generally created during the diagnostic
 *  process, and may be directly of the patient, or of treated specimens (i.e. slides of interest).
 */
public class DiagnosticReportImage: FHIRElement
{	
	/** Comment about the image (e.g. explanation) */
	public var comment: String?
	
	/** Reference to the image source */
	public var link: FHIRElement? {
		get { return resolveReference("link") }
		set {
			if newValue {
				didSetReference(newValue!, name: "link")
			}
		}
	}
	
	public convenience init(link: ResourceReference?) {
		self.init(json: nil)
		if link {
			self.link = link
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["link"] as? NSDictionary {
				self.link = ResourceReference(json: val)
			}
		}
	}
}

