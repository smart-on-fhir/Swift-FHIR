//
//  TriggerDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/TriggerDefinition) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Defines an expected trigger for a module.

A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by
the type element.
*/
open class TriggerDefinition: Element {
	override open class var resourceType: String {
		get { return "TriggerDefinition" }
	}
	
	/// Whether the event triggers (boolean expression).
	public var condition: Expression?
	
	/// Triggering data of the event (multiple = 'and').
	public var data: [DataRequirement]?
	
	/// Name or URI that identifies the event.
	public var name: FHIRString?
	
	/// Timing of the event.
	public var timingDate: FHIRDate?
	
	/// Timing of the event.
	public var timingDateTime: DateTime?
	
	/// Timing of the event.
	public var timingReference: Reference?
	
	/// Timing of the event.
	public var timingTiming: Timing?
	
	/// The type of triggering event.
	public var type: TriggerType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: TriggerType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		condition = createInstance(type: Expression.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		data = createInstances(of: DataRequirement.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		timingDate = createInstance(type: FHIRDate.self, for: "timingDate", in: json, context: &instCtx, owner: self) ?? timingDate
		timingDateTime = createInstance(type: DateTime.self, for: "timingDateTime", in: json, context: &instCtx, owner: self) ?? timingDateTime
		timingReference = createInstance(type: Reference.self, for: "timingReference", in: json, context: &instCtx, owner: self) ?? timingReference
		timingTiming = createInstance(type: Timing.self, for: "timingTiming", in: json, context: &instCtx, owner: self) ?? timingTiming
		type = createEnum(type: TriggerType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.condition?.decorate(json: &json, withKey: "condition", errors: &errors)
		arrayDecorate(json: &json, withKey: "data", using: self.data, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.timingDate?.decorate(json: &json, withKey: "timingDate", errors: &errors)
		self.timingDateTime?.decorate(json: &json, withKey: "timingDateTime", errors: &errors)
		self.timingReference?.decorate(json: &json, withKey: "timingReference", errors: &errors)
		self.timingTiming?.decorate(json: &json, withKey: "timingTiming", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

