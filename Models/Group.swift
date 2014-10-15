//
//  Group.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (group.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Group of multiple entities.
 *
 *  Scope and Usage Use Cases The group resource is used in one of two ways:
 *  
 *  * To define a group of specific people, animals, devices, etc. that is being tracked, examined or otherwise
 *  referenced as part of healthcare-related activities
 *  * To define a set of *possible* people, animals, devices, etc. that are of interest for some intended future
 *  healthcare-related activities
 *  Examples of the former could include group therapy or treatment sessions, exposed entities tracked as part of public
 *  health, etc. The latter might be used to define expected subjects for a clinical study.
 *  
 *  Both use cases are handled by a single resource because the data elements captured tend to be similar.
 */
public class Group: FHIRResource
{
	override public class var resourceName: String {
		get { return "Group" }
	}
	
	/// Descriptive or actual
	public var actual: Bool?
	
	/// Trait of group members
	public var characteristic: [GroupCharacteristic]?
	
	/// Kind of Group members
	public var code: CodeableConcept?
	
	/// Unique id
	public var identifier: Identifier?
	
	/// Who is in group
	public var member: [FHIRReference<Patient>]?
	
	/// Label for Group
	public var name: String?
	
	/// Number of members
	public var quantity: Int?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// person | animal | practitioner | device | medication | substance
	public var type: String?
	
	public convenience init(actual: Bool?, type: String?) {
		self.init(json: nil)
		if nil != actual {
			self.actual = actual
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actual"] as? Int {
				self.actual = (1 == val)
			}
			if let val = js["characteristic"] as? [NSDictionary] {
				self.characteristic = GroupCharacteristic.from(val) as? [GroupCharacteristic]
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["member"] as? [NSDictionary] {
				self.member = FHIRReference.from(val, owner: self)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["quantity"] as? Int {
				self.quantity = val
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}


/**
 *  Trait of group members.
 *
 *  Identifies the traits shared by members of the group.
 */
public class GroupCharacteristic: FHIRElement
{	
	/// Kind of characteristic
	public var code: CodeableConcept?
	
	/// Group includes or excludes
	public var exclude: Bool?
	
	/// Value held by characteristic
	public var valueBoolean: Bool?
	
	/// Value held by characteristic
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value held by characteristic
	public var valueQuantity: Quantity?
	
	/// Value held by characteristic
	public var valueRange: Range?
	
	public convenience init(code: CodeableConcept?, exclude: Bool?, valueBoolean: Bool?, valueCodeableConcept: CodeableConcept?, valueQuantity: Quantity?, valueRange: Range?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != exclude {
			self.exclude = exclude
		}
		if nil != valueBoolean {
			self.valueBoolean = valueBoolean
		}
		if nil != valueCodeableConcept {
			self.valueCodeableConcept = valueCodeableConcept
		}
		if nil != valueQuantity {
			self.valueQuantity = valueQuantity
		}
		if nil != valueRange {
			self.valueRange = valueRange
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["exclude"] as? Int {
				self.exclude = (1 == val)
			}
			if let val = js["valueBoolean"] as? Int {
				self.valueBoolean = (1 == val)
			}
			if let val = js["valueCodeableConcept"] as? NSDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["valueQuantity"] as? NSDictionary {
				self.valueQuantity = Quantity(json: val)
			}
			if let val = js["valueRange"] as? NSDictionary {
				self.valueRange = Range(json: val)
			}
		}
	}
}

