//
//  Ratio.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Ratio) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		denominator = createInstance(type: Quantity.self, for: "denominator", in: json, context: &instCtx, owner: self) ?? denominator
		numerator = createInstance(type: Quantity.self, for: "numerator", in: json, context: &instCtx, owner: self) ?? numerator
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.denominator?.decorate(json: &json, withKey: "denominator", errors: &errors)
		self.numerator?.decorate(json: &json, withKey: "numerator", errors: &errors)
	}
}

