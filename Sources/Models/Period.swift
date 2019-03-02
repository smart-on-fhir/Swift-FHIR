//
//  Period.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Period) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Time range defined by start and end date/time.

A time period defined by a start and end date and optionally time.
*/
open class Period: Element {
	override open class var resourceType: String {
		get { return "Period" }
	}
	
	/// End time with inclusive boundary, if not ongoing.
	public var end: DateTime?
	
	/// Starting time with inclusive boundary.
	public var start: DateTime?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		end = createInstance(type: DateTime.self, for: "end", in: json, context: &instCtx, owner: self) ?? end
		start = createInstance(type: DateTime.self, for: "start", in: json, context: &instCtx, owner: self) ?? start
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
	}
}

