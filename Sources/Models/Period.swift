//
//  Period.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Period) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Time range defined by start and end date/time.
 *
 *  A time period defined by a start and end date and optionally time.
 */
public class Period: Element {
	override public class var resourceType: String {
		get { return "Period" }
	}
	
	/// End time with inclusive boundary, if not ongoing.
	public var end: DateTime?
	
	/// Starting time with inclusive boundary.
	public var start: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? String {
					self.end = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? String {
					self.start = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		
		return json
	}
}

