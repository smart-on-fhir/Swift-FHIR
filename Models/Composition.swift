//
//  Composition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Composition) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A set of resources composed into a single coherent clinical statement with clinical attestation.
 *
 *  A set of healthcare-related information that is assembled together into a single logical document that provides a
 *  single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to
 *  who is making the statement.
 */
public class Composition: DomainResource
{
	override public class var resourceName: String {
		get { return "Composition" }
	}
	
	/// Attests to accuracy of composition
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition
	public var author: [Reference]?
	
	/// Categorization of Composition
	public var class_fhir: CodeableConcept?
	
	/// As defined by affinity domain
	public var confidentiality: String?
	
	/// Org which maintains the composition
	public var custodian: Reference?
	
	/// Composition editing time
	public var date: DateTime?
	
	/// Context of the conposition
	public var encounter: Reference?
	
	/// The clinical service(s) being documented
	public var event: [CompositionEvent]?
	
	/// Logical identifier of composition (version-independent)
	public var identifier: Identifier?
	
	/// Composition is broken into sections
	public var section: [CompositionSection]?
	
	/// preliminary | final | appended | amended | entered-in-error
	public var status: String?
	
	/// Who and/or what the composition is about
	public var subject: Reference?
	
	/// Human Readable name/title
	public var title: String?
	
	/// Kind of composition (LOINC if possible)
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(author: [Reference]?, date: DateTime?, status: String?, subject: Reference?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != author {
			self.author = author
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
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["attester"] {
				presentKeys.insert("attester")
				if let val = exist as? [FHIRJSON] {
					self.attester = CompositionAttester.from(val, owner: self) as? [CompositionAttester]
				}
				else {
					errors.append(FHIRJSONError(key: "attester", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.insert("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "author", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "author"))
			}
			if let exist: AnyObject = js["class"] {
				presentKeys.insert("class")
				if let val = exist as? FHIRJSON {
					self.class_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "class", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["confidentiality"] {
				presentKeys.insert("confidentiality")
				if let val = exist as? String {
					self.confidentiality = val
				}
				else {
					errors.append(FHIRJSONError(key: "confidentiality", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["custodian"] {
				presentKeys.insert("custodian")
				if let val = exist as? FHIRJSON {
					self.custodian = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "custodian", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "date"))
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
			if let exist: AnyObject = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? [FHIRJSON] {
					self.event = CompositionEvent.from(val, owner: self) as? [CompositionEvent]
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["section"] {
				presentKeys.insert("section")
				if let val = exist as? [FHIRJSON] {
					self.section = CompositionSection.from(val, owner: self) as? [CompositionSection]
				}
				else {
					errors.append(FHIRJSONError(key: "section", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let attester = self.attester {
			json["attester"] = CompositionAttester.asJSONArray(attester)
		}
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.asJSON()
		}
		if let confidentiality = self.confidentiality {
			json["confidentiality"] = confidentiality.asJSON()
		}
		if let custodian = self.custodian {
			json["custodian"] = custodian.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let event = self.event {
			json["event"] = CompositionEvent.asJSONArray(event)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let section = self.section {
			json["section"] = CompositionSection.asJSONArray(section)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
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
	public var time: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: [String]?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? [String] {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["party"] {
				presentKeys.insert("party")
				if let val = exist as? FHIRJSON {
					self.party = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "party", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["time"] {
				presentKeys.insert("time")
				if let val = exist as? String {
					self.time = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "time", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let mode = self.mode {
			var arr = [AnyObject]()
			for val in mode {
				arr.append(val.asJSON())
			}
			json["mode"] = arr
		}
		if let party = self.party {
			json["party"] = party.asJSON()
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		
		return json
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? [FHIRJSON] {
					self.code = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = CodeableConcept.asJSONArray(code)
		}
		if let detail = self.detail {
			json["detail"] = Reference.asJSONArray(detail)
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		
		return json
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
	
	/// The Content of the section (narrative + data entries)
	public var content: Reference?
	
	/// Nested Section
	public var section: [CompositionSection]?
	
	/// Label for section (e.g. for ToC)
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.insert("content")
				if let val = exist as? FHIRJSON {
					self.content = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "content", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["section"] {
				presentKeys.insert("section")
				if let val = exist as? [FHIRJSON] {
					self.section = CompositionSection.from(val, owner: self) as? [CompositionSection]
				}
				else {
					errors.append(FHIRJSONError(key: "section", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		if let section = self.section {
			json["section"] = CompositionSection.asJSONArray(section)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
	}
}

