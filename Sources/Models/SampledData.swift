//
//  SampledData.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/SampledData) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
A series of measurements taken by a device.

A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the
data.
*/
open class SampledData: Element {
	override open class var resourceType: String {
		get { return "SampledData" }
	}
	
	/// Decimal values with spaces, or "E" | "U" | "L".
	public var data: FHIRString?
	
	/// Number of sample points at each time point.
	public var dimensions: UInt?
	
	/// Multiply data by this before adding to origin.
	public var factor: NSDecimalNumber?
	
	/// Lower limit of detection.
	public var lowerLimit: NSDecimalNumber?
	
	/// Zero value and units.
	public var origin: Quantity?
	
	/// Number of milliseconds between samples.
	public var period: NSDecimalNumber?
	
	/// Upper limit of detection.
	public var upperLimit: NSDecimalNumber?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(data: FHIRString, dimensions: UInt, origin: Quantity, period: NSDecimalNumber) {
		self.init()
		self.data = data
		self.dimensions = dimensions
		self.origin = origin
		self.period = period
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["data"] {
			presentKeys.insert("data")
			if let val = exist as? String {
				self.data = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "data", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "data"))
		}
		if let exist = json["dimensions"] {
			presentKeys.insert("dimensions")
			if let val = exist as? UInt {
				self.dimensions = val
			}
			else {
				errors.append(FHIRValidationError(key: "dimensions", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "dimensions"))
		}
		if let exist = json["factor"] {
			presentKeys.insert("factor")
			if let val = exist as? NSNumber {
				self.factor = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "factor", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["lowerLimit"] {
			presentKeys.insert("lowerLimit")
			if let val = exist as? NSNumber {
				self.lowerLimit = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lowerLimit", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["origin"] {
			presentKeys.insert("origin")
			if let val = exist as? FHIRJSON {
				do {
					self.origin = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "origin"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "origin", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "origin"))
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? NSNumber {
				self.period = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "period"))
		}
		if let exist = json["upperLimit"] {
			presentKeys.insert("upperLimit")
			if let val = exist as? NSNumber {
				self.upperLimit = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "upperLimit", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let data = self.data {
			json["data"] = data.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "data"))
		}
		if let dimensions = self.dimensions {
			json["dimensions"] = dimensions.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "dimensions"))
		}
		if let factor = self.factor {
			json["factor"] = factor.asJSON()
		}
		if let lowerLimit = self.lowerLimit {
			json["lowerLimit"] = lowerLimit.asJSON()
		}
		if let origin = self.origin {
			json["origin"] = origin.asJSON(errors: &errors)
		}
		else {
			errors.append(FHIRValidationError(missing: "origin"))
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "period"))
		}
		if let upperLimit = self.upperLimit {
			json["upperLimit"] = upperLimit.asJSON()
		}
		
		return json
	}
}

