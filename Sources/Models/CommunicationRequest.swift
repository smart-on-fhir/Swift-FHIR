//
//  CommunicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
A request for information to be sent to a receiver.

A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS
system proposes that the public health agency be notified about a reportable condition.
*/
open class CommunicationRequest: DomainResource {
	override open class var resourceType: String {
		get { return "CommunicationRequest" }
	}
	
	/// When request transitioned to being actionable.
	public var authoredOn: DateTime?
	
	/// Fulfills plan or proposal.
	public var basedOn: [Reference]?
	
	/// Message category.
	public var category: [CodeableConcept]?
	
	/// Encounter or episode leading to message.
	public var context: Reference?
	
	/// Composite request this is part of.
	public var groupIdentifier: Identifier?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// A channel of communication.
	public var medium: [CodeableConcept]?
	
	/// Comments made about communication request.
	public var note: [Annotation]?
	
	/// When scheduled.
	public var occurrenceDateTime: DateTime?
	
	/// When scheduled.
	public var occurrencePeriod: Period?
	
	/// Message payload.
	public var payload: [CommunicationRequestPayload]?
	
	/// Characterizes how quickly the proposed act must be initiated. Includes concepts such as stat, urgent, routine.
	public var priority: RequestPriority?
	
	/// Why is communication needed?.
	public var reasonCode: [CodeableConcept]?
	
	/// Why is communication needed?.
	public var reasonReference: [Reference]?
	
	/// Message recipient.
	public var recipient: [Reference]?
	
	/// Request(s) replaced by this request.
	public var replaces: [Reference]?
	
	/// Who/what is requesting service.
	public var requester: CommunicationRequestRequester?
	
	/// Message sender.
	public var sender: Reference?
	
	/// The status of the proposal or order.
	public var status: RequestStatus?
	
	/// Focus of message.
	public var subject: Reference?
	
	/// Focal resources.
	public var topic: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: RequestStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		authoredOn = try createInstance(type: DateTime.self, for: "authoredOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? authoredOn
		basedOn = try createInstances(of: Reference.self, for: "basedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? basedOn
		category = try createInstances(of: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		groupIdentifier = try createInstance(type: Identifier.self, for: "groupIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? groupIdentifier
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		medium = try createInstances(of: CodeableConcept.self, for: "medium", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medium
		note = try createInstances(of: Annotation.self, for: "note", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? note
		occurrenceDateTime = try createInstance(type: DateTime.self, for: "occurrenceDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrenceDateTime
		occurrencePeriod = try createInstance(type: Period.self, for: "occurrencePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? occurrencePeriod
		payload = try createInstances(of: CommunicationRequestPayload.self, for: "payload", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payload
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors) ?? priority
		reasonCode = try createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonCode
		reasonReference = try createInstances(of: Reference.self, for: "reasonReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reasonReference
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		replaces = try createInstances(of: Reference.self, for: "replaces", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? replaces
		requester = try createInstance(type: CommunicationRequestRequester.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		sender = try createInstance(type: Reference.self, for: "sender", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sender
		status = createEnum(type: RequestStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		topic = try createInstances(of: Reference.self, for: "topic", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? topic
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authoredOn?.decorate(json: &json, withKey: "authoredOn", errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		self.groupIdentifier?.decorate(json: &json, withKey: "groupIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "medium", using: self.medium, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.occurrenceDateTime?.decorate(json: &json, withKey: "occurrenceDateTime", errors: &errors)
		self.occurrencePeriod?.decorate(json: &json, withKey: "occurrencePeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "payload", using: self.payload, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		arrayDecorate(json: &json, withKey: "replaces", using: self.replaces, errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.sender?.decorate(json: &json, withKey: "sender", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
	}
}


/**
Message payload.

Text, attachment(s), or resource(s) to be communicated to the recipient.
*/
open class CommunicationRequestPayload: BackboneElement {
	override open class var resourceType: String {
		get { return "CommunicationRequestPayload" }
	}
	
	/// Message part content.
	public var contentAttachment: Attachment?
	
	/// Message part content.
	public var contentReference: Reference?
	
	/// Message part content.
	public var contentString: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: Any) {
		self.init()
		if let value = content as? FHIRString {
			self.contentString = value
		}
		else if let value = content as? Attachment {
			self.contentAttachment = value
		}
		else if let value = content as? Reference {
			self.contentReference = value
		}
		else {
			fhir_warn("Type “\(type(of: content))” for property “\(content)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contentAttachment = try createInstance(type: Attachment.self, for: "contentAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentAttachment
		contentReference = try createInstance(type: Reference.self, for: "contentReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentReference
		contentString = try createInstance(type: FHIRString.self, for: "contentString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.contentAttachment?.decorate(json: &json, withKey: "contentAttachment", errors: &errors)
		self.contentReference?.decorate(json: &json, withKey: "contentReference", errors: &errors)
		self.contentString?.decorate(json: &json, withKey: "contentString", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
			errors.append(FHIRValidationError(missing: "content[x]"))
		}
	}
}


/**
Who/what is requesting service.

The individual who initiated the request and has responsibility for its activation.
*/
open class CommunicationRequestRequester: BackboneElement {
	override open class var resourceType: String {
		get { return "CommunicationRequestRequester" }
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

