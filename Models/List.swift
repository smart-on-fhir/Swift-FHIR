//
//  List.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  Scope and Usage List resources are used in many places, including allergies, medications, alerts, medical
 *  history, etc.
 */
public class List: FHIRResource
{
	override public class var resourceName: String {
		get { return "List" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Business identifier */
	public var identifier: [Identifier]?
	
	/** What the purpose of this list is */
	public var code: CodeableConcept?
	
	/** If all resources have the same subject */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** Who and/or what defined the list contents */
	public var source: FHIRElement? {
		get { return resolveReference("source") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "source")
			}
		}
	}
	
	/** When the list was prepared */
	public var date: NSDate?
	
	/** Whether items in the list have a meaningful order */
	public var ordered: Bool?
	
	/** working | snapshot | changes */
	public var mode: String?
	
	/** Entries in the list */
	public var entry: [ListEntry]?
	
	/** Why list is empty */
	public var emptyReason: CodeableConcept?
	
	public convenience init(mode: String?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = ResourceReference(json: val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["ordered"] as? Int {
				self.ordered = (1 == val)
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["entry"] as? [NSDictionary] {
				self.entry = ListEntry.from(val) as? [ListEntry]
			}
			if let val = js["emptyReason"] as? NSDictionary {
				self.emptyReason = CodeableConcept(json: val)
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
	/** Workflow information about this item */
	public var flag: [CodeableConcept]?
	
	/** If this item is actually marked as deleted */
	public var deleted: Bool?
	
	/** When item added to list */
	public var date: NSDate?
	
	/** Actual entry */
	public var item: FHIRElement? {
		get { return resolveReference("item") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "item")
			}
		}
	}
	
	public convenience init(item: ResourceReference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["flag"] as? [NSDictionary] {
				self.flag = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["deleted"] as? Int {
				self.deleted = (1 == val)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["item"] as? NSDictionary {
				self.item = ResourceReference(json: val)
			}
		}
	}
}

