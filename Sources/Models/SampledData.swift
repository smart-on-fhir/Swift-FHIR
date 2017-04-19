//
//  SampledData.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/SampledData) on 2017-03-22.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		data = createInstance(type: FHIRString.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		if nil == data && !instCtx.containsKey("data") {
			instCtx.addError(FHIRValidationError(missing: "data"))
		}
		dimensions = createInstance(type: FHIRInteger.self, for: "dimensions", in: json, context: &instCtx, owner: self) ?? dimensions
		if nil == dimensions && !instCtx.containsKey("dimensions") {
			instCtx.addError(FHIRValidationError(missing: "dimensions"))
		}
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		lowerLimit = createInstance(type: FHIRDecimal.self, for: "lowerLimit", in: json, context: &instCtx, owner: self) ?? lowerLimit
		origin = createInstance(type: Quantity.self, for: "origin", in: json, context: &instCtx, owner: self) ?? origin
		if nil == origin && !instCtx.containsKey("origin") {
			instCtx.addError(FHIRValidationError(missing: "origin"))
		}
		period = createInstance(type: FHIRDecimal.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		if nil == period && !instCtx.containsKey("period") {
			instCtx.addError(FHIRValidationError(missing: "period"))
		}
		upperLimit = createInstance(type: FHIRDecimal.self, for: "upperLimit", in: json, context: &instCtx, owner: self) ?? upperLimit
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

