//
//  Composition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (composition.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A set of resources composed into a single coherent clinical statement with clinical attestation.
 *
 *  Scope and Usage A Composition is also the basic structure from which FHIR Documents - immutable bundles with
 *  attested narrative - are built. A single logical composition may be associated with a series of derived documents,
 *  each of which is a frozen copy of the composition.
 *  
 *  Note: EN 13606 uses the term "Composition" to refer to a single commit to an EHR system, and offers some common
 *  examples: a consultation note, a progress note, a report or a letter, an investigation report, a prescription form
 *  and a set of bedside nursing observations. These logical examples are all valid uses of a Composition resource, but
 *  it is not required that all the resources are updated in a single commit.
 */
public class Composition: FHIRResource
{
	override public class var resourceName: String {
		get { return "Composition" }
	}
	
	/// Attests to accuracy of composition
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition
	public var author: [FHIRReference<Practitioner>]?
	
	/// As defined by affinity domain
	public var confidentiality: Coding?
	
	/// Org which maintains the composition
	public var custodian: FHIRReference<Organization>?
	
	/// Composition editing time
	public var date: NSDate?
	
	/// Context of the conposition
	public var encounter: FHIRReference<Encounter>?
	
	/// The clinical event/act/item being documented
	public var event: CompositionEvent?
	
	/// Logical identifier of composition (version-independent)
	public var identifier: Identifier?
	
	/// Categorization of Composition
	public var klass: CodeableConcept?
	
	/// Composition is broken into sections
	public var section: [CompositionSection]?
	
	/// preliminary | final | appended | amended | entered in error
	public var status: String?
	
	/// Who and/or what the composition is about
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Human Readable name/title
	public var title: String?
	
	/// Kind of composition (LOINC if possible)
	public var type: CodeableConcept?
	
	public convenience init(author: [FHIRReference<Practitioner>]?, confidentiality: Coding?, date: NSDate?, status: String?, subject: FHIRReference<Patient>?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != author {
			self.author = author
		}
		if nil != confidentiality {
			self.confidentiality = confidentiality
		}
		if nil != date {
			self.date = date
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["attester"] as? [NSDictionary] {
				self.attester = CompositionAttester.from(val) as? [CompositionAttester]
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = FHIRReference.from(val, owner: self)
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = Coding(json: val)
			}
			if let val = js["custodian"] as? NSDictionary {
				self.custodian = FHIRReference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = FHIRReference(json: val, owner: self)
			}
			if let val = js["event"] as? NSDictionary {
				self.event = CompositionEvent(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["class"] as? NSDictionary {
				self.klass = CodeableConcept(json: val)
			}
			if let val = js["section"] as? [NSDictionary] {
				self.section = CompositionSection.from(val) as? [CompositionSection]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
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
	/// personal | professional | legal | official
	public var mode: [String]?
	
	/// Who attested the composition
	public var party: FHIRReference<Patient>?
	
	/// When composition attested
	public var time: NSDate?
	
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
			if let val = js["party"] as? NSDictionary {
				self.party = FHIRReference(json: val, owner: self)
			}
			if let val = js["time"] as? String {
				self.time = NSDate(json: val)
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
	/// Code(s) that apply to the event being documented
	public var code: [CodeableConcept]?
	
	/// Full details for the event(s) the composition consents
	public var detail: [FHIRReference<FHIRResource>]?
	
	/// The period covered by the documentation
	public var period: Period?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? [NSDictionary] {
				self.code = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = FHIRReference.from(val, owner: self)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
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
	/// Classification of section (recommended)
	public var code: CodeableConcept?
	
	/// The actual data for the section
	public var content: FHIRReference<FHIRResource>?
	
	/// Nested Section
	public var section: [CompositionSectionSection]?
	
	/// If section different to composition
	public var subject: FHIRReference<Patient>?
	
	/// Label for section
	public var title: String?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["content"] as? NSDictionary {
				self.content = FHIRReference(json: val, owner: self)
			}
			if let val = js["section"] as? [NSDictionary] {
				self.section = CompositionSectionSection.from(val) as? [CompositionSectionSection]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["title"] as? String {
				self.title = val
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

}

