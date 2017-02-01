//
//  Timing.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Timing) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A timing schedule that specifies an event that may occur multiple times.

Specifies an event that may occur multiple times. Timing schedules are used to record when things are expected or
requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning
care of various kinds.
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
		
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		event = try createInstances(of: DateTime.self, for: "event", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? event
		repeat_fhir = try createInstance(type: TimingRepeat.self, for: "repeat", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? repeat_fhir
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		arrayDecorate(json: &json, withKey: "event", using: self.event, errors: &errors)
		self.repeat_fhir?.decorate(json: &json, withKey: "repeat", errors: &errors)
	}
}


/**
When the event is to occur.

A set of rules that describe when the event should occur.
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
	public var count: FHIRInteger?
	
	/// Maximum number of times to repeat.
	public var countMax: FHIRInteger?
	
	/// If one or more days of week is provided, then the action happens only on the specified day(s).
	public var dayOfWeek: [DaysOfWeek]?
	
	/// How long when it happens.
	public var duration: FHIRDecimal?
	
	/// How long when it happens (Max).
	public var durationMax: FHIRDecimal?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM).
	public var durationUnit: FHIRString?
	
	/// Event occurs frequency times per period.
	public var frequency: FHIRInteger?
	
	/// Event occurs up to frequencyMax times per period.
	public var frequencyMax: FHIRInteger?
	
	/// Minutes from event (before or after).
	public var offset: FHIRInteger?
	
	/// Event occurs frequency times per period.
	public var period: FHIRDecimal?
	
	/// Upper limit of period (3-4 hours).
	public var periodMax: FHIRDecimal?
	
	/// s | min | h | d | wk | mo | a - unit of time (UCUM).
	public var periodUnit: FHIRString?
	
	/// Time of day for action.
	public var timeOfDay: [FHIRTime]?
	
	/// Regular life events the event is tied to.
	public var when: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		boundsDuration = try createInstance(type: Duration.self, for: "boundsDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? boundsDuration
		boundsPeriod = try createInstance(type: Period.self, for: "boundsPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? boundsPeriod
		boundsRange = try createInstance(type: Range.self, for: "boundsRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? boundsRange
		count = try createInstance(type: FHIRInteger.self, for: "count", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? count
		countMax = try createInstance(type: FHIRInteger.self, for: "countMax", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? countMax
		dayOfWeek = createEnums(of: DaysOfWeek.self, for: "dayOfWeek", in: json, presentKeys: &presentKeys, errors: &errors) ?? dayOfWeek
		duration = try createInstance(type: FHIRDecimal.self, for: "duration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? duration
		durationMax = try createInstance(type: FHIRDecimal.self, for: "durationMax", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? durationMax
		durationUnit = try createInstance(type: FHIRString.self, for: "durationUnit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? durationUnit
		frequency = try createInstance(type: FHIRInteger.self, for: "frequency", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? frequency
		frequencyMax = try createInstance(type: FHIRInteger.self, for: "frequencyMax", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? frequencyMax
		offset = try createInstance(type: FHIRInteger.self, for: "offset", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? offset
		period = try createInstance(type: FHIRDecimal.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		periodMax = try createInstance(type: FHIRDecimal.self, for: "periodMax", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? periodMax
		periodUnit = try createInstance(type: FHIRString.self, for: "periodUnit", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? periodUnit
		timeOfDay = try createInstances(of: FHIRTime.self, for: "timeOfDay", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? timeOfDay
		when = try createInstance(type: FHIRString.self, for: "when", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? when
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.boundsDuration?.decorate(json: &json, withKey: "boundsDuration", errors: &errors)
		self.boundsPeriod?.decorate(json: &json, withKey: "boundsPeriod", errors: &errors)
		self.boundsRange?.decorate(json: &json, withKey: "boundsRange", errors: &errors)
		self.count?.decorate(json: &json, withKey: "count", errors: &errors)
		self.countMax?.decorate(json: &json, withKey: "countMax", errors: &errors)
		arrayDecorate(json: &json, withKey: "dayOfWeek", using: self.dayOfWeek, errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.durationMax?.decorate(json: &json, withKey: "durationMax", errors: &errors)
		self.durationUnit?.decorate(json: &json, withKey: "durationUnit", errors: &errors)
		self.frequency?.decorate(json: &json, withKey: "frequency", errors: &errors)
		self.frequencyMax?.decorate(json: &json, withKey: "frequencyMax", errors: &errors)
		self.offset?.decorate(json: &json, withKey: "offset", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.periodMax?.decorate(json: &json, withKey: "periodMax", errors: &errors)
		self.periodUnit?.decorate(json: &json, withKey: "periodUnit", errors: &errors)
		arrayDecorate(json: &json, withKey: "timeOfDay", using: self.timeOfDay, errors: &errors)
		self.when?.decorate(json: &json, withKey: "when", errors: &errors)
	}
}

