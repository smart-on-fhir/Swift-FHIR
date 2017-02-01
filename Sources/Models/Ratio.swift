//
//  Ratio.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Ratio) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A ratio of two Quantity values - a numerator and a denominator.

A relationship of two Quantity values - expressed as a numerator and a denominator.
*/
open class Ratio: Element {
	override open class var resourceType: String {
		get { return "Ratio" }
	}
	
	/// Denominator value.
	public var denominator: Quantity?
	
	/// Numerator value.
	public var numerator: Quantity?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		denominator = try createInstance(type: Quantity.self, for: "denominator", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? denominator
		numerator = try createInstance(type: Quantity.self, for: "numerator", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? numerator
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.denominator?.decorate(json: &json, withKey: "denominator", errors: &errors)
		self.numerator?.decorate(json: &json, withKey: "numerator", errors: &errors)
	}
}

