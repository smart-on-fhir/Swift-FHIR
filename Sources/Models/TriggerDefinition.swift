//
//  TriggerDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition) on 2017-02-23.
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
	
	/// Name of the event.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		eventData = try createInstance(type: DataRequirement.self, for: "eventData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventData
		eventName = try createInstance(type: FHIRString.self, for: "eventName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventName
		eventTimingDate = try createInstance(type: FHIRDate.self, for: "eventTimingDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventTimingDate
		eventTimingDateTime = try createInstance(type: DateTime.self, for: "eventTimingDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventTimingDateTime
		eventTimingReference = try createInstance(type: Reference.self, for: "eventTimingReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventTimingReference
		eventTimingTiming = try createInstance(type: Timing.self, for: "eventTimingTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? eventTimingTiming
		type = createEnum(type: TriggerType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
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

