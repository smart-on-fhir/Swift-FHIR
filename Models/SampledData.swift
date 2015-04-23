//
//  SampledData.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/SampledData) on 2015-04-23.
//  2015, SMART Health IT.
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
	public var dimensions: UInt?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(data: String?, dimensions: UInt?, origin: Quantity?, period: NSDecimalNumber?) {
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["data"] {
				presentKeys.addObject("data")
				if let val = exist as? String {
					self.data = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"data\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"data\" but it is missing"))
			}
			if let exist: AnyObject = js["dimensions"] {
				presentKeys.addObject("dimensions")
				if let val = exist as? UInt {
					self.dimensions = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dimensions\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"dimensions\" but it is missing"))
			}
			if let exist: AnyObject = js["factor"] {
				presentKeys.addObject("factor")
				if let val = exist as? NSNumber {
					self.factor = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"factor\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["lowerLimit"] {
				presentKeys.addObject("lowerLimit")
				if let val = exist as? NSNumber {
					self.lowerLimit = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lowerLimit\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["origin"] {
				presentKeys.addObject("origin")
				if let val = exist as? FHIRJSON {
					self.origin = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"origin\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"origin\" but it is missing"))
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? NSNumber {
					self.period = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"period\" but it is missing"))
			}
			if let exist: AnyObject = js["upperLimit"] {
				presentKeys.addObject("upperLimit")
				if let val = exist as? NSNumber {
					self.upperLimit = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"upperLimit\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

