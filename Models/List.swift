//
//  List.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "List" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Business identifier */
	var identifier: Identifier[]?

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
	var mode: String

	/*! Entries in the list */
	var entry: ListEntry[]?

	/*! Why list is empty */
	var emptyReason: CodeableConcept?

	init(mode: String) {
		self.mode = mode
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
	var flag: CodeableConcept[]?

	/*! If this item is actually marked as deleted */
	var deleted: Bool?

	/*! When item added to list */
	var date: NSDate?

	/*! Actual entry */
	var item: ResourceReference

	init(item: ResourceReference) {
		self.item = item
	}
}
