//
//  Group.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Group) on 2017-03-22.
//  2017, SMART Health IT.
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
	public var active: FHIRBool?
	
	/// Descriptive or actual.
	public var actual: FHIRBool?
	
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
	public var quantity: FHIRInteger?
	
	/// Identifies the broad classification of the kind of resources the group includes.
	public var type: GroupType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actual: FHIRBool, type: GroupType) {
		self.init()
		self.actual = actual
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		active = createInstance(type: FHIRBool.self, for: "active", in: json, context: &instCtx, owner: self) ?? active
		actual = createInstance(type: FHIRBool.self, for: "actual", in: json, context: &instCtx, owner: self) ?? actual
		if nil == actual && !instCtx.containsKey("actual") {
			instCtx.addError(FHIRValidationError(missing: "actual"))
		}
		characteristic = createInstances(of: GroupCharacteristic.self, for: "characteristic", in: json, context: &instCtx, owner: self) ?? characteristic
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		member = createInstances(of: GroupMember.self, for: "member", in: json, context: &instCtx, owner: self) ?? member
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		quantity = createInstance(type: FHIRInteger.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		type = createEnum(type: GroupType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.actual?.decorate(json: &json, withKey: "actual", errors: &errors)
		if nil == self.actual {
			errors.append(FHIRValidationError(missing: "actual"))
		}
		arrayDecorate(json: &json, withKey: "characteristic", using: self.characteristic, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "member", using: self.member, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
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
	public var exclude: FHIRBool?
	
	/// Period over which characteristic is tested.
	public var period: Period?
	
	/// Value held by characteristic.
	public var valueBoolean: FHIRBool?
	
	/// Value held by characteristic.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value held by characteristic.
	public var valueQuantity: Quantity?
	
	/// Value held by characteristic.
	public var valueRange: Range?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, exclude: FHIRBool, value: Any) {
		self.init()
		self.code = code
		self.exclude = exclude
		if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? FHIRBool {
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		exclude = createInstance(type: FHIRBool.self, for: "exclude", in: json, context: &instCtx, owner: self) ?? exclude
		if nil == exclude && !instCtx.containsKey("exclude") {
			instCtx.addError(FHIRValidationError(missing: "exclude"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.exclude?.decorate(json: &json, withKey: "exclude", errors: &errors)
		if nil == self.exclude {
			errors.append(FHIRValidationError(missing: "exclude"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueCodeableConcept && nil == self.valueBoolean && nil == self.valueQuantity && nil == self.valueRange {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
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
	public var inactive: FHIRBool?
	
	/// Period member belonged to the group.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(entity: Reference) {
		self.init()
		self.entity = entity
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		entity = createInstance(type: Reference.self, for: "entity", in: json, context: &instCtx, owner: self) ?? entity
		if nil == entity && !instCtx.containsKey("entity") {
			instCtx.addError(FHIRValidationError(missing: "entity"))
		}
		inactive = createInstance(type: FHIRBool.self, for: "inactive", in: json, context: &instCtx, owner: self) ?? inactive
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.entity?.decorate(json: &json, withKey: "entity", errors: &errors)
		if nil == self.entity {
			errors.append(FHIRValidationError(missing: "entity"))
		}
		self.inactive?.decorate(json: &json, withKey: "inactive", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
	}
}

