//
//  Period.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Period) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Time range defined by start and end date/time.
 *
 *  A time period defined by a start and end date and optionally time.
 */
public class Period: FHIRElement
{
	override public class var resourceName: String {
		get { return "Period" }
	}
	
	/// End time with inclusive boundary, if not ongoing
	public var end: DateTime?
	
	/// Starting time with inclusive boundary
	public var start: DateTime?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["end"] {
				presentKeys.insert("end")
				if let val = exist as? String {
					self.end = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "end", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["start"] {
				presentKeys.insert("start")
				if let val = exist as? String {
					self.start = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "start", wants: String.self, has: exist.dynamicType))
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

