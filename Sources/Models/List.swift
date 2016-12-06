//
//  List.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/List) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Information summarized from a list of other resources.

A set of information summarized from a list of other resources.
*/
open class List: DomainResource {
	override open class var resourceType: String {
		get { return "List" }
	}
	
	/// What the purpose of this list is.
	public var code: CodeableConcept?
	
	/// When the list was prepared.
	public var date: DateTime?
	
	/// Why list is empty.
	public var emptyReason: CodeableConcept?
	
	/// Context in which list created.
	public var encounter: Reference?
	
	/// Entries in the list.
	public var entry: [ListEntry]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing
	/// basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list
	/// where items may be marked as added, modified or deleted.
	public var mode: ListMode?
	
	/// Comments about the list.
	public var note: [Annotation]?
	
	/// What order the list has.
	public var orderedBy: CodeableConcept?
	
	/// Who and/or what defined the list contents (aka Author).
	public var source: Reference?
	
	/// Indicates the current state of this list.
	public var status: ListStatus?
	
	/// If all resources have the same subject.
	public var subject: Reference?
	
	/// Descriptive name for the list.
	public var title: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: ListMode, status: ListStatus) {
		self.init()
		self.mode = mode
		self.status = status
	}
	
	
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
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
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
		if let exist = json["entry"] {
			presentKeys.insert("entry")
			if let val = exist as? [FHIRJSON] {
				do {
					self.entry = try ListEntry.instantiate(fromArray: val, owner: self) as? [ListEntry]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entry"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entry", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? FHIRJSON {
				do {
					self.source = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "source"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = ListStatus(rawValue: val) {
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
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let emptyReason = self.emptyReason {
			json["emptyReason"] = emptyReason.asJSON(errors: &errors)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON(errors: &errors)
		}
		if let entry = self.entry {
			json["entry"] = entry.map() { $0.asJSON(errors: &errors) }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let mode = self.mode {
			json["mode"] = mode.rawValue
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let orderedBy = self.orderedBy {
			json["orderedBy"] = orderedBy.asJSON(errors: &errors)
		}
		if let source = self.source {
			json["source"] = source.asJSON(errors: &errors)
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
		
		return json
	}
}


/**
Entries in the list.

Entries in this list.
*/
open class ListEntry: BackboneElement {
	override open class var resourceType: String {
		get { return "ListEntry" }
	}
	
	/// When item added to list.
	public var date: DateTime?
	
	/// If this item is actually marked as deleted.
	public var deleted: Bool?
	
	/// Status/Workflow information about this item.
	public var flag: CodeableConcept?
	
	/// Actual entry.
	public var item: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Reference) {
		self.init()
		self.item = item
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["deleted"] {
			presentKeys.insert("deleted")
			if let val = exist as? Bool {
				self.deleted = val
			}
			else {
				errors.append(FHIRValidationError(key: "deleted", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["flag"] {
			presentKeys.insert("flag")
			if let val = exist as? FHIRJSON {
				do {
					self.flag = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "flag"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "flag", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? FHIRJSON {
				do {
					self.item = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "item"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deleted = self.deleted {
			json["deleted"] = deleted.asJSON()
		}
		if let flag = self.flag {
			json["flag"] = flag.asJSON(errors: &errors)
		}
		if let item = self.item {
			json["item"] = item.asJSON(errors: &errors)
		}
		
		return json
	}
}

