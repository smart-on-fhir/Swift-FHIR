//
//  Schedule.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A schedule that specifies an event that may occur multiple times.
 */
class Schedule: FHIRElement
{
	override class var resourceName: String {
		get { return "Schedule" }
	}
	
	/*! When the event occurs */
	var event: Period[]?
	
	/*! Only if there is none or one event */
	var repeat: ScheduleRepeat?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["event"] as? Array<NSDictionary> {
				self.event = Period.from(val) as? Period[]
			}
			if let val = js["repeat"] as? NSDictionary {
				self.repeat = ScheduleRepeat(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Only if there is none or one event.
 *
 *  Identifies a repeating pattern to the intended time periods.
 */
class ScheduleRepeat: FHIRElement
{	
	/*! Event occurs frequency times per duration */
	var frequency: Int?
	
	/*! HS | WAKE | AC | ACM | ACD | ACV | PC | PCM | PCD | PCV - common life events */
	var when: String?
	
	/*! Repeating or event-related duration */
	var duration: NSDecimalNumber?
	
	/*! s | min | h | d | wk | mo | a - unit of time (UCUM) */
	var units: String?
	
	/*! Number of times to repeat */
	var count: Int?
	
	/*! When to stop repeats */
	var end: NSDate?
	
	convenience init(duration: NSDecimalNumber?, units: String?) {
		self.init(json: nil)
		if duration {
			self.duration = duration
		}
		if units {
			self.units = units
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["frequency"] as? Int {
				self.frequency = val
			}
			if let val = js["when"] as? String {
				self.when = val
			}
			if let val = js["duration"] as? String {
				self.duration = NSDecimalNumber(json: val)
			}
			if let val = js["units"] as? String {
				self.units = val
			}
			if let val = js["count"] as? Int {
				self.count = val
			}
			if let val = js["end"] as? String {
				self.end = NSDate(json: val)
			}
		}
		super.init(json: json)
	}
}
