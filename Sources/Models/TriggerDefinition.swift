//
//  TriggerDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition) on 2018-05-03.
//  2018, SMART Health IT.
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
	
	/// Whether the event triggers.
	public var condition: TriggerDefinitionCondition?
	
	/// Triggering data of the event.
	public var data: DataRequirement?
	
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
		
		condition = createInstance(type: TriggerDefinitionCondition.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		data = createInstance(type: DataRequirement.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
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
		self.data?.decorate(json: &json, withKey: "data", errors: &errors)
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


/**
Whether the event triggers.

A boolean-valued expression that is evaluated in the context of the container of the trigger definition and returns
whether or not the trigger fires.
*/
open class TriggerDefinitionCondition: Element {
	override open class var resourceType: String {
		get { return "TriggerDefinitionCondition" }
	}
	
	/// Natural language description of the condition.
	public var description_fhir: FHIRString?
	
	/// Boolean-valued expression.
	public var expression: FHIRString?
	
	/// text/cql | text/fhirpath | etc..
	public var language: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(expression: FHIRString, language: FHIRString) {
		self.init()
		self.expression = expression
		self.language = language
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		if nil == expression && !instCtx.containsKey("expression") {
			instCtx.addError(FHIRValidationError(missing: "expression"))
		}
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		if nil == language && !instCtx.containsKey("language") {
			instCtx.addError(FHIRValidationError(missing: "language"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		if nil == self.expression {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		if nil == self.language {
			errors.append(FHIRValidationError(missing: "language"))
		}
	}
}

