//
//  Period.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Period) on 2016-11-04.
//  2016, SMART Health IT.
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
		if let exist = json["end"] {
			presentKeys.insert("end")
			if let val = exist as? String {
				self.end = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "end", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["start"] {
			presentKeys.insert("start")
			if let val = exist as? String {
				self.start = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "start", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}

