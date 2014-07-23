//
//  Quantity.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A measured or measurable amount.
 */
public class Quantity: FHIRElement
{
	override public class var resourceName: String {
		get { return "Quantity" }
	}
	
	/** Numerical value (with implicit precision) */
	public var value: NSDecimalNumber?
	
	/** < | <= | >= | > - how to understand the value */
	public var comparator: String?
	
	/** Unit representation */
	public var units: String?
	
	/** System that defines coded unit form */
	public var system: NSURL?
	
	/** Coded form of the unit */
	public var code: String?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["value"] as? String {
				self.value = NSDecimalNumber(json: val)
			}
			if let val = js["comparator"] as? String {
				self.comparator = val
			}
			if let val = js["units"] as? String {
				self.units = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
		}
	}
}

