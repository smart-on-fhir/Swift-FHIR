//
//  Range.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
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
	
	/** Low limit */
	public var low: Quantity?
	
	/** High limit */
	public var high: Quantity?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["low"] as? NSDictionary {
				self.low = Quantity(json: val)
			}
			if let val = js["high"] as? NSDictionary {
				self.high = Quantity(json: val)
			}
		}
	}
}

