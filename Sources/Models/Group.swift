//
//  Group.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Group) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Group of multiple entities.

Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected
to act collectively and are not formally or legally recognized; i.e. a collection of entities that isn't an
Organization.
*/
open class Group: DomainResource {
	override open class var resourceType: String {
		get { return "Group" }
	}
	
	/// Whether this group's record is in active use.
	public var active: Bool?
	
	/// Descriptive or actual.
	public var actual: Bool?
	
	/// Trait of group members.
	public var characteristic: [GroupCharacteristic]?
	
	/// Kind of Group members.
	public var code: CodeableConcept?
	
	/// Unique id.
	public var identifier: [Identifier]?
	
	/// Who or what is in group.
	public var member: [GroupMember]?
	
	/// Label for Group.
	public var name: FHIRString?
	
	/// Number of members.
	public var quantity: UInt?
	
	/// Identifies the broad classification of the kind of resources the group includes.
	public var type: GroupType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actual: Bool, type: GroupType) {
		self.init()
		self.actual = actual
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["active"] {
			presentKeys.insert("active")
			if let val = exist as? Bool {
				self.active = val
			}
			else {
				errors.append(FHIRValidationError(key: "active", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["actual"] {
			presentKeys.insert("actual")
			if let val = exist as? Bool {
				self.actual = val
			}
			else {
				errors.append(FHIRValidationError(key: "actual", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "actual"))
		}
		if let exist = json["characteristic"] {
			presentKeys.insert("characteristic")
			if let val = exist as? [FHIRJSON] {
				do {
					self.characteristic = try GroupCharacteristic.instantiate(fromArray: val, owner: self) as? [GroupCharacteristic]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "characteristic"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "characteristic", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["member"] {
			presentKeys.insert("member")
			if let val = exist as? [FHIRJSON] {
				do {
					self.member = try GroupMember.instantiate(fromArray: val, owner: self) as? [GroupMember]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "member"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "member", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["quantity"] {
			presentKeys.insert("quantity")
			if let val = exist as? UInt {
				self.quantity = val
			}
			else {
				errors.append(FHIRValidationError(key: "quantity", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = GroupType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let active = self.active {
			json["active"] = active.asJSON()
		}
		if let actual = self.actual {
			json["actual"] = actual.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "actual"))
		}
		if let characteristic = self.characteristic {
			json["characteristic"] = characteristic.map() { $0.asJSON(errors: &errors) }
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let member = self.member {
			json["member"] = member.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return json
	}
}


/**
Trait of group members.

Identifies the traits shared by members of the group.
*/
open class GroupCharacteristic: BackboneElement {
	override open class var resourceType: String {
		get { return "GroupCharacteristic" }
	}
	
	/// Kind of characteristic.
	public var code: CodeableConcept?
	
	/// Group includes or excludes.
	public var exclude: Bool?
	
	/// Period over which characteristic is tested.
	public var period: Period?
	
	/// Value held by characteristic.
	public var valueBoolean: Bool?
	
	/// Value held by characteristic.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value held by characteristic.
	public var valueQuantity: Quantity?
	
	/// Value held by characteristic.
	public var valueRange: Range?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, exclude: Bool, value: Any) {
		self.init()
		self.code = code
		self.exclude = exclude
		if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["exclude"] {
			presentKeys.insert("exclude")
			if let val = exist as? Bool {
				self.exclude = val
			}
			else {
				errors.append(FHIRValidationError(key: "exclude", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "exclude"))
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exclude = self.exclude {
			json["exclude"] = exclude.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "exclude"))
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		return json
	}
}


/**
Who or what is in group.

Identifies the resource instances that are members of the group.
*/
open class GroupMember: BackboneElement {
	override open class var resourceType: String {
		get { return "GroupMember" }
	}
	
	/// Reference to the group member.
	public var entity: Reference?
	
	/// If member is no longer in group.
	public var inactive: Bool?
	
	/// Period member belonged to the group.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(entity: Reference) {
		self.init()
		self.entity = entity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["entity"] {
			presentKeys.insert("entity")
			if let val = exist as? FHIRJSON {
				do {
					self.entity = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "entity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "entity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "entity"))
		}
		if let exist = json["inactive"] {
			presentKeys.insert("inactive")
			if let val = exist as? Bool {
				self.inactive = val
			}
			else {
				errors.append(FHIRValidationError(key: "inactive", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let entity = self.entity {
			json["entity"] = entity.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "entity"))
		}
		if let inactive = self.inactive {
			json["inactive"] = inactive.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		
		return json
	}
}

