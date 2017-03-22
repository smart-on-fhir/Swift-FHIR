//
//  DeviceRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/DeviceRequest) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Medical device request.

Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external
assistive device, such as a walker.
*/
open class DeviceRequest: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceRequest" }
	}
	
	/// When recorded.
	public var authoredOn: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Device requested.
	public var codeCodeableConcept: CodeableConcept?
	
	/// Device requested.
	public var codeReference: Reference?
	
	/// Encounter or Episode motivating request.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// Identifier of composite request.
	public var groupIdentifier: Identifier?
	
	/// External Request identifier.
	public var identifier: [Identifier]?
	
	/// proposal | plan | original-order | encoded | reflex-order.
	public var intent: CodeableConcept?
	
	/// Notes or comments.
	public var note: [Annotation]?
	
	/// Desired time or schedule for use.
	public var occurrenceDateTime: DateTime?
	
	/// Desired time or schedule for use.
	public var occurrencePeriod: Period?
	
	/// Desired time or schedule for use.
	public var occurrenceTiming: Timing?
	
	/// Requested Filler.
	public var performer: Reference?
	
	/// Fille role.
	public var performerType: CodeableConcept?
	
	/// What request replaces.
	public var priorRequest: [Reference]?
	
	/// None
	public var priority: RequestPriority?
	
	/// Coded Reason for request.
	public var reasonCode: [CodeableConcept]?
	
	/// Linked Reason for request.
	public var reasonReference: [Reference]?
	
	/// Request provenance.
	public var relevantHistory: [Reference]?
	
	/// Who/what is requesting diagnostics.
	public var requester: DeviceRequestRequester?
	
	/// The status of the request.
	public var status: RequestStatus?
	
	/// Focus of request.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Any, intent: CodeableConcept, subject: Reference) {
		self.init()
		if let value = code as? Reference {
			self.codeReference = value
		}
		else if let value = code as? CodeableConcept {
			self.codeCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(type(of: code))” for property “\(code)” is invalid, ignoring")
		}
		self.intent = intent
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authoredOn = createInstance(type: DateTime.self, for: "authoredOn", in: json, context: &instCtx, owner: self) ?? authoredOn
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		codeCodeableConcept = createInstance(type: CodeableConcept.self, for: "codeCodeableConcept", in: json, context: &instCtx, owner: self) ?? codeCodeableConcept
		codeReference = createInstance(type: Reference.self, for: "codeReference", in: json, context: &instCtx, owner: self) ?? codeReference
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		definition = createInstances(of: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		groupIdentifier = createInstance(type: Identifier.self, for: "groupIdentifier", in: json, context: &instCtx, owner: self) ?? groupIdentifier
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		intent = createInstance(type: CodeableConcept.self, for: "intent", in: json, context: &instCtx, owner: self) ?? intent
		if nil == intent && !instCtx.containsKey("intent") {
			instCtx.addError(FHIRValidationError(missing: "intent"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		occurrenceDateTime = createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, context: &instCtx, owner: self) ?? occurrenceDateTime
		occurrencePeriod = createInstance(type: Period.self, for: "occurrencePeriod", in: json, context: &instCtx, owner: self) ?? occurrencePeriod
		occurrenceTiming = createInstance(type: Timing.self, for: "occurrenceTiming", in: json, context: &instCtx, owner: self) ?? occurrenceTiming
		performer = createInstance(type: Reference.self, for: "performer", in: json, context: &instCtx, owner: self) ?? performer
		performerType = createInstance(type: CodeableConcept.self, for: "performerType", in: json, context: &instCtx, owner: self) ?? performerType
		priorRequest = createInstances(of: Reference.self, for: "priorRequest", in: json, context: &instCtx, owner: self) ?? priorRequest
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		relevantHistory = createInstances(of: Reference.self, for: "relevantHistory", in: json, context: &instCtx, owner: self) ?? relevantHistory
		requester = createInstance(type: DeviceRequestRequester.self, for: "requester", in: json, context: &instCtx, owner: self) ?? requester
		status = createEnum(type: RequestStatus.self, for: "status", in: json, context: &instCtx) ?? status
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		if nil == subject && !instCtx.containsKey("subject") {
			instCtx.addError(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = createInstances(of: Reference.self, for: "supportingInfo", in: json, context: &instCtx, owner: self) ?? supportingInfo
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.codeReference && nil == self.codeCodeableConcept {
			instCtx.addError(FHIRValidationError(missing: "code[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		self.codeCodeableConcept?.decorate(json: &json, withKey: "codeCodeableConcept", errors: &errors)
		self.codeReference?.decorate(json: &json, withKey: "codeReference", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.intent?.decorate(json: &json, withKey: "intent", errors: &errors)
		if nil == self.intent {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		self.occurrenceTiming?.decorate(json: &json, withKey: "occurrenceTiming", errors: &errors)
		self.performer?.decorate(json: &json, withKey: "performer", errors: &errors)
		self.performerType?.decorate(json: &json, withKey: "performerType", errors: &errors)
		arrayDecorate(json: &json, withKey: "priorRequest", using: self.priorRequest, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.codeReference && nil == self.codeCodeableConcept {
			errors.append(FHIRValidationError(missing: "code[x]"))
		}
	}
}


/**
Who/what is requesting diagnostics.

The individual who initiated the request and has responsibility for its activation.
*/
open class DeviceRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceRequestRequester" }
	}
	
	/// Individual making the request.
	public var agent: Reference?
	
	/// Organization agent is acting for.
	public var onBehalfOf: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(agent: Reference) {
		self.init()
		self.agent = agent
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		agent = createInstance(type: Reference.self, for: "agent", in: json, context: &instCtx, owner: self) ?? agent
		if nil == agent && !instCtx.containsKey("agent") {
			instCtx.addError(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.agent?.decorate(json: &json, withKey: "agent", errors: &errors)
		if nil == self.agent {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
	}
}

