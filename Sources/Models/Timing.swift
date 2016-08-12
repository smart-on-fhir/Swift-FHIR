//
//  Timing.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Timing) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A timing schedule that specifies an event that may occur multiple times.
 *
 *  Specifies an event that may occur multiple times. Timing schedules are used to record when things are expected or
 *  requested to occur. The most common usage is in dosage instructions for medications. They are also used when
 *  planning care of various kinds.
 */
public class Timing: Element {
	override public class var resourceName: String {
		get { return "Timing" }
	}
	
	/// BID | TID | QID | AM | PM | QD | QOD | Q4H | Q6H +.
	public var code: CodeableConcept?
	
	/// When the event occurs.
	public var event: [DateTime]?
	
	/// When the event is to occur.
	public var repeat_fhir: TimingRepeat?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.insert("event")
				if let val = exist as? [String] {
					self.event = DateTime.from(val)
				}
				else {
					errors.append(FHIRJSONError(key: "event", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["repeat"] {
				presentKeys.insert("repeat")
				if let val = exist as? FHIRJSON {
					self.repeat_fhir = TimingRepeat(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "repeat", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
		if let repeat_fhir = self.repeat_fhir {
			json["repeat"] = repeat_fhir.asJSON()
		}
		
		return json
	}
}


/**
 *  When the event is to occur.
 *
 *  A set of rules that describe when the event should occur.
 */
public class TimingRepeat: Element {
	override public class var resourceName: String {
		get { return "TimingRepeat" }
	}
	
	/// Length/Range of lengths, or (Start and/or end) limits.
	public var boundsDuration: Duration?
	
	/// Length/Range of lengths, or (Start and/or end) limits.
	public var boundsPeriod: Period?
	
	/// Length/Range of lengths, or (Start and/or end) limits.
	public var boundsRange: Range?
	
	/// Number of times to repeat.
	public var count: Int?
	
	/// Maximum number of times to repeat.
	public var countMax: Int?
	
	/// How long when it happens.
	public var duration: NSDecimalNumber?
	
	/// How long when it happens (Max).
	public var durationMax: NSDecimalNumber?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM).
	public var durationUnit: String?
	
	/// Event occurs frequency times per period.
	public var frequency: Int?
	
	/// Event occurs up to frequencyMax times per period.
	public var frequencyMax: Int?
	
	/// Minutes from event (before or after).
	public var offset: UInt?
	
	/// Event occurs frequency times per period.
	public var period: NSDecimalNumber?
	
	/// Upper limit of period (3-4 hours).
	public var periodMax: NSDecimalNumber?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM).
	public var periodUnit: String?
	
	/// Regular life events the event is tied to.
	public var when: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["boundsDuration"] {
				presentKeys.insert("boundsDuration")
				if let val = exist as? FHIRJSON {
					self.boundsDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "boundsDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["boundsPeriod"] {
				presentKeys.insert("boundsPeriod")
				if let val = exist as? FHIRJSON {
					self.boundsPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "boundsPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["boundsRange"] {
				presentKeys.insert("boundsRange")
				if let val = exist as? FHIRJSON {
					self.boundsRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "boundsRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["count"] {
				presentKeys.insert("count")
				if let val = exist as? Int {
					self.count = val
				}
				else {
					errors.append(FHIRJSONError(key: "count", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["countMax"] {
				presentKeys.insert("countMax")
				if let val = exist as? Int {
					self.countMax = val
				}
				else {
					errors.append(FHIRJSONError(key: "countMax", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["duration"] {
				presentKeys.insert("duration")
				if let val = exist as? NSNumber {
					self.duration = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "duration", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["durationMax"] {
				presentKeys.insert("durationMax")
				if let val = exist as? NSNumber {
					self.durationMax = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "durationMax", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["durationUnit"] {
				presentKeys.insert("durationUnit")
				if let val = exist as? String {
					self.durationUnit = val
				}
				else {
					errors.append(FHIRJSONError(key: "durationUnit", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["frequency"] {
				presentKeys.insert("frequency")
				if let val = exist as? Int {
					self.frequency = val
				}
				else {
					errors.append(FHIRJSONError(key: "frequency", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["frequencyMax"] {
				presentKeys.insert("frequencyMax")
				if let val = exist as? Int {
					self.frequencyMax = val
				}
				else {
					errors.append(FHIRJSONError(key: "frequencyMax", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["offset"] {
				presentKeys.insert("offset")
				if let val = exist as? UInt {
					self.offset = val
				}
				else {
					errors.append(FHIRJSONError(key: "offset", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? NSNumber {
					self.period = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["periodMax"] {
				presentKeys.insert("periodMax")
				if let val = exist as? NSNumber {
					self.periodMax = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "periodMax", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["periodUnit"] {
				presentKeys.insert("periodUnit")
				if let val = exist as? String {
					self.periodUnit = val
				}
				else {
					errors.append(FHIRJSONError(key: "periodUnit", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["when"] {
				presentKeys.insert("when")
				if let val = exist as? String {
					self.when = val
				}
				else {
					errors.append(FHIRJSONError(key: "when", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let boundsDuration = self.boundsDuration {
			json["boundsDuration"] = boundsDuration.asJSON()
		}
		if let boundsPeriod = self.boundsPeriod {
			json["boundsPeriod"] = boundsPeriod.asJSON()
		}
		if let boundsRange = self.boundsRange {
			json["boundsRange"] = boundsRange.asJSON()
		}
		if let count = self.count {
			json["count"] = count.asJSON()
		}
		if let countMax = self.countMax {
			json["countMax"] = countMax.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON()
		}
		if let durationMax = self.durationMax {
			json["durationMax"] = durationMax.asJSON()
		}
		if let durationUnit = self.durationUnit {
			json["durationUnit"] = durationUnit.asJSON()
		}
		if let frequency = self.frequency {
			json["frequency"] = frequency.asJSON()
		}
		if let frequencyMax = self.frequencyMax {
			json["frequencyMax"] = frequencyMax.asJSON()
		}
		if let offset = self.offset {
			json["offset"] = offset.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let periodMax = self.periodMax {
			json["periodMax"] = periodMax.asJSON()
		}
		if let periodUnit = self.periodUnit {
			json["periodUnit"] = periodUnit.asJSON()
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		
		return json
	}
}

