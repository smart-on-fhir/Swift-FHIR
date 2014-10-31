//
//  Schedule.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (type-Schedule.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A schedule that specifies an event that may occur multiple times.
 */
public class Schedule: FHIRElement
{
	override public class var resourceName: String {
		get { return "Schedule" }
	}
	
	/// When the event occurs
	public var event: [Period]?
	
	/// Only if there is none or one event
	public var repeat: ScheduleRepeat?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? [NSDictionary] {
				self.event = Period.from(val) as? [Period]
			}
			if let val = js["repeat"] as? NSDictionary {
				self.repeat = ScheduleRepeat(json: val)
			}
		}
	}
}


/**
 *  Only if there is none or one event.
 *
 *  Identifies a repeating pattern to the intended time periods.
 */
public class ScheduleRepeat: FHIRElement
{	
	/// Number of times to repeat
	public var count: Int?
	
	/// Repeating or event-related duration
	public var duration: NSDecimalNumber?
	
	/// When to stop repeats
	public var end: NSDate?
	
	/// Event occurs frequency times per duration
	public var frequency: Int?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var units: String?
	
	/// HS | WAKE | AC | ACM | ACD | ACV | PC | PCM | PCD | PCV - common life events
	public var when: String?
	
	public convenience init(duration: NSDecimalNumber?, units: String?) {
		self.init(json: nil)
		if nil != duration {
			self.duration = duration
		}
		if nil != units {
			self.units = units
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["count"] as? Int {
				self.count = val
			}
			if let val = js["duration"] as? Double {
				self.duration = NSDecimalNumber(json: val)
			}
			if let val = js["end"] as? String {
				self.end = NSDate(json: val)
			}
			if let val = js["frequency"] as? Int {
				self.frequency = val
			}
			if let val = js["units"] as? String {
				self.units = val
			}
			if let val = js["when"] as? String {
				self.when = val
			}
		}
	}
}

