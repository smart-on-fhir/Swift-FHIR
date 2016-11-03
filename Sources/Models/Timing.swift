//
//  Timing.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Timing) on 2016-11-03.
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
open class Timing: Element {
	override open class var resourceType: String {
		get { return "Timing" }
	}
	
	/// BID | TID | QID | AM | PM | QD | QOD | Q4H | Q6H +.
	public var code: CodeableConcept?
	
	/// When the event occurs.
	public var event: [DateTime]?
	
	/// When the event is to occur.
	public var repeat_fhir: TimingRepeat?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["event"] {
			presentKeys.insert("event")
			if let val = exist as? [String] {
				self.event = DateTime.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "event", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["repeat"] {
			presentKeys.insert("repeat")
			if let val = exist as? FHIRJSON {
				do {
					self.repeat_fhir = try TimingRepeat(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "repeat"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "repeat", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let event = self.event {
			var arr = [Any]()
			for val in event {
				arr.append(val.asJSON())
			}
			json["event"] = arr
		}
		if let repeat_fhir = self.repeat_fhir {
			json["repeat"] = repeat_fhir.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  When the event is to occur.
 *
 *  A set of rules that describe when the event should occur.
 */
open class TimingRepeat: Element {
	override open class var resourceType: String {
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["boundsDuration"] {
			presentKeys.insert("boundsDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.boundsDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "boundsDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "boundsDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["boundsPeriod"] {
			presentKeys.insert("boundsPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.boundsPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "boundsPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "boundsPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["boundsRange"] {
			presentKeys.insert("boundsRange")
			if let val = exist as? FHIRJSON {
				do {
					self.boundsRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "boundsRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "boundsRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["count"] {
			presentKeys.insert("count")
			if let val = exist as? Int {
				self.count = val
			}
			else {
				errors.append(FHIRValidationError(key: "count", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["countMax"] {
			presentKeys.insert("countMax")
			if let val = exist as? Int {
				self.countMax = val
			}
			else {
				errors.append(FHIRValidationError(key: "countMax", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["duration"] {
			presentKeys.insert("duration")
			if let val = exist as? NSNumber {
				self.duration = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "duration", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["durationMax"] {
			presentKeys.insert("durationMax")
			if let val = exist as? NSNumber {
				self.durationMax = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "durationMax", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["durationUnit"] {
			presentKeys.insert("durationUnit")
			if let val = exist as? String {
				self.durationUnit = val
			}
			else {
				errors.append(FHIRValidationError(key: "durationUnit", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["frequency"] {
			presentKeys.insert("frequency")
			if let val = exist as? Int {
				self.frequency = val
			}
			else {
				errors.append(FHIRValidationError(key: "frequency", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["frequencyMax"] {
			presentKeys.insert("frequencyMax")
			if let val = exist as? Int {
				self.frequencyMax = val
			}
			else {
				errors.append(FHIRValidationError(key: "frequencyMax", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["offset"] {
			presentKeys.insert("offset")
			if let val = exist as? UInt {
				self.offset = val
			}
			else {
				errors.append(FHIRValidationError(key: "offset", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? NSNumber {
				self.period = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["periodMax"] {
			presentKeys.insert("periodMax")
			if let val = exist as? NSNumber {
				self.periodMax = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "periodMax", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["periodUnit"] {
			presentKeys.insert("periodUnit")
			if let val = exist as? String {
				self.periodUnit = val
			}
			else {
				errors.append(FHIRValidationError(key: "periodUnit", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["when"] {
			presentKeys.insert("when")
			if let val = exist as? String {
				self.when = val
			}
			else {
				errors.append(FHIRValidationError(key: "when", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let boundsDuration = self.boundsDuration {
			json["boundsDuration"] = boundsDuration.asJSON(errors: &errors)
		}
		if let boundsPeriod = self.boundsPeriod {
			json["boundsPeriod"] = boundsPeriod.asJSON(errors: &errors)
		}
		if let boundsRange = self.boundsRange {
			json["boundsRange"] = boundsRange.asJSON(errors: &errors)
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

