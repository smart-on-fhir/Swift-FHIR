//
//  Composition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (composition.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A set of resources composed into a single coherent clinical statement with clinical attestation.
 *
 *  A set of healthcare-related information that is assembled together into a single logical document that provides a
 *  single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to
 *  who is making the statement.
 */
public class Composition: FHIRResource
{
	override public class var resourceName: String {
		get { return "Composition" }
	}
	
	/// Attests to accuracy of composition
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition
	public var author: [Reference]?
	
	/// As defined by affinity domain
	public var confidentiality: Coding?
	
	/// Org which maintains the composition
	public var custodian: Reference?
	
	/// Composition editing time
	public var date: NSDate?
	
	/// Context of the conposition
	public var encounter: Reference?
	
	/// The clinical service(s) being documented
	public var event: [CompositionEvent]?
	
	/// Logical identifier of composition (version-independent)
	public var identifier: Identifier?
	
	/// Categorization of Composition
	public var klass: CodeableConcept?
	
	/// Composition is broken into sections
	public var section: [CompositionSection]?
	
	/// preliminary | final | appended | amended | entered in error
	public var status: String?
	
	/// Who and/or what the composition is about
	public var subject: Reference?
	
	/// Human Readable name/title
	public var title: String?
	
	/// Kind of composition (LOINC if possible)
	public var type: CodeableConcept?
	
	public convenience init(author: [Reference]?, confidentiality: Coding?, date: NSDate?, status: String?, subject: Reference?, type: CodeableConcept?) {
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
				self.attester = CompositionAttester.from(val, owner: self) as? [CompositionAttester]
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = Coding(json: val, owner: self)
			}
			if let val = js["custodian"] as? NSDictionary {
				self.custodian = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["event"] as? [NSDictionary] {
				self.event = CompositionEvent.from(val, owner: self) as? [CompositionEvent]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["class"] as? NSDictionary {
				self.klass = CodeableConcept(json: val, owner: self)
			}
			if let val = js["section"] as? [NSDictionary] {
				self.section = CompositionSection.from(val, owner: self) as? [CompositionSection]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "CompositionAttester" }
	}
	
	/// personal | professional | legal | official
	public var mode: [String]?
	
	/// Who attested the composition
	public var party: Reference?
	
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
				self.party = Reference(json: val, owner: self)
			}
			if let val = js["time"] as? String {
				self.time = NSDate(json: val)
			}
		}
	}
}


/**
 *  The clinical service(s) being documented.
 *
 *  The clinical service, such as a colonoscopy or an appendectomy, being documented.
 */
public class CompositionEvent: FHIRElement
{
	override public class var resourceName: String {
		get { return "CompositionEvent" }
	}
	
	/// Code(s) that apply to the event being documented
	public var code: [CodeableConcept]?
	
	/// Full details for the event(s) the composition consents
	public var detail: [Reference]?
	
	/// The period covered by the documentation
	public var period: Period?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? [NSDictionary] {
				self.code = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["detail"] as? [NSDictionary] {
				self.detail = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val, owner: self)
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
	override public class var resourceName: String {
		get { return "CompositionSection" }
	}
	
	/// Classification of section (recommended)
	public var code: CodeableConcept?
	
	/// The Content of the section
	public var content: Reference?
	
	/// Composition is broken into sections
	public var section: [CompositionSection]?
	
	/// Label for section (e.g. for ToC)
	public var title: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["content"] as? NSDictionary {
				self.content = Reference(json: val, owner: self)
			}
			if let val = js["section"] as? [NSDictionary] {
				self.section = CompositionSection.from(val, owner: self) as? [CompositionSection]
			}
			if let val = js["title"] as? String {
				self.title = val
			}
		}
	}
}

