//
//  Range.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Range) on 2017-02-14.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		high = try createInstance(type: Quantity.self, for: "high", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? high
		low = try createInstance(type: Quantity.self, for: "low", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? low
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.high?.decorate(json: &json, withKey: "high", errors: &errors)
		self.low?.decorate(json: &json, withKey: "low", errors: &errors)
	}
}

