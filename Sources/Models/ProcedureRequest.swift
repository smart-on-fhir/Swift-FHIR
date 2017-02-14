//
//  ProcedureRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/ProcedureRequest) on 2017-02-14.
//  2017, SMART Health IT.
//

import Foundation


/**
A request for a procedure or diagnostic to be performed.

A record of a request for a diagnostic investigation service to be performed.
*/
open class ProcedureRequest: DomainResource {
	override open class var resourceType: String {
		get { return "ProcedureRequest" }
	}
	
	/// Preconditions for procedure or diagnostic.
	public var asNeededBoolean: FHIRBool?
	
	/// Preconditions for procedure or diagnostic.
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Date request signed.
	public var authoredOn: DateTime?
	
	/// What request fulfills.
	public var basedOn: [Reference]?
	
	/// Location on Body.
	public var bodySite: [CodeableConcept]?
	
	/// Classification of procedure.
	public var category: [CodeableConcept]?
	
	/// What is being requested/ordered.
	public var code: CodeableConcept?
	
	/// Encounter or Episode during which request was created.
	public var context: Reference?
	
	/// Protocol or definition.
	public var definition: [Reference]?
	
	/// True if procedure should not be performed.
	public var doNotPerform: FHIRBool?
	
	/// Identifiers assigned to this order.
	public var identifier: [Identifier]?
	
	/// Whether the request is a proposal, plan, an original order or a reflex order.
	public var intent: RequestIntent?
	
	/// Comments.
	public var note: [Annotation]?
	
	/// When procedure should occur.
	public var occurrenceDateTime: DateTime?
	
	/// When procedure should occur.
	public var occurrencePeriod: Period?
	
	/// When procedure should occur.
	public var occurrenceTiming: Timing?
	
	/// Requested perfomer.
	public var performer: Reference?
	
	/// Performer role.
	public var performerType: CodeableConcept?
	
	/// Indicates how quickly the ProcedureRequest should be addressed with respect to other requests.
	public var priority: RequestPriority?
	
	/// Explanation/Justification for test.
	public var reasonCode: [CodeableConcept]?
	
	/// Explanation/Justification for test.
	public var reasonReference: [Reference]?
	
	/// Request provenance.
	public var relevantHistory: [Reference]?
	
	/// What request replaces.
	public var replaces: [Reference]?
	
	/// Who/what is requesting procedure or diagnostic.
	public var requester: ProcedureRequestRequester?
	
	/// Composite Request ID.
	public var requisition: Identifier?
	
	/// Procedure Samples.
	public var specimen: [Reference]?
	
	/// The status of the order.
	public var status: RequestStatus?
	
	/// Individual the service is ordered for.
	public var subject: Reference?
	
	/// Additional clinical information.
	public var supportingInfo: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept, intent: RequestIntent, status: RequestStatus, subject: Reference) {
		self.init()
		self.code = code
		self.intent = intent
		self.status = status
		self.subject = subject
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		asNeededBoolean = try createInstance(type: FHIRBool.self, for: "asNeededBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asNeededBoolean
		asNeededCodeableConcept = try createInstance(type: CodeableConcept.self, for: "asNeededCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? asNeededCodeableConcept
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		bodySite = try createInstances(of: CodeableConcept.self, for: "bodySite", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? bodySite
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		code = try createInstance(type: CodeableConcept.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		definition = try createInstances(of: Reference.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		doNotPerform = try createInstance(type: FHIRBool.self, for: "doNotPerform", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? doNotPerform
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		intent = createEnum(type: RequestIntent.self, for: "intent", in: json, presentKeys: &presentKeys, errors: &errors) ?? intent
		if nil == intent && !presentKeys.contains("intent") {
			errors.append(FHIRValidationError(missing: "intent"))
		}
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		occurrenceTiming = try createInstance(type: Timing.self, for: "occurrenceTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceTiming
		performer = try createInstance(type: Reference.self, for: "performer", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performer
		performerType = try createInstance(type: CodeableConcept.self, for: "performerType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? performerType
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		relevantHistory = try createInstances(of: Reference.self, for: "relevantHistory", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? relevantHistory
		replaces = try createInstances(of: Reference.self, for: "replaces", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? replaces
		requester = try createInstance(type: ProcedureRequestRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		requisition = try createInstance(type: Identifier.self, for: "requisition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requisition
		specimen = try createInstances(of: Reference.self, for: "specimen", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specimen
		status = createEnum(type: RequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		if nil == subject && !presentKeys.contains("subject") {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		supportingInfo = try createInstances(of: Reference.self, for: "supportingInfo", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? supportingInfo
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.asNeededBoolean?.decorate(json: &json, withKey: "asNeededBoolean", errors: &errors)
		self.asNeededCodeableConcept?.decorate(json: &json, withKey: "asNeededCodeableConcept", errors: &errors)
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "bodySite", using: self.bodySite, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		self.doNotPerform?.decorate(json: &json, withKey: "doNotPerform", errors: &errors)
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
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "relevantHistory", using: self.relevantHistory, errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.requisition?.decorate(json: &json, withKey: "requisition", errors: &errors)
		arrayDecorate(json: &json, withKey: "specimen", using: self.specimen, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		if nil == self.subject {
			errors.append(FHIRValidationError(missing: "subject"))
		}
		arrayDecorate(json: &json, withKey: "supportingInfo", using: self.supportingInfo, errors: &errors)
	}
}


/**
Who/what is requesting procedure or diagnostic.

The individual who initiated the request and has responsibility for its activation.
*/
open class ProcedureRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "ProcedureRequestRequester" }
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

