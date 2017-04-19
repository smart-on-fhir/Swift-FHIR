//
//  Quantity.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Quantity) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A measured or measurable amount.

A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are
not precisely quantified, including amounts involving arbitrary units and floating currencies.
*/
open class Quantity: Element {
	override open class var resourceType: String {
		get { return "Quantity" }
	}
	
	/// Coded form of the unit.
	public var code: FHIRString?
	
	/// How the value should be understood and represented - whether the actual value is greater or less than the stated
	/// value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
	public var comparator: QuantityComparator?
	
	/// System that defines coded unit form.
	public var system: FHIRURL?
	
	/// Unit representation.
	public var unit: FHIRString?
	
	/// Numerical value (with implicit precision).
	public var value: FHIRDecimal?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: FHIRString.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		comparator = createEnum(type: QuantityComparator.self, for: "comparator", in: json, context: &instCtx) ?? comparator
		system = createInstance(type: FHIRURL.self, for: "system", in: json, context: &instCtx, owner: self) ?? system
		unit = createInstance(type: FHIRString.self, for: "unit", in: json, context: &instCtx, owner: self) ?? unit
		value = createInstance(type: FHIRDecimal.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.comparator?.decorate(json: &json, withKey: "comparator", errors: &errors)
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		self.unit?.decorate(json: &json, withKey: "unit", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}

