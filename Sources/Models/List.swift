//
//  List.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/List) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  A set of information summarized from a list of other resources.
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
	
	/// working | snapshot | changes.
	public var mode: String?
	
	/// Comments about the list.
	public var note: [Annotation]?
	
	/// What order the list has.
	public var orderedBy: CodeableConcept?
	
	/// Who and/or what defined the list contents (aka Author).
	public var source: Reference?
	
	/// current | retired | entered-in-error.
	public var status: String?
	
	/// If all resources have the same subject.
	public var subject: Reference?
	
	/// Descriptive name for the list.
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, status: String) {
		self.init(json: nil)
		self.mode = mode
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["emptyReason"] {
				presentKeys.insert("emptyReason")
				if let val = exist as? FHIRJSON {
					self.emptyReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "emptyReason", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["entry"] {
				presentKeys.insert("entry")
				if let val = exist as? [FHIRJSON] {
					self.entry = ListEntry.instantiate(fromArray: val, owner: self) as? [ListEntry]
				}
				else {
					errors.append(FHIRJSONError(key: "entry", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["mode"] {
				presentKeys.insert("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(FHIRJSONError(key: "mode", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["orderedBy"] {
				presentKeys.insert("orderedBy")
				if let val = exist as? FHIRJSON {
					self.orderedBy = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "orderedBy", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["title"] {
				presentKeys.insert("title")
				if let val = exist as? String {
					self.title = val
				}
				else {
					errors.append(FHIRJSONError(key: "title", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let emptyReason = self.emptyReason {
			json["emptyReason"] = emptyReason.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let entry = self.entry {
			json["entry"] = entry.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let orderedBy = self.orderedBy {
			json["orderedBy"] = orderedBy.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
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
		
		return json
	}
}


/**
 *  Entries in the list.
 *
 *  Entries in this list.
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Reference) {
		self.init(json: nil)
		self.item = item
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["deleted"] {
				presentKeys.insert("deleted")
				if let val = exist as? Bool {
					self.deleted = val
				}
				else {
					errors.append(FHIRJSONError(key: "deleted", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["flag"] {
				presentKeys.insert("flag")
				if let val = exist as? FHIRJSON {
					self.flag = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "flag", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? FHIRJSON {
					self.item = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "item"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deleted = self.deleted {
			json["deleted"] = deleted.asJSON()
		}
		if let flag = self.flag {
			json["flag"] = flag.asJSON()
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}

