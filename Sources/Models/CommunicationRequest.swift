//
//  CommunicationRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/CommunicationRequest) on 2017-02-01.
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
	
	/// Message category.
	public var category: CodeableConcept?
	
	/// Encounter or episode leading to message.
	public var context: Reference?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// A channel of communication.
	public var medium: [CodeableConcept]?
	
	/// Message payload.
	public var payload: [CommunicationRequestPayload]?
	
	/// Message urgency.
	public var priority: CodeableConcept?
	
	/// Indication for message.
	public var reason: [CodeableConcept]?
	
	/// Message recipient.
	public var recipient: [Reference]?
	
	/// When ordered or proposed.
	public var requestedOn: DateTime?
	
	/// An individual who requested a communication.
	public var requester: Reference?
	
	/// When scheduled.
	public var scheduledDateTime: DateTime?
	
	/// When scheduled.
	public var scheduledPeriod: Period?
	
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
		
		category = try createInstance(type: CodeableConcept.self, for: "category", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? category
		context = try createInstance(type: Reference.self, for: "context", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? context
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		medium = try createInstances(of: CodeableConcept.self, for: "medium", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? medium
		payload = try createInstances(of: CommunicationRequestPayload.self, for: "payload", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? payload
		priority = try createInstance(type: CodeableConcept.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		reason = try createInstances(of: CodeableConcept.self, for: "reason", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? reason
		recipient = try createInstances(of: Reference.self, for: "recipient", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? recipient
		requestedOn = try createInstance(type: DateTime.self, for: "requestedOn", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requestedOn
		requester = try createInstance(type: Reference.self, for: "requester", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requester
		scheduledDateTime = try createInstance(type: DateTime.self, for: "scheduledDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledDateTime
		scheduledPeriod = try createInstance(type: Period.self, for: "scheduledPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? scheduledPeriod
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
		
		self.category?.decorate(json: &json, withKey: "category", errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "medium", using: self.medium, errors: &errors)
		arrayDecorate(json: &json, withKey: "payload", using: self.payload, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reason", using: self.reason, errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		self.requestedOn?.decorate(json: &json, withKey: "requestedOn", errors: &errors)
		self.requester?.decorate(json: &json, withKey: "requester", errors: &errors)
		self.scheduledDateTime?.decorate(json: &json, withKey: "scheduledDateTime", errors: &errors)
		self.scheduledPeriod?.decorate(json: &json, withKey: "scheduledPeriod", errors: &errors)
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

