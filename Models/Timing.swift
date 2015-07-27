//
//  Timing.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Timing) on 2015-04-23.
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
	public var repeat_fhir: TimingRepeat?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["event"] {
				presentKeys.addObject("event")
				if let val = exist as? [String] {
					self.event = DateTime.from(val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"event\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["repeat"] {
				presentKeys.addObject("repeat")
				if let val = exist as? FHIRJSON {
					self.repeat_fhir = TimingRepeat(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"repeat\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["bounds"] {
				presentKeys.addObject("bounds")
				if let val = exist as? FHIRJSON {
					self.bounds = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bounds\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["count"] {
				presentKeys.addObject("count")
				if let val = exist as? Int {
					self.count = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"count\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["duration"] {
				presentKeys.addObject("duration")
				if let val = exist as? NSNumber {
					self.duration = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"duration\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["durationUnits"] {
				presentKeys.addObject("durationUnits")
				if let val = exist as? String {
					self.durationUnits = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"durationUnits\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["frequency"] {
				presentKeys.addObject("frequency")
				if let val = exist as? Int {
					self.frequency = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"frequency\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["frequencyMax"] {
				presentKeys.addObject("frequencyMax")
				if let val = exist as? Int {
					self.frequencyMax = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"frequencyMax\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? NSNumber {
					self.period = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["periodMax"] {
				presentKeys.addObject("periodMax")
				if let val = exist as? NSNumber {
					self.periodMax = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"periodMax\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["periodUnits"] {
				presentKeys.addObject("periodUnits")
				if let val = exist as? String {
					self.periodUnits = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"periodUnits\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["when"] {
				presentKeys.addObject("when")
				if let val = exist as? String {
					self.when = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"when\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

