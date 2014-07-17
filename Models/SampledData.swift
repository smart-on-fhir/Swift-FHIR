//
//  SampledData.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A series of measurements taken by a device.
 */
class SampledData: FHIRElement
{
	override class var resourceName: String {
		get { return "SampledData" }
	}
	
	/*! Zero value and units */
	var origin: Quantity?
	
	/*! Number of milliseconds between samples */
	var period: NSDecimalNumber?
	
	/*! Multiply data by this before adding to origin */
	var factor: NSDecimalNumber?
	
	/*! Lower limit of detection */
	var lowerLimit: NSDecimalNumber?
	
	/*! Upper limit of detection */
	var upperLimit: NSDecimalNumber?
	
	/*! Number of sample points at each time point */
	var dimensions: Int?
	
	/*! Decimal values with spaces, or "E" | "U" | "L" */
	var data: String?
	
	convenience init(origin: Quantity?, period: NSDecimalNumber?, dimensions: Int?, data: String?) {
		self.init(json: nil)
		if origin {
			self.origin = origin
		}
		if period {
			self.period = period
		}
		if dimensions {
			self.dimensions = dimensions
		}
		if data {
			self.data = data
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["origin"] as? NSDictionary {
				self.origin = Quantity(json: val)
			}
			if let val = js["period"] as? String {
				self.period = NSDecimalNumber(json: val)
			}
			if let val = js["factor"] as? String {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["lowerLimit"] as? String {
				self.lowerLimit = NSDecimalNumber(json: val)
			}
			if let val = js["upperLimit"] as? String {
				self.upperLimit = NSDecimalNumber(json: val)
			}
			if let val = js["dimensions"] as? Int {
				self.dimensions = val
			}
			if let val = js["data"] as? String {
				self.data = val
			}
		}
		super.init(json: json)
	}
}
