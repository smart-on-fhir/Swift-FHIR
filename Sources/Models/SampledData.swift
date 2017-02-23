//
//  SampledData.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/SampledData) on 2017-02-23.
//  2017, SMART Health IT.
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
	public var dimensions: FHIRInteger?
	
	/// Multiply data by this before adding to origin.
	public var factor: FHIRDecimal?
	
	/// Lower limit of detection.
	public var lowerLimit: FHIRDecimal?
	
	/// Zero value and units.
	public var origin: Quantity?
	
	/// Number of milliseconds between samples.
	public var period: FHIRDecimal?
	
	/// Upper limit of detection.
	public var upperLimit: FHIRDecimal?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(data: FHIRString, dimensions: FHIRInteger, origin: Quantity, period: FHIRDecimal) {
		self.init()
		self.data = data
		self.dimensions = dimensions
		self.origin = origin
		self.period = period
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		data = try createInstance(type: FHIRString.self, for: "data", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? data
		if nil == data && !presentKeys.contains("data") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "data"))
		}
		dimensions = try createInstance(type: FHIRInteger.self, for: "dimensions", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? dimensions
		if nil == dimensions && !presentKeys.contains("dimensions") {
			errors.append(FHIRValidationError(missing: "dimensions"))
		}
		factor = try createInstance(type: FHIRDecimal.self, for: "factor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? factor
		lowerLimit = try createInstance(type: FHIRDecimal.self, for: "lowerLimit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lowerLimit
		origin = try createInstance(type: Quantity.self, for: "origin", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? origin
		if nil == origin && !presentKeys.contains("origin") {
			errors.append(FHIRValidationError(missing: "origin"))
		}
		period = try createInstance(type: FHIRDecimal.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		if nil == period && !presentKeys.contains("period") {
			errors.append(FHIRValidationError(missing: "period"))
		}
		upperLimit = try createInstance(type: FHIRDecimal.self, for: "upperLimit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? upperLimit
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.data?.decorate(json: &json, withKey: "data", errors: &errors)
		if nil == self.data {
			errors.append(FHIRValidationError(missing: "data"))
		}
		self.dimensions?.decorate(json: &json, withKey: "dimensions", errors: &errors)
		if nil == self.dimensions {
			errors.append(FHIRValidationError(missing: "dimensions"))
		}
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		self.lowerLimit?.decorate(json: &json, withKey: "lowerLimit", errors: &errors)
		self.origin?.decorate(json: &json, withKey: "origin", errors: &errors)
		if nil == self.origin {
			errors.append(FHIRValidationError(missing: "origin"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		if nil == self.period {
			errors.append(FHIRValidationError(missing: "period"))
		}
		self.upperLimit?.decorate(json: &json, withKey: "upperLimit", errors: &errors)
	}
}

