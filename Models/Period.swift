//
//  Period.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (Period.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["end"] as? String {
				self.end = DateTime(string: val)
			}
			if let val = js["start"] as? String {
				self.start = DateTime(string: val)
			}
		}
	}
}

