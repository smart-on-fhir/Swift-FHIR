//
//  Money.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Money) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
An amount of economic utility in some recognized currency.
*/
open class Money: Element {
	override open class var resourceType: String {
		get { return "Money" }
	}
	
	/// ISO 4217 Currency Code.
	public var currency: FHIRString?
	
	/// Numerical value (with implicit precision).
	public var value: FHIRDecimal?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		currency = createInstance(type: FHIRString.self, for: "currency", in: json, context: &instCtx, owner: self) ?? currency
		value = createInstance(type: FHIRDecimal.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.currency?.decorate(json: &json, withKey: "currency", errors: &errors)
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
	}
}

