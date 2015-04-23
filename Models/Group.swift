//
//  Group.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Group) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Group of multiple entities.
 *
 *  Represents a defined collection of entities that may be discussed or acted upon collectively but which are not
 *  expected to act collectively and are not formally or legally recognized.  I.e. A collection of entities that isn't
 *  an Organization.
 */
public class Group: DomainResource
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
	
	/// Who or what is in group
	public var member: [Reference]?
	
	/// Label for Group
	public var name: String?
	
	/// Number of members
	public var quantity: UInt?
	
	/// person | animal | practitioner | device | medication | substance
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(actual: Bool?, type: String?) {
		self.init(json: nil)
		if nil != actual {
			self.actual = actual
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["actual"] {
				presentKeys.addObject("actual")
				if let val = exist as? Bool {
					self.actual = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"actual\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"actual\" but it is missing"))
			}
			if let exist: AnyObject = js["characteristic"] {
				presentKeys.addObject("characteristic")
				if let val = exist as? [FHIRJSON] {
					self.characteristic = GroupCharacteristic.from(val, owner: self) as? [GroupCharacteristic]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"characteristic\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["member"] {
				presentKeys.addObject("member")
				if let val = exist as? [FHIRJSON] {
					self.member = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"member\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.addObject("quantity")
				if let val = exist as? UInt {
					self.quantity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"quantity\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actual = self.actual {
			json["actual"] = actual.asJSON()
		}
		if let characteristic = self.characteristic {
			json["characteristic"] = GroupCharacteristic.asJSONArray(characteristic)
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let member = self.member {
			json["member"] = Reference.asJSONArray(member)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["exclude"] {
				presentKeys.addObject("exclude")
				if let val = exist as? Bool {
					self.exclude = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exclude\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"exclude\" but it is missing"))
			}
			if let exist: AnyObject = js["valueBoolean"] {
				presentKeys.addObject("valueBoolean")
				if let val = exist as? Bool {
					self.valueBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueCodeableConcept"] {
				presentKeys.addObject("valueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.valueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueQuantity"] {
				presentKeys.addObject("valueQuantity")
				if let val = exist as? FHIRJSON {
					self.valueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueRange"] {
				presentKeys.addObject("valueRange")
				if let val = exist as? FHIRJSON {
					self.valueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
				errors.append(fhir_generateJSONError("\(self) expects at least one of nonoptional JSON property \"value[x]\" but none was found"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let exclude = self.exclude {
			json["exclude"] = exclude.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON()
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON()
		}
		
		return json
	}
}

