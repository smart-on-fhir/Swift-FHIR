//
//  Range.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Range) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Set of values bounded by low and high.

A set of ordered Quantities defined by a low and high limit.
*/
open class Range: Element {
	override open class var resourceType: String {
		get { return "Range" }
	}
	
	/// High limit.
	public var high: Quantity?
	
	/// Low limit.
	public var low: Quantity?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		high = createInstance(type: Quantity.self, for: "high", in: json, context: &instCtx, owner: self) ?? high
		low = createInstance(type: Quantity.self, for: "low", in: json, context: &instCtx, owner: self) ?? low
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.high?.decorate(json: &json, withKey: "high", errors: &errors)
		self.low?.decorate(json: &json, withKey: "low", errors: &errors)
	}
}

