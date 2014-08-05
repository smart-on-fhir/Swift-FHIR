//
//  Composition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
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
public class Composition: FHIRResource
{
	override public class var resourceName: String {
		get { return "Composition" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Logical identifier of composition (version-independent) */
	public var identifier: Identifier?
	
	/** Composition editing time */
	public var date: NSDate?
	
	/** Kind of composition (LOINC if possible) */
	public var type: CodeableConcept?
	
	/** Categorization of Composition */
	public var klass: CodeableConcept?
	
	/** Human Readable name/title */
	public var title: String?
	
	/** preliminary | final | appended | amended | entered in error */
	public var status: String?
	
	/** As defined by affinity domain */
	public var confidentiality: Coding?
	
	/** Who and/or what the composition is about */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Who and/or what authored the composition */
	public var author: [FHIRElement]? {
		get { return resolveReferences("author") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "author")
			}
		}
	}
	
	/** Attests to accuracy of composition */
	public var attester: [CompositionAttester]?
	
	/** Org which maintains the composition */
	public var custodian: FHIRElement? {
		get { return resolveReference("custodian") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "custodian")
			}
		}
	}
	
	/** The clinical event/act/item being documented */
	public var event: CompositionEvent?
	
	/** Context of the conposition */
	public var encounter: FHIRElement? {
		get { return resolveReference("encounter") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "encounter")
			}
		}
	}
	
	/** Composition is broken into sections */
	public var section: [CompositionSection]?
	
	public convenience init(date: NSDate?, type: CodeableConcept?, status: String?, confidentiality: Coding?, subject: ResourceReference?, author: [ResourceReference]?) {
		self.init(json: nil)
		if nil != date {
			self.date = date
		}
		if nil != type {
			self.type = type
		}
		if nil != status {
			self.status = status
		}
		if nil != confidentiality {
			self.confidentiality = confidentiality
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != author {
			self.author = author
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
			if let val = js["klass"] as? NSDictionary {
				self.klass = CodeableConcept(json: val)
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
	}
}


/**
 *  Attests to accuracy of composition.
 *
 *  A participant who has attested to the accuracy of the composition/document.
 */
public class CompositionAttester: FHIRElement
{	
	/** personal | professional | legal | official */
	public var mode: [String]?
	
	/** When composition attested */
	public var time: NSDate?
	
	/** Who attested the composition */
	public var party: FHIRElement? {
		get { return resolveReference("party") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "party")
			}
		}
	}
	
	public convenience init(mode: [String]?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  The clinical event/act/item being documented.
 *
 *  The main event/act/item, such as a colonoscopy or an appendectomy, being documented.
 */
public class CompositionEvent: FHIRElement
{	
	/** Code(s) that apply to the event being documented */
	public var code: [CodeableConcept]?
	
	/** The period covered by the documentation */
	public var period: Period?
	
	/** Full details for the event(s) the composition consents */
	public var detail: [FHIRElement]? {
		get { return resolveReferences("detail") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "detail")
			}
		}
	}
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Composition is broken into sections.
 *
 *  The root of the sections that make up the composition.
 */
public class CompositionSection: FHIRElement
{	
	/** Label for section */
	public var title: String?
	
	/** Classification of section (recommended) */
	public var code: CodeableConcept?
	
	/** If section different to composition */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** The actual data for the section */
	public var content: FHIRElement? {
		get { return resolveReference("content") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "content")
			}
		}
	}
	
	/** Nested Section */
	public var section: [CompositionSectionSection]?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
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
	}
}


/**
 *  Nested Section.
 *
 *  A nested sub-section within this section.
 */
public class CompositionSectionSection: FHIRElement
{	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
		}
	}
}

