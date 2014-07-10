//
//  Composition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-10.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A set of resources composed into a single coherent clinical statement with clinical attestation.
 *
 *  Scope and Usage A Composition is also the basic structure from which FHIR Documents - immutable bundles with
 *  attested narrative - are built. A single logical composition may be associated with a series of derived
 *  documents, each of which is a frozen copy of the composition.
 *  
 *  Note: EN 13606 uses the term "Composition" to refer to a single commit to an EHR system, and offers some
 *  common examples: a consultation note, a progress note, a report or a letter, an investigation report, a
 *  prescription form and a set of bedside nursing observations. These logical examples are all valid uses of a
 *  Composition resource, but it is not required that all the resources are updated in a single commit.
 */
class Composition: FHIRResource
{
	override class var resourceName: String {
		get { return "Composition" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: [FHIRResource]?
	
	/*! Logical identifier of composition (version-independent) */
	var identifier: Identifier?
	
	/*! Composition editing time */
	var date: NSDate?
	
	/*! Kind of composition (LOINC if possible) */
	var type: CodeableConcept?
	
	/*! Categorization of Composition */
	var classification: CodeableConcept?
	
	/*! Human Readable name/title */
	var title: String?
	
	/*! preliminary | final | appended | amended | entered in error */
	var status: String?
	
	/*! As defined by affinity domain */
	var confidentiality: Coding?
	
	/*! Who and/or what the composition is about */
	var subject: ResourceReference?
	
	/*! Who and/or what authored the composition */
	var author: [ResourceReference]?
	
	/*! Attests to accuracy of composition */
	var attester: [CompositionAttester]?
	
	/*! Org which maintains the composition */
	var custodian: ResourceReference?
	
	/*! The clinical event/act/item being documented */
	var event: CompositionEvent?
	
	/*! Context of the conposition */
	var encounter: ResourceReference?
	
	/*! Composition is broken into sections */
	var section: [CompositionSection]?
	
	convenience init(date: NSDate?, type: CodeableConcept?, status: String?, confidentiality: Coding?, subject: ResourceReference?, author: [ResourceReference]?) {
		self.init(json: nil)
		if date {
			self.date = date
		}
		if type {
			self.type = type
		}
		if status {
			self.status = status
		}
		if confidentiality {
			self.confidentiality = confidentiality
		}
		if subject {
			self.subject = subject
		}
		if author {
			self.author = author
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? [NSDictionary] {
				self.contained = FHIRResource.from(val) as? [FHIRResource]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["classification"] as? NSDictionary {
				self.classification = CodeableConcept(json: val)
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = Coding(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["attester"] as? [NSDictionary] {
				self.attester = CompositionAttester.from(val) as? [CompositionAttester]
			}
			if let val = js["custodian"] as? NSDictionary {
				self.custodian = ResourceReference(json: val)
			}
			if let val = js["event"] as? NSDictionary {
				self.event = CompositionEvent(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["section"] as? [NSDictionary] {
				self.section = CompositionSection.from(val) as? [CompositionSection]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Attests to accuracy of composition.
 *
 *  A participant who has attested to the accuracy of the composition/document.
 */
class CompositionAttester: FHIRElement
{	
	/*! personal | professional | legal | official */
	var mode: [String]?
	
	/*! When composition attested */
	var time: NSDate?
	
	/*! Who attested the composition */
	var party: ResourceReference?
	
	convenience init(mode: [String]?) {
		self.init(json: nil)
		if mode {
			self.mode = mode
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["mode"] as? [String] {
				self.mode = val
			}
			if let val = js["time"] as? String {
				self.time = NSDate(json: val)
			}
			if let val = js["party"] as? NSDictionary {
				self.party = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  The clinical event/act/item being documented.
 *
 *  The main event/act/item, such as a colonoscopy or an appendectomy, being documented.
 */
class CompositionEvent: FHIRElement
{	
	/*! Code(s) that apply to the event being documented */
	var code: [CodeableConcept]?
	
	/*! The period covered by the documentation */
	var period: Period?
	
	/*! Full details for the event(s) the composition consents */
	var detail: [ResourceReference]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? [NSDictionary] {
				self.code = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = ResourceReference.from(val) as? [ResourceReference]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Composition is broken into sections.
 *
 *  The root of the sections that make up the composition.
 */
class CompositionSection: FHIRElement
{	
	/*! Label for section */
	var title: String?
	
	/*! Classification of section (recommended) */
	var code: CodeableConcept?
	
	/*! If section different to composition */
	var subject: ResourceReference?
	
	/*! The actual data for the section */
	var content: ResourceReference?
	
	/*! Nested Section */
	var section: [CompositionSectionSection]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["content"] as? NSDictionary {
				self.content = ResourceReference(json: val)
			}
			if let val = js["section"] as? [NSDictionary] {
				self.section = CompositionSectionSection.from(val) as? [CompositionSectionSection]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Nested Section.
 *
 *  A nested sub-section within this section.
 */
class CompositionSectionSection: FHIRElement
{	
	
	init(json: NSDictionary?) {
		if let js = json {
		}
		super.init(json: json)
	}
}
