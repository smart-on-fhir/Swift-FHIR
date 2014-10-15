//
//  Range.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Range.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Set of values bounded by low and high.
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
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["high"] as? NSDictionary {
				self.high = Quantity(json: val)
			}
			if let val = js["low"] as? NSDictionary {
				self.low = Quantity(json: val)
			}
		}
	}
}

