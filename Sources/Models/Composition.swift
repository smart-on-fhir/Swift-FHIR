//
//  Composition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Composition) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A set of resources composed into a single coherent clinical statement with clinical attestation.

A set of healthcare-related information that is assembled together into a single logical document that provides a single
coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is
making the statement. While a Composition defines the structure, it does not actually contain the content: rather the
full content of a document is contained in a Bundle, of which the Composition is the first resource contained.
*/
open class Composition: DomainResource {
	override open class var resourceType: String {
		get { return "Composition" }
	}
	
	/// Categorization of Composition.
	public var `class`: CodeableConcept?
	
	/// Attests to accuracy of composition.
	public var attester: [CompositionAttester]?
	
	/// Who and/or what authored the composition.
	public var author: [Reference]?
	
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
	
	/// The workflow/clinical status of this composition. The status is a marker for the clinical standing of the
	/// document.
	public var status: CompositionStatus?
	
	/// Who and/or what the composition is about.
	public var subject: Reference?
	
	/// Human Readable name/title.
	public var title: String?
	
	/// Kind of composition (LOINC if possible).
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(author: [Reference], date: DateTime, status: CompositionStatus, subject: Reference, title: String, type: CodeableConcept) {
		self.init()
		self.author = author
		self.date = date
		self.status = status
		self.subject = subject
		self.title = title
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["class"] {
			presentKeys.insert("class")
			if let val = exist as? FHIRJSON {
				do {
					self.`class` = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "class"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "class", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["attester"] {
			presentKeys.insert("attester")
			if let val = exist as? [FHIRJSON] {
				do {
					self.attester = try CompositionAttester.instantiate(fromArray: val, owner: self) as? [CompositionAttester]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "attester"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "attester", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["author"] {
			presentKeys.insert("author")
			if let val = exist as? [FHIRJSON] {
				do {
					self.author = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "author"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "author", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "author"))
		}
		if let exist = json["confidentiality"] {
			presentKeys.insert("confidentiality")
			if let val = exist as? String {
				self.confidentiality = val
			}
			else {
				errors.append(FHIRValidationError(key: "confidentiality", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["custodian"] {
			presentKeys.insert("custodian")
			if let val = exist as? FHIRJSON {
				do {
					self.custodian = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "custodian"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "custodian", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let exist = json["encounter"] {
			presentKeys.insert("encounter")
			if let val = exist as? FHIRJSON {
				do {
					self.encounter = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "encounter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["event"] {
			presentKeys.insert("event")
			if let val = exist as? [FHIRJSON] {
				do {
					self.event = try CompositionEvent.instantiate(fromArray: val, owner: self) as? [CompositionEvent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "event"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "event", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["section"] {
			presentKeys.insert("section")
			if let val = exist as? [FHIRJSON] {
				do {
					self.section = try CompositionSection.instantiate(fromArray: val, owner: self) as? [CompositionSection]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "section"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "section", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = CompositionStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "title"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let `class` = self.`class` {
			json["class"] = `class`.asJSON(errors: &errors)
		}
		if let attester = self.attester {
			json["attester"] = attester.map() { $0.asJSON(errors: &errors) }
		}
		if let author = self.author {
			json["author"] = author.map() { $0.asJSON(errors: &errors) }
		}
		if let confidentiality = self.confidentiality {
			json["confidentiality"] = confidentiality.asJSON()
		}
		if let custodian = self.custodian {
			json["custodian"] = custodian.asJSON(errors: &errors)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let event = self.event {
			json["event"] = event.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let section = self.section {
			json["section"] = section.map() { $0.asJSON(errors: &errors) }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Attests to accuracy of composition.

A participant who has attested to the accuracy of the composition/document.
*/
open class CompositionAttester: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionAttester" }
	}
	
	/// The type of attestation the authenticator offers.
	public var mode: [CompositionAttestationMode]?
	
	/// Who attested the composition.
	public var party: Reference?
	
	/// When composition attested.
	public var time: DateTime?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: [CompositionAttestationMode]) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? [String] { var i = -1
				self.mode = val.map() { i += 1
					if let enumval = CompositionAttestationMode(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "mode.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["party"] {
			presentKeys.insert("party")
			if let val = exist as? FHIRJSON {
				do {
					self.party = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "party"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "party", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["time"] {
			presentKeys.insert("time")
			if let val = exist as? String {
				self.time = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "time", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let mode = self.mode {
			json["mode"] = mode.map() { $0.rawValue }
		}
		if let party = self.party {
			json["party"] = party.asJSON(errors: &errors)
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		
		return json
	}
}


/**
The clinical service(s) being documented.

The clinical service, such as a colonoscopy or an appendectomy, being documented.
*/
open class CompositionEvent: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionEvent" }
	}
	
	/// Code(s) that apply to the event being documented.
	public var code: [CodeableConcept]?
	
	/// The event(s) being documented.
	public var detail: [Reference]?
	
	/// The period covered by the documentation.
	public var period: Period?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? [FHIRJSON] {
				do {
					self.code = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Composition is broken into sections.

The root of the sections that make up the composition.
*/
open class CompositionSection: BackboneElement {
	override open class var resourceType: String {
		get { return "CompositionSection" }
	}
	
	/// Classification of section (recommended).
	public var code: CodeableConcept?
	
	/// Why the section is empty.
	public var emptyReason: CodeableConcept?
	
	/// A reference to data that supports this section.
	public var entry: [Reference]?
	
	/// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an
	/// ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a
	/// prepared list where items may be marked as added, modified or deleted.
	public var mode: ListMode?
	
	/// Order of section entries.
	public var orderedBy: CodeableConcept?
	
	/// Nested Section.
	public var section: [CompositionSection]?
	
	/// Text summary of the section, for human interpretation.
	public var text: Narrative?
	
	/// Label for section (e.g. for ToC).
	public var title: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["emptyReason"] {
			presentKeys.insert("emptyReason")
			if let val = exist as? FHIRJSON {
				do {
					self.emptyReason = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "emptyReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "emptyReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["entry"] {
			presentKeys.insert("entry")
			if let val = exist as? [FHIRJSON] {
				do {
					self.entry = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entry"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entry", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				if let enumval = ListMode(rawValue: val) {
					self.mode = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "mode", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["orderedBy"] {
			presentKeys.insert("orderedBy")
			if let val = exist as? FHIRJSON {
				do {
					self.orderedBy = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "orderedBy"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "orderedBy", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["section"] {
			presentKeys.insert("section")
			if let val = exist as? [FHIRJSON] {
				do {
					self.section = try CompositionSection.instantiate(fromArray: val, owner: self) as? [CompositionSection]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "section"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "section", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? FHIRJSON {
				do {
					self.text = try Narrative(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "text"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let emptyReason = self.emptyReason {
			json["emptyReason"] = emptyReason.asJSON(errors: &errors)
		}
		if let entry = self.entry {
			json["entry"] = entry.map() { $0.asJSON(errors: &errors) }
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		if let orderedBy = self.orderedBy {
			json["orderedBy"] = orderedBy.asJSON(errors: &errors)
		}
		if let section = self.section {
			json["section"] = section.map() { $0.asJSON(errors: &errors) }
		}
		if let text = self.text {
			json["text"] = text.asJSON(errors: &errors)
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
	}
}

