//
//  DiagnosticReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class DiagnosticReport: FHIRResource
{
	override var resourceName: String {
		get { return "DiagnosticReport" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! Name/Code for this diagnostic report */
	var name: CodeableConcept?
	
	/*! registered | partial | final | corrected + */
	var status: String?
	
	/*! Date this version was released */
	var issued: NSDate?
	
	/*! The subject of the report, usually, but not always, the patient */
	var subject: ResourceReference?
	
	/*! Responsible Diagnostic Service */
	var performer: ResourceReference?
	
	/*! Id for external references to this report */
	var identifier: Identifier?
	
	/*! What was requested */
	var requestDetail: ResourceReference[]?
	
	/*! Biochemistry, Hematology etc. */
	var serviceCategory: CodeableConcept?
	
	/*! Physiologically Relevant time/time-period for report */
	var diagnosticDateTime: NSDate?
	
	/*! Physiologically Relevant time/time-period for report */
	var diagnosticPeriod: Period?
	
	/*! Specimens this report is based on */
	var specimen: ResourceReference[]?
	
	/*! Observations - simple, or complex nested groups */
	var result: ResourceReference[]?
	
	/*! Reference to full details of imaging associated with the diagnostic report */
	var imagingStudy: ResourceReference[]?
	
	/*! Key images associated with this report */
	var image: DiagnosticReportImage[]?
	
	/*! Clinical Interpretation of test results */
	var conclusion: String?
	
	/*! Codes for the conclusion */
	var codedDiagnosis: CodeableConcept[]?
	
	/*! Entire Report as issued */
	var presentedForm: Attachment[]?
	
	convenience init(name: CodeableConcept?, status: String?, issued: NSDate?, subject: ResourceReference?, performer: ResourceReference?, diagnosticDateTime: NSDate?, diagnosticPeriod: Period?) {
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
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
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
			if let val = js["requestDetail"] as? Array<NSDictionary> {
				self.requestDetail = ResourceReference.from(val) as? ResourceReference[]
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
			if let val = js["specimen"] as? Array<NSDictionary> {
				self.specimen = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["result"] as? Array<NSDictionary> {
				self.result = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["imagingStudy"] as? Array<NSDictionary> {
				self.imagingStudy = ResourceReference.from(val) as? ResourceReference[]
			}
			if let val = js["image"] as? Array<NSDictionary> {
				self.image = DiagnosticReportImage.from(val) as? DiagnosticReportImage[]
			}
			if let val = js["conclusion"] as? String {
				self.conclusion = val
			}
			if let val = js["codedDiagnosis"] as? Array<NSDictionary> {
				self.codedDiagnosis = CodeableConcept.from(val) as? CodeableConcept[]
			}
			if let val = js["presentedForm"] as? Array<NSDictionary> {
				self.presentedForm = Attachment.from(val) as? Attachment[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Key images associated with this report.
 *
 *  A list of key images associated with this report. The images are generally created during the diagnostic
 *  process, and may be directly of the patient, or of treated specimens (i.e. slides of interest).
 */
class DiagnosticReportImage: FHIRElement
{	
	/*! Comment about the image (e.g. explanation) */
	var comment: String?
	
	/*! Reference to the image source */
	var link: ResourceReference?
	
	convenience init(link: ResourceReference?) {
		self.init(json: nil)
		if link {
			self.link = link
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["link"] as? NSDictionary {
				self.link = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}
