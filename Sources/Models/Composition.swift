//
//  Composition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Composition) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A set of resources composed into a single coherent clinical statement with clinical attestation.
 *
 *  A set of healthcare-related information that is assembled together into a single logical document that provides a
 *  single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to
 *  who is making the statement. While a Composition defines the structure, it does not actually contain the content:
 *  rather the full content of a document is contained in a Bundle, of which the Composition is the first resource
 *  contained.
 */
public class Composition: DomainResource {
	override public class var resourceName: String {
		get { return "Composition" }
	}
	
	/// Attests to accuracy of composition.
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition.
	public var author: [Reference]?
	
	/// Categorization of Composition.
	public var class_fhir: CodeableConcept?
	
	/// As defined by affinity domain.
	public var confidentiality: String?
	
	/// Organization which maintains the composition.
	public var custodian: Reference?
	
	/// Composition editing time.
	public var date: DateTime?
	
	/// Context of the Composition.
	public var encounter: Reference?
	
	/// The clinical service(s) being documented.
	public var event: [CompositionEvent]?
	
	/// Logical identifier of composition (version-independent).
	public var identifier: Identifier?
	
	/// Composition is broken into sections.
	public var section: [CompositionSection]?
	
	/// preliminary | final | amended | entered-in-error.
	public var status: String?
	
	/// Who and/or what the composition is about.
	public var subject: Reference?
	
	/// Human Readable name/title.
	public var title: String?
	
	/// Kind of composition (LOINC if possible).
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(author: [Reference], date: DateTime, status: String, subject: Reference, title: String, type: CodeableConcept) {
		self.init(json: nil)
		self.author = author
		self.date = date
		self.status = status
		self.subject = subject
		self.title = title
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			else {
				errors.append(FHIRJSONError(key: "title"))
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
public class CompositionAttester: BackboneElement {
	override public class var resourceName: String {
		get { return "CompositionAttester" }
	}
	
	/// personal | professional | legal | official.
	public var mode: [String]?
	
	/// Who attested the composition.
	public var party: Reference?
	
	/// When composition attested.
	public var time: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: [String]) {
		self.init(json: nil)
		self.mode = mode
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
public class CompositionEvent: BackboneElement {
	override public class var resourceName: String {
		get { return "CompositionEvent" }
	}
	
	/// Code(s) that apply to the event being documented.
	public var code: [CodeableConcept]?
	
	/// The event(s) being documented.
	public var detail: [Reference]?
	
	/// The period covered by the documentation.
	public var period: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
public class CompositionSection: BackboneElement {
	override public class var resourceName: String {
		get { return "CompositionSection" }
	}
	
	/// Classification of section (recommended).
	public var code: CodeableConcept?
	
	/// Why the section is empty.
	public var emptyReason: CodeableConcept?
	
	/// A reference to data that supports this section.
	public var entry: [Reference]?
	
	/// working | snapshot | changes.
	public var mode: String?
	
	/// Order of section entries.
	public var orderedBy: CodeableConcept?
	
	/// Nested Section.
	public var section: [CompositionSection]?
	
	/// Text summary of the section, for human interpretation.
	public var text: Narrative?
	
	/// Label for section (e.g. for ToC).
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["emptyReason"] {
				presentKeys.insert("emptyReason")
				if let val = exist as? FHIRJSON {
					self.emptyReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "emptyReason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["entry"] {
				presentKeys.insert("entry")
				if let val = exist as? [FHIRJSON] {
					self.entry = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "entry", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["orderedBy"] {
				presentKeys.insert("orderedBy")
				if let val = exist as? FHIRJSON {
					self.orderedBy = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "orderedBy", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? FHIRJSON {
					self.text = Narrative(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let emptyReason = self.emptyReason {
			json["emptyReason"] = emptyReason.asJSON()
		}
		if let entry = self.entry {
			json["entry"] = Reference.asJSONArray(entry)
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let orderedBy = self.orderedBy {
			json["orderedBy"] = orderedBy.asJSON()
		}
		if let section = self.section {
			json["section"] = CompositionSection.asJSONArray(section)
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
	}
}

