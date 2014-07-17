//
//  Range.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Set of values bounded by low and high.
 */
class Range: FHIRElement
{
	override class var resourceName: String {
		get { return "Range" }
	}
	
	/*! Low limit */
	var low: Quantity?
	
	/*! High limit */
	var high: Quantity?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["low"] as? NSDictionary {
				self.low = Quantity(json: val)
			}
			if let val = js["high"] as? NSDictionary {
				self.high = Quantity(json: val)
			}
		}
		super.init(json: json)
	}
}
