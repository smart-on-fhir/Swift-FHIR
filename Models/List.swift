//
//  List.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (list.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  Scope and Usage List resources are used in many places, including allergies, medications, alerts, medical history,
 *  etc.
 */
public class List: FHIRResource
{
	override public class var resourceName: String {
		get { return "List" }
	}
	
	/// What the purpose of this list is
	public var code: CodeableConcept?
	
	/// When the list was prepared
	public var date: NSDate?
	
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
	public var source: FHIRReference<Practitioner>?
	
	/// If all resources have the same subject
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	public convenience init(mode: String?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["emptyReason"] as? NSDictionary {
				self.emptyReason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["entry"] as? [NSDictionary] {
				self.entry = ListEntry.from(val, owner: self) as? [ListEntry]
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["ordered"] as? Bool {
				self.ordered = val
			}
			if let val = js["source"] as? NSDictionary {
				self.source = FHIRReference(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val, owner: self)
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
	/// When item added to list
	public var date: NSDate?
	
	/// If this item is actually marked as deleted
	public var deleted: Bool?
	
	/// Workflow information about this item
	public var flag: [CodeableConcept]?
	
	/// Actual entry
	public var item: FHIRReference<FHIRResource>?
	
	public convenience init(item: FHIRReference<FHIRResource>?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["deleted"] as? Bool {
				self.deleted = val
			}
			if let val = js["flag"] as? [NSDictionary] {
				self.flag = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["item"] as? NSDictionary {
				self.item = FHIRReference(json: val, owner: self)
			}
		}
	}
}

