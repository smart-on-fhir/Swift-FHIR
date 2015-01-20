//
//  List.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (list.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  A set of information summarized from a list of other resources.
 */
public class List: FHIRResource
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
	
	/// Whether items in the list have a meaningful order
	public var ordered: Bool?
	
	/// Who and/or what defined the list contents
	public var source: Reference?
	
	/// If all resources have the same subject
	public var subject: Reference?
	
	public convenience init(mode: String?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["emptyReason"] as? JSONDictionary {
				self.emptyReason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["entry"] as? [JSONDictionary] {
				self.entry = ListEntry.from(val, owner: self) as? [ListEntry]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["ordered"] as? Bool {
				self.ordered = val
			}
			if let val = js["source"] as? JSONDictionary {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
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
	
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["deleted"] as? Bool {
				self.deleted = val
			}
			if let val = js["flag"] as? [JSONDictionary] {
				self.flag = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["item"] as? JSONDictionary {
				self.item = Reference(json: val, owner: self)
			}
		}
	}
}

