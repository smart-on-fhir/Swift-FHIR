//
//  Schedule.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A schedule that specifies an event that may occur multiple times.
 */
class Schedule: FHIRElement
{
	override var resourceName: String {
		get { return "Schedule" }
	}

	/*! When the event occurs */
	var event: Period[]?

	/*! Only if there is none or one event */
	var repeat: ScheduleRepeat?

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
	var duration:  NSDecimalNumber

	/*! s | min | h | d | wk | mo | a - unit of time (UCUM) */
	var units: String

	/*! Number of times to repeat */
	var count: Int?

	/*! When to stop repeats */
	var end: NSDate?

	init(duration:  NSDecimalNumber, units: String) {
		self.duration = duration
		self.units = units
	}
}
