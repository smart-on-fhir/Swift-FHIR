//
//  Range.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Range) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Set of values bounded by low and high.
 *
 *  A set of ordered Quantities defined by a low and high limit.
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
		if let exist = json["high"] {
			presentKeys.insert("high")
			if let val = exist as? FHIRJSON {
				do {
					self.high = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "high"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "high", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["low"] {
			presentKeys.insert("low")
			if let val = exist as? FHIRJSON {
				do {
					self.low = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "low"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "low", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let high = self.high {
			json["high"] = high.asJSON(errors: &errors)
		}
		if let low = self.low {
			json["low"] = low.asJSON(errors: &errors)
		}
		
		return json
	}
}

