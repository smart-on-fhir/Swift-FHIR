//
//  Period.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Time range defined by start and end date/time.
 */
class Period: FHIRElement
{
	override class var resourceName: String {
		get { return "Period" }
	}
	
	/*! Starting time with inclusive boundary */
	var start: NSDate?
	
	/*! End time with inclusive boundary, if not ongoing */
	var end: NSDate?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["start"] as? String {
				self.start = NSDate(json: val)
			}
			if let val = js["end"] as? String {
				self.end = NSDate(json: val)
			}
		}
		super.init(json: json)
	}
}
