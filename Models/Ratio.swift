//
//  Ratio.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A ratio of two Quantity values - a numerator and a denominator.
 */
class Ratio: FHIRElement
{
	override class var resourceName: String {
		get { return "Ratio" }
	}
	
	/*! Numerator value */
	var numerator: Quantity?
	
	/*! Denominator value */
	var denominator: Quantity?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["numerator"] as? NSDictionary {
				self.numerator = Quantity(json: val)
			}
			if let val = js["denominator"] as? NSDictionary {
				self.denominator = Quantity(json: val)
			}
		}
		super.init(json: json)
	}
}
