//
//  TriggerDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Defines an expected trigger for a module.

A description of a triggering event.
*/
open class TriggerDefinition: Element {
	override open class var resourceType: String {
		get { return "TriggerDefinition" }
	}
	
	/// Triggering data of the event.
	public var eventData: DataRequirement?
	
	/// Triggering event name.
	public var eventName: FHIRString?
	
	/// Timing of the event.
	public var eventTimingDate: FHIRDate?
	
	/// Timing of the event.
	public var eventTimingDateTime: DateTime?
	
	/// Timing of the event.
	public var eventTimingReference: Reference?
	
	/// Timing of the event.
	public var eventTimingTiming: Timing?
	
	/// The type of triggering event.
	public var type: TriggerType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: TriggerType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		eventData = createInstance(type: DataRequirement.self, for: "eventData", in: json, context: &instCtx, owner: self) ?? eventData
		eventName = createInstance(type: FHIRString.self, for: "eventName", in: json, context: &instCtx, owner: self) ?? eventName
		eventTimingDate = createInstance(type: FHIRDate.self, for: "eventTimingDate", in: json, context: &instCtx, owner: self) ?? eventTimingDate
		eventTimingDateTime = createInstance(type: DateTime.self, for: "eventTimingDateTime", in: json, context: &instCtx, owner: self) ?? eventTimingDateTime
		eventTimingReference = createInstance(type: Reference.self, for: "eventTimingReference", in: json, context: &instCtx, owner: self) ?? eventTimingReference
		eventTimingTiming = createInstance(type: Timing.self, for: "eventTimingTiming", in: json, context: &instCtx, owner: self) ?? eventTimingTiming
		type = createEnum(type: TriggerType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.eventData?.decorate(json: &json, withKey: "eventData", errors: &errors)
		self.eventName?.decorate(json: &json, withKey: "eventName", errors: &errors)
		self.eventTimingDate?.decorate(json: &json, withKey: "eventTimingDate", errors: &errors)
		self.eventTimingDateTime?.decorate(json: &json, withKey: "eventTimingDateTime", errors: &errors)
		self.eventTimingReference?.decorate(json: &json, withKey: "eventTimingReference", errors: &errors)
		self.eventTimingTiming?.decorate(json: &json, withKey: "eventTimingTiming", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

