//
//  Group.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Group of multiple entities.
 *
 *  Scope and Usage Use Cases The group resource is used in one of two ways:
 *  
 *  * To define a group of specific people, animals, devices, etc. that is being tracked, examined or otherwise
 *  referenced as part of healthcare-related activities
 *  * To define a set of *possible* people, animals, devices, etc. that are of interest for some intended future
 *  healthcare-related activities
 *  Examples of the former could include group therapy or treatment sessions, exposed entities tracked as part of
 *  public health, etc. The latter might be used to define expected subjects for a clinical study.
 *  
 *  Both use cases are handled by a single resource because the data elements captured tend to be similar.
 */
class Group: FHIRResource
{
	override var resourceName: String {
		get { return "Group" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! Unique id */
	var identifier: Identifier?

	/*! person | animal | practitioner | device | medication | substance */
	var type: String

	/*! Descriptive or actual */
	var actual: Bool

	/*! Kind of Group members */
	var code: CodeableConcept?

	/*! Label for Group */
	var name: String?

	/*! Number of members */
	var quantity: Int?

	/*! Trait of group members */
	var characteristic: GroupCharacteristic[]?

	/*! Who is in group */
	var member: ResourceReference[]?

	init(type: String, actual: Bool) {
		self.type = type
		self.actual = actual
	}
}


/*!
 *  Trait of group members.
 *
 *  Identifies the traits shared by members of the group.
 */
class GroupCharacteristic: FHIRElement
{
	/*! Kind of characteristic */
	var code: CodeableConcept

	/*! Value held by characteristic */
	var valueCodeableConcept: CodeableConcept

	/*! Value held by characteristic */
	var valueQuantity: Quantity

	/*! Value held by characteristic */
	var valueBoolean: Bool

	/*! Value held by characteristic */
	var valueRange: Range

	/*! Group includes or excludes */
	var exclude: Bool

	init(code: CodeableConcept, valueCodeableConcept: CodeableConcept, valueQuantity: Quantity, valueBoolean: Bool, valueRange: Range, exclude: Bool) {
		self.code = code
		self.valueCodeableConcept = valueCodeableConcept
		self.valueQuantity = valueQuantity
		self.valueBoolean = valueBoolean
		self.valueRange = valueRange
		self.exclude = exclude
	}
}
