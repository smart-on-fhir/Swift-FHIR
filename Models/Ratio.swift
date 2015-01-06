//
//  Ratio.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (Ratio.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A ratio of two Quantity values - a numerator and a denominator.
 *
 *  A relationship of two Quantity values - expressed as a numerator and a denominator.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["denominator"] as? JSONDictionary {
				self.denominator = Quantity(json: val, owner: self)
			}
			if let val = js["numerator"] as? JSONDictionary {
				self.numerator = Quantity(json: val, owner: self)
			}
		}
	}
}

