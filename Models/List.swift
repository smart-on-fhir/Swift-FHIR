//
//  List.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/List) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  A set of information summarized from a list of other resources.
 */
public class List: DomainResource
{
	override public class var resourceName: String {
		get { return "List" }
	}
	
	/// What the purpose of this list is
	public var code: CodeableConcept?
	
	/// When the list was prepared
	public var date: DateTime?
	
	/// Why list is empty
	public var emptyReason: CodeableConcept?
	
	/// Entries in the list
	public var entry: [ListEntry]?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// working | snapshot | changes
	public var mode: String?
	
	/// Comments about the note
	public var note: String?
	
	/// What order the list has
	public var orderedBy: CodeableConcept?
	
	/// Who and/or what defined the list contents
	public var source: Reference?
	
	/// current | retired | entered-in-error
	public var status: String?
	
	/// If all resources have the same subject
	public var subject: Reference?
	
	/// Descriptive name for the list
	public var title: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(mode: String?, status: String?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
		if nil != status {
			self.status = status
		}
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
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["emptyReason"] {
				presentKeys.addObject("emptyReason")
				if let val = exist as? FHIRJSON {
					self.emptyReason = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"emptyReason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["entry"] {
				presentKeys.addObject("entry")
				if let val = exist as? [FHIRJSON] {
					self.entry = ListEntry.from(val, owner: self) as? [ListEntry]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"entry\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mode"] {
				presentKeys.addObject("mode")
				if let val = exist as? String {
					self.mode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"mode\" but it is missing"))
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.addObject("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"note\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["orderedBy"] {
				presentKeys.addObject("orderedBy")
				if let val = exist as? FHIRJSON {
					self.orderedBy = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderedBy\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.addObject("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"source\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let emptyReason = self.emptyReason {
			json["emptyReason"] = emptyReason.asJSON()
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
			json["note"] = note.asJSON()
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
public class ListEntry: FHIRElement
{
	override public class var resourceName: String {
		get { return "ListEntry" }
	}
	
	/// When item added to list
	public var date: DateTime?
	
	/// If this item is actually marked as deleted
	public var deleted: Bool?
	
	/// Workflow information about this item
	public var flag: [CodeableConcept]?
	
	/// Actual entry
	public var item: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["deleted"] {
				presentKeys.addObject("deleted")
				if let val = exist as? Bool {
					self.deleted = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"deleted\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["flag"] {
				presentKeys.addObject("flag")
				if let val = exist as? [FHIRJSON] {
					self.flag = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"flag\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? FHIRJSON {
					self.item = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"item\" but it is missing"))
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
			json["flag"] = CodeableConcept.asJSONArray(flag)
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}

