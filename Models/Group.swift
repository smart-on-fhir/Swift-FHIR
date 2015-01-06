//
//  Group.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (group.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Group of multiple entities.
 *
 *  Represents a defined collection of entities that may be discussed or acted upon collectively but which are not
 *  expected to act collectively and are not formally or legally recognized.  I.e. A collection of entities that isn't
 *  an Organization.
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
	public var member: [Reference]?
	
	/// Label for Group
	public var name: String?
	
	/// Number of members
	public var quantity: Int?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actual"] as? Bool {
				self.actual = val
			}
			if let val = js["characteristic"] as? [JSONDictionary] {
				self.characteristic = GroupCharacteristic.from(val, owner: self) as? [GroupCharacteristic]
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["member"] as? [JSONDictionary] {
				self.member = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["quantity"] as? Int {
				self.quantity = val
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
	override public class var resourceName: String {
		get { return "GroupCharacteristic" }
	}
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["exclude"] as? Bool {
				self.exclude = val
			}
			if let val = js["valueBoolean"] as? Bool {
				self.valueBoolean = val
			}
			if let val = js["valueCodeableConcept"] as? JSONDictionary {
				self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["valueQuantity"] as? JSONDictionary {
				self.valueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["valueRange"] as? JSONDictionary {
				self.valueRange = Range(json: val, owner: self)
			}
		}
	}
}

