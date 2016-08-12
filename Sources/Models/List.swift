//
//  List.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/List) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  A set of information summarized from a list of other resources.
 */
public class List: DomainResource {
	override public class var resourceName: String {
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
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["entry"] {
				presentKeys.insert("entry")
				if let val = exist as? [FHIRJSON] {
					self.entry = ListEntry.from(val, owner: self) as? [ListEntry]
				}
				else {
					errors.append(FHIRJSONError(key: "entry", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			else {
				errors.append(FHIRJSONError(key: "mode"))
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.from(val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
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
			json["entry"] = ListEntry.asJSONArray(entry)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let note = self.note {
			json["note"] = Annotation.asJSONArray(note)
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
public class ListEntry: BackboneElement {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["deleted"] {
				presentKeys.insert("deleted")
				if let val = exist as? Bool {
					self.deleted = val
				}
				else {
					errors.append(FHIRJSONError(key: "deleted", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["flag"] {
				presentKeys.insert("flag")
				if let val = exist as? FHIRJSON {
					self.flag = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "flag", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? FHIRJSON {
					self.item = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "item"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

