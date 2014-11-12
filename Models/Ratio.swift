//
//  Ratio.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Ratio.profile.json) on 2014-11-12.
//  2014, SMART Platforms.
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
	
	/// Denominator value
	public var denominator: Quantity?
	
	/// Numerator value
	public var numerator: Quantity?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["denominator"] as? NSDictionary {
				self.denominator = Quantity(json: val, owner: self)
			}
			if let val = js["numerator"] as? NSDictionary {
				self.numerator = Quantity(json: val, owner: self)
			}
		}
	}
}

