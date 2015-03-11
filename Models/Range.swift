//
//  Range.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/Range) on 2015-03-11.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Set of values bounded by low and high.
 *
 *  A set of ordered Quantities defined by a low and high limit.
 */
public class Range: FHIRElement
{
	override public class var resourceName: String {
		get { return "Range" }
	}
	
	/// High limit
	public var high: Quantity?
	
	/// Low limit
	public var low: Quantity?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["high"] as? JSONDictionary {
				self.high = Quantity(json: val, owner: self)
			}
			if let val = js["low"] as? JSONDictionary {
				self.low = Quantity(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

