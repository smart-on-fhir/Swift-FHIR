//
//  Range.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Range) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Set of values bounded by low and high.
 *
 *  A set of ordered Quantities defined by a low and high limit.
 */
public class Range: Element {
	override public class var resourceName: String {
		get { return "Range" }
	}
	
	/// High limit.
	public var high: Quantity?
	
	/// Low limit.
	public var low: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["high"] {
				presentKeys.insert("high")
				if let val = exist as? FHIRJSON {
					self.high = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "high", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["low"] {
				presentKeys.insert("low")
				if let val = exist as? FHIRJSON {
					self.low = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "low", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let high = self.high {
			json["high"] = high.asJSON()
		}
		if let low = self.low {
			json["low"] = low.asJSON()
		}
		
		return json
	}
}

