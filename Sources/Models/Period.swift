//
//  Period.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Period) on 2017-02-01.
//  2017, SMART Health IT.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		end = try createInstance(type: DateTime.self, for: "end", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? end
		start = try createInstance(type: DateTime.self, for: "start", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? start
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.end?.decorate(json: &json, withKey: "end", errors: &errors)
		self.start?.decorate(json: &json, withKey: "start", errors: &errors)
	}
}

