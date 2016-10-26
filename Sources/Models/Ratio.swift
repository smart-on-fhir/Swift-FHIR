//
//  Ratio.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Ratio) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A ratio of two Quantity values - a numerator and a denominator.
 *
 *  A relationship of two Quantity values - expressed as a numerator and a denominator.
 */
open class Ratio: Element {
	override open class var resourceType: String {
		get { return "Ratio" }
	}
	
	/// Denominator value.
	public var denominator: Quantity?
	
	/// Numerator value.
	public var numerator: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["denominator"] {
				presentKeys.insert("denominator")
				if let val = exist as? FHIRJSON {
					self.denominator = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "denominator", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["numerator"] {
				presentKeys.insert("numerator")
				if let val = exist as? FHIRJSON {
					self.numerator = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "numerator", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let denominator = self.denominator {
			json["denominator"] = denominator.asJSON()
		}
		if let numerator = self.numerator {
			json["numerator"] = numerator.asJSON()
		}
		
		return json
	}
}

