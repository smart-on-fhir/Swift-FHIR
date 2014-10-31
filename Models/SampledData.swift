//
//  SampledData.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-SampledData.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A series of measurements taken by a device.
 */
public class SampledData: FHIRElement
{
	override public class var resourceName: String {
		get { return "SampledData" }
	}
	
	/// Decimal values with spaces, or "E" | "U" | "L"
	public var data: String?
	
	/// Number of sample points at each time point
	public var dimensions: Int?
	
	/// Multiply data by this before adding to origin
	public var factor: NSDecimalNumber?
	
	/// Lower limit of detection
	public var lowerLimit: NSDecimalNumber?
	
	/// Zero value and units
	public var origin: Quantity?
	
	/// Number of milliseconds between samples
	public var period: NSDecimalNumber?
	
	/// Upper limit of detection
	public var upperLimit: NSDecimalNumber?
	
	public convenience init(data: String?, dimensions: Int?, origin: Quantity?, period: NSDecimalNumber?) {
		self.init(json: nil)
		if nil != data {
			self.data = data
		}
		if nil != dimensions {
			self.dimensions = dimensions
		}
		if nil != origin {
			self.origin = origin
		}
		if nil != period {
			self.period = period
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["data"] as? String {
				self.data = val
			}
			if let val = js["dimensions"] as? Int {
				self.dimensions = val
			}
			if let val = js["factor"] as? Double {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["lowerLimit"] as? Double {
				self.lowerLimit = NSDecimalNumber(json: val)
			}
			if let val = js["origin"] as? NSDictionary {
				self.origin = Quantity(json: val)
			}
			if let val = js["period"] as? Double {
				self.period = NSDecimalNumber(json: val)
			}
			if let val = js["upperLimit"] as? Double {
				self.upperLimit = NSDecimalNumber(json: val)
			}
		}
	}
}

