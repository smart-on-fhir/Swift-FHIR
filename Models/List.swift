//
//  List.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Information summarized from a list of other resources.
 *
 *  Scope and Usage List resources are used in many places, including allergies, medications, alerts, medical
 *  history, etc.
 */
class List: FHIRResource
{
	override class var resourceName: String {
		get { return "List" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Business identifier */
	var identifier: [Identifier]?
	
	/*! What the purpose of this list is */
	var code: CodeableConcept?
	
	/*! If all resources have the same subject */
	var subject: ResourceReference?
	
	/*! Who and/or what defined the list contents */
	var source: ResourceReference?
	
	/*! When the list was prepared */
	var date: NSDate?
	
	/*! Whether items in the list have a meaningful order */
	var ordered: Bool?
	
	/*! working | snapshot | changes */
	var mode: String?
	
	/*! Entries in the list */
	var entry: [ListEntry]?
	
	/*! Why list is empty */
	var emptyReason: CodeableConcept?
	
	convenience init(mode: String?) {
		self.init(json: nil)
		if mode {
			self.mode = mode
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  Entries in the list.
 *
 *  Entries in this list.
 */
class ListEntry: FHIRElement
{	
	/*! Workflow information about this item */
	var flag: [CodeableConcept]?
	
	/*! If this item is actually marked as deleted */
	var deleted: Bool?
	
	/*! When item added to list */
	var date: NSDate?
	
	/*! Actual entry */
	var item: ResourceReference?
	
	convenience init(item: ResourceReference?) {
		self.init(json: nil)
		if item {
			self.item = item
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}
