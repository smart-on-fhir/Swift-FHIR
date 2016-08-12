//
//  Ratio.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Ratio) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A ratio of two Quantity values - a numerator and a denominator.
 *
 *  A relationship of two Quantity values - expressed as a numerator and a denominator.
 */
public class Ratio: Element {
	override public class var resourceName: String {
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
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["denominator"] {
				presentKeys.insert("denominator")
				if let val = exist as? FHIRJSON {
					self.denominator = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "denominator", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["numerator"] {
				presentKeys.insert("numerator")
				if let val = exist as? FHIRJSON {
					self.numerator = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "numerator", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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

