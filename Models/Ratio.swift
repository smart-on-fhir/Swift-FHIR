//
//  Ratio.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A ratio of two Quantity values - a numerator and a denominator.
 */
public class Ratio: FHIRElement
{
	override public class var resourceName: String {
		get { return "Ratio" }
	}
	
	/** Numerator value */
	public var numerator: Quantity?
	
	/** Denominator value */
	public var denominator: Quantity?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["numerator"] as? NSDictionary {
				self.numerator = Quantity(json: val)
			}
			if let val = js["denominator"] as? NSDictionary {
				self.denominator = Quantity(json: val)
			}
		}
	}
}

