//
//  Group.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
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
	var type: String?
	
	/*! Descriptive or actual */
	var actual: Bool?
	
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
	
	convenience init(type: String?, actual: Bool?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
		if actual {
			self.actual = actual
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["actual"] as? Int {
				self.actual = (1 == val)
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["quantity"] as? Int {
				self.quantity = val
			}
			if let val = js["characteristic"] as? Array<NSDictionary> {
				self.characteristic = GroupCharacteristic.from(val) as? GroupCharacteristic[]
			}
			if let val = js["member"] as? Array<NSDictionary> {
				self.member = ResourceReference.from(val) as? ResourceReference[]
			}
		}
		super.init(json: json)
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
	var code: CodeableConcept?
	
	/*! Value held by characteristic */
	var valueRange: Range?
	
	/*! Value held by characteristic */
	var valueCodeableConcept: CodeableConcept?
	
	/*! Value held by characteristic */
	var valueBoolean: Bool?
	
	/*! Value held by characteristic */
	var valueQuantity: Quantity?
	
	/*! Group includes or excludes */
	var exclude: Bool?
	
	convenience init(code: CodeableConcept?, valueRange: Range?, valueCodeableConcept: CodeableConcept?, valueBoolean: Bool?, valueQuantity: Quantity?, exclude: Bool?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
		if valueRange {
			self.valueRange = valueRange
		}
		if valueCodeableConcept {
			self.valueCodeableConcept = valueCodeableConcept
		}
		if valueBoolean {
			self.valueBoolean = valueBoolean
		}
		if valueQuantity {
			self.valueQuantity = valueQuantity
		}
		if exclude {
			self.exclude = exclude
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["valueRange"] as? NSDictionary {
				self.valueRange = Range(json: val)
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["valueBoolean"] as? Int {
				self.valueBoolean = (1 == val)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val)
			}
			if let val = js["exclude"] as? Int {
				self.exclude = (1 == val)
			}
		}
		super.init(json: json)
	}
}
