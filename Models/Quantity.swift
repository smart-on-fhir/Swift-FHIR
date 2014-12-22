//
//  Quantity.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (Quantity.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A measured or measurable amount.
 *
 *  A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that
 *  are not precisely quantified, including amounts involving arbitrary units and floating currencies.
 */
public class Quantity: FHIRElement
{
	override public class var resourceName: String {
		get { return "Quantity" }
	}
	
	/// Coded form of the unit
	public var code: String?
	
	/// < | <= | >= | > - how to understand the value
	public var comparator: String?
	
	/// System that defines coded unit form
	public var system: NSURL?
	
	/// Unit representation
	public var units: String?
	
	/// Numerical value (with implicit precision)
	public var value: NSDecimalNumber?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["comparator"] as? String {
				self.comparator = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["units"] as? String {
				self.units = val
			}
			if let val = js["value"] as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
		}
	}
}

