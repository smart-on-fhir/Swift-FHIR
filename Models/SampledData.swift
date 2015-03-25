//
//  SampledData.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/SampledData) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A series of measurements taken by a device.
 *
 *  A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the
 *  data.
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
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["data"] as? String {
				self.data = val
			}
			if let val = js["dimensions"] as? Int {
				self.dimensions = val
			}
			if let val = js["factor"] as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			if let val = js["lowerLimit"] as? NSNumber {
				self.lowerLimit = NSDecimalNumber(json: val)
			}
			if let val = js["origin"] as? FHIRJSON {
				self.origin = Quantity(json: val, owner: self)
			}
			if let val = js["period"] as? NSNumber {
				self.period = NSDecimalNumber(json: val)
			}
			if let val = js["upperLimit"] as? NSNumber {
				self.upperLimit = NSDecimalNumber(json: val)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let data = self.data {
			json["data"] = data.asJSON()
		}
		if let dimensions = self.dimensions {
			json["dimensions"] = dimensions.asJSON()
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let lowerLimit = self.lowerLimit {
			json["lowerLimit"] = lowerLimit.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = origin.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let upperLimit = self.upperLimit {
			json["upperLimit"] = upperLimit.asJSON()
		}
		
		return json
	}
}

