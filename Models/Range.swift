//
//  Range.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (Range.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
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
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["high"] as? NSDictionary {
				self.high = Quantity(json: val, owner: self)
			}
			if let val = js["low"] as? NSDictionary {
				self.low = Quantity(json: val, owner: self)
			}
		}
	}
}

