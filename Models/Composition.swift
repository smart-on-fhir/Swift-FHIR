//
//  Composition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Composition) on 2015-04-23.
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
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["attester"] {
				presentKeys.addObject("attester")
				if let val = exist as? [FHIRJSON] {
					self.attester = CompositionAttester.from(val, owner: self) as? [CompositionAttester]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"attester\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["author"] {
				presentKeys.addObject("author")
				if let val = exist as? [FHIRJSON] {
					self.author = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"author\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"author\" but it is missing"))
			}
			if let exist: AnyObject = js["class"] {
				presentKeys.addObject("class")
				if let val = exist as? FHIRJSON {
					self.class_fhir = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"class\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["confidentiality"] {
				presentKeys.addObject("confidentiality")
				if let val = exist as? String {
					self.confidentiality = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"confidentiality\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["custodian"] {
				presentKeys.addObject("custodian")
				if let val = exist as? FHIRJSON {
					self.custodian = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"custodian\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"date\" but it is missing"))
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
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [FHIRJSON] {
					self.event = CompositionEvent.from(val, owner: self) as? [CompositionEvent]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["section"] {
				presentKeys.addObject("section")
				if let val = exist as? [FHIRJSON] {
					self.section = CompositionSection.from(val, owner: self) as? [CompositionSection]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"section\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(mode: [String]?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["mode"] {
				presentKeys.addObject("mode")
				if let val = exist as? [String] {
					self.mode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mode\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"mode\" but it is missing"))
			}
			if let exist: AnyObject = js["party"] {
				presentKeys.addObject("party")
				if let val = exist as? FHIRJSON {
					self.party = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"party\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["time"] {
				presentKeys.addObject("time")
				if let val = exist as? String {
					self.time = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"time\" to be `String`, but is \(exist.dynamicType)"))
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? [FHIRJSON] {
					self.code = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["content"] {
				presentKeys.addObject("content")
				if let val = exist as? FHIRJSON {
					self.content = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"content\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["section"] {
				presentKeys.addObject("section")
				if let val = exist as? [FHIRJSON] {
					self.section = CompositionSection.from(val, owner: self) as? [CompositionSection]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"section\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["title"] {
				presentKeys.addObject("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"title\" to be `String`, but is \(exist.dynamicType)"))
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

