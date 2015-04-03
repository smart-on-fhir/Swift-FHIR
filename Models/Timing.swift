//
//  Timing.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Timing) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A timing schedule that specifies an event that may occur multiple times.
 *
 *  Specifies an event that may occur multiple times. Timing schedules are used to record when things are expected or
 *  requested to occur. The most common usage is in dosage instructions for medications. They are also used when
 *  planning care of various kinds.
 */
public class Timing: FHIRElement
{
	override public class var resourceName: String {
		get { return "Timing" }
	}
	
	/// BID | TID | QID | AM | PM +
	public var code: CodeableConcept?
	
	/// When the event occurs
	public var event: [DateTime]?
	
	/// When the event is to occur
	public var repeat: TimingRepeat?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["event"] as? [String] {
				self.event = DateTime.from(val)
			}
			if let val = js["repeat"] as? FHIRJSON {
				self.repeat = TimingRepeat(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let event = self.event {
			var arr = [AnyObject]()
			for val in event {
				arr.append(val.asJSON())
			}
			json["event"] = arr
		}
		if let repeat = self.repeat {
			json["repeat"] = repeat.asJSON()
		}
		
		return json
	}
}


/**
 *  When the event is to occur.
 *
 *  A set of rules that describe when the event should occur.
 */
public class TimingRepeat: FHIRElement
{
	override public class var resourceName: String {
		get { return "TimingRepeat" }
	}
	
	/// Start and/or end limits
	public var bounds: Period?
	
	/// Number of times to repeat
	public var count: Int?
	
	/// How long when it happens
	public var duration: NSDecimalNumber?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var durationUnits: String?
	
	/// Event occurs frequency times per duration
	public var frequency: Int?
	
	/// Event occurs frequency times per duration
	public var frequencyMax: Int?
	
	/// Event occurs frequency times per period
	public var period: NSDecimalNumber?
	
	/// Upper limit of period (3-4 hours)
	public var periodMax: NSDecimalNumber?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM)
	public var periodUnits: String?
	
	/// Regular life events the event is tied to
	public var when: String?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["bounds"] as? FHIRJSON {
				self.bounds = Period(json: val, owner: self)
			}
			if let val = js["count"] as? Int {
				self.count = val
			}
			if let val = js["duration"] as? NSNumber {
				self.duration = NSDecimalNumber(json: val)
			}
			if let val = js["durationUnits"] as? String {
				self.durationUnits = val
			}
			if let val = js["frequency"] as? Int {
				self.frequency = val
			}
			if let val = js["frequencyMax"] as? Int {
				self.frequencyMax = val
			}
			if let val = js["period"] as? NSNumber {
				self.period = NSDecimalNumber(json: val)
			}
			if let val = js["periodMax"] as? NSNumber {
				self.periodMax = NSDecimalNumber(json: val)
			}
			if let val = js["periodUnits"] as? String {
				self.periodUnits = val
			}
			if let val = js["when"] as? String {
				self.when = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bounds = self.bounds {
			json["bounds"] = bounds.asJSON()
		}
		if let count = self.count {
			json["count"] = count.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON()
		}
		if let durationUnits = self.durationUnits {
			json["durationUnits"] = durationUnits.asJSON()
		}
		if let frequency = self.frequency {
			json["frequency"] = frequency.asJSON()
		}
		if let frequencyMax = self.frequencyMax {
			json["frequencyMax"] = frequencyMax.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let periodMax = self.periodMax {
			json["periodMax"] = periodMax.asJSON()
		}
		if let periodUnits = self.periodUnits {
			json["periodUnits"] = periodUnits.asJSON()
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		
		return json
	}
}

