//
//  Timing.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Timing) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A timing schedule that specifies an event that may occur multiple times.

Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected
or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning
care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		event = createInstances(of: DateTime.self, for: "event", in: json, context: &instCtx, owner: self) ?? event
		repeat_fhir = createInstance(type: TimingRepeat.self, for: "repeat", in: json, context: &instCtx, owner: self) ?? repeat_fhir
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

A set of rules that describe when the event is scheduled.
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
	public var when: [FHIRString]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		boundsDuration = createInstance(type: Duration.self, for: "boundsDuration", in: json, context: &instCtx, owner: self) ?? boundsDuration
		boundsPeriod = createInstance(type: Period.self, for: "boundsPeriod", in: json, context: &instCtx, owner: self) ?? boundsPeriod
		boundsRange = createInstance(type: Range.self, for: "boundsRange", in: json, context: &instCtx, owner: self) ?? boundsRange
		count = createInstance(type: FHIRInteger.self, for: "count", in: json, context: &instCtx, owner: self) ?? count
		countMax = createInstance(type: FHIRInteger.self, for: "countMax", in: json, context: &instCtx, owner: self) ?? countMax
		dayOfWeek = createEnums(of: DaysOfWeek.self, for: "dayOfWeek", in: json, context: &instCtx) ?? dayOfWeek
		duration = createInstance(type: FHIRDecimal.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		durationMax = createInstance(type: FHIRDecimal.self, for: "durationMax", in: json, context: &instCtx, owner: self) ?? durationMax
		durationUnit = createInstance(type: FHIRString.self, for: "durationUnit", in: json, context: &instCtx, owner: self) ?? durationUnit
		frequency = createInstance(type: FHIRInteger.self, for: "frequency", in: json, context: &instCtx, owner: self) ?? frequency
		frequencyMax = createInstance(type: FHIRInteger.self, for: "frequencyMax", in: json, context: &instCtx, owner: self) ?? frequencyMax
		offset = createInstance(type: FHIRInteger.self, for: "offset", in: json, context: &instCtx, owner: self) ?? offset
		period = createInstance(type: FHIRDecimal.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
		periodMax = createInstance(type: FHIRDecimal.self, for: "periodMax", in: json, context: &instCtx, owner: self) ?? periodMax
		periodUnit = createInstance(type: FHIRString.self, for: "periodUnit", in: json, context: &instCtx, owner: self) ?? periodUnit
		timeOfDay = createInstances(of: FHIRTime.self, for: "timeOfDay", in: json, context: &instCtx, owner: self) ?? timeOfDay
		when = createInstances(of: FHIRString.self, for: "when", in: json, context: &instCtx, owner: self) ?? when
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
		arrayDecorate(json: &json, withKey: "when", using: self.when, errors: &errors)
	}
}

