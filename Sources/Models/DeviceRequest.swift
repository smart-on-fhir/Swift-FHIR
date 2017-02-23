//
//  DeviceRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/DeviceRequest) on 2017-02-23.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		codeCodeableConcept = try createInstance(type: CodeableConcept.self, for: "codeCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? codeCodeableConcept
		codeReference = try createInstance(type: Reference.self, for: "codeReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? codeReference
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		groupIdentifier = try createInstance(type: Identifier.self, for: "groupIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? groupIdentifier
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		intent = try createInstance(type: CodeableConcept.self, for: "intent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? intent
		if nil == intent && !presentKeys.contains("intent") {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		occurrenceTiming = try createInstance(type: Timing.self, for: "occurrenceTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceTiming
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		performerType = try createInstance(type: CodeableConcept.self, for: "performerType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performerType
		priorRequest = try createInstances(of: Reference.self, for: "priorRequest", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priorRequest
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		relevantHistory = try createInstances(of: Reference.self, for: "relevantHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relevantHistory
		requester = try createInstance(type: DeviceRequestRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		status = createEnum(type: RequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = try createInstances(of: Reference.self, for: "supportingInfo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInfo
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.codeReference && nil == self.codeCodeableConcept {
			errors.append(FHIRValidationError(missing: "code[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		agent = try createInstance(type: Reference.self, for: "agent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? agent
		if nil == agent && !presentKeys.contains("agent") {
			errors.append(FHIRValidationError(missing: "agent"))
		}
		onBehalfOf = try createInstance(type: Reference.self, for: "onBehalfOf", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onBehalfOf
		
		return errors.isEmpty ? nil : errors
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

