//
//  Ratio.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Ratio) on 2016-12-06.
//  2016, SMART Health IT.
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
		if let exist = json["denominator"] {
			presentKeys.insert("denominator")
			if let val = exist as? FHIRJSON {
				do {
					self.denominator = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "denominator"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "denominator", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["numerator"] {
			presentKeys.insert("numerator")
			if let val = exist as? FHIRJSON {
				do {
					self.numerator = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "numerator"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "numerator", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let denominator = self.denominator {
			json["denominator"] = denominator.asJSON(errors: &errors)
		}
		if let numerator = self.numerator {
			json["numerator"] = numerator.asJSON(errors: &errors)
		}
		
		return json
	}
}

