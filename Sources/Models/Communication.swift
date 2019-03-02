//
//  Communication.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Communication) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A record of information transmitted from a sender to a receiver.

An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health
agency that was notified about a reportable condition.
*/
open class Communication: DomainResource {
	override open class var resourceType: String {
		get { return "Communication" }
	}
	
	/// Resources that pertain to this communication.
	public var about: [Reference]?
	
	/// Request fulfilled by this communication.
	public var basedOn: [Reference]?
	
	/// Message category.
	public var category: [CodeableConcept]?
	
	/// Encounter created as part of.
	public var encounter: Reference?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// Reply to.
	public var inResponseTo: [Reference]?
	
	/// Instantiates FHIR protocol or definition.
	public var instantiatesCanonical: [FHIRURL]?
	
	/// Instantiates external protocol or definition.
	public var instantiatesUri: [FHIRURL]?
	
	/// A channel of communication.
	public var medium: [CodeableConcept]?
	
	/// Comments made about the communication.
	public var note: [Annotation]?
	
	/// Part of this action.
	public var partOf: [Reference]?
	
	/// Message payload.
	public var payload: [CommunicationPayload]?
	
	/// Characterizes how quickly the planned or in progress communication must be addressed. Includes concepts such as
	/// stat, urgent, routine.
	public var priority: RequestPriority?
	
	/// Indication for message.
	public var reasonCode: [CodeableConcept]?
	
	/// Why was communication done?.
	public var reasonReference: [Reference]?
	
	/// When received.
	public var received: DateTime?
	
	/// Message recipient.
	public var recipient: [Reference]?
	
	/// Message sender.
	public var sender: Reference?
	
	/// When sent.
	public var sent: DateTime?
	
	/// The status of the transmission.
	public var status: EventStatus?
	
	/// Reason for current status.
	public var statusReason: CodeableConcept?
	
	/// Focus of message.
	public var subject: Reference?
	
	/// Description of the purpose/content.
	public var topic: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: EventStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		about = createInstances(of: Reference.self, for: "about", in: json, context: &instCtx, owner: self) ?? about
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		inResponseTo = createInstances(of: Reference.self, for: "inResponseTo", in: json, context: &instCtx, owner: self) ?? inResponseTo
		instantiatesCanonical = createInstances(of: FHIRURL.self, for: "instantiatesCanonical", in: json, context: &instCtx, owner: self) ?? instantiatesCanonical
		instantiatesUri = createInstances(of: FHIRURL.self, for: "instantiatesUri", in: json, context: &instCtx, owner: self) ?? instantiatesUri
		medium = createInstances(of: CodeableConcept.self, for: "medium", in: json, context: &instCtx, owner: self) ?? medium
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		payload = createInstances(of: CommunicationPayload.self, for: "payload", in: json, context: &instCtx, owner: self) ?? payload
		priority = createEnum(type: RequestPriority.self, for: "priority", in: json, context: &instCtx) ?? priority
		reasonCode = createInstances(of: CodeableConcept.self, for: "reasonCode", in: json, context: &instCtx, owner: self) ?? reasonCode
		reasonReference = createInstances(of: Reference.self, for: "reasonReference", in: json, context: &instCtx, owner: self) ?? reasonReference
		received = createInstance(type: DateTime.self, for: "received", in: json, context: &instCtx, owner: self) ?? received
		recipient = createInstances(of: Reference.self, for: "recipient", in: json, context: &instCtx, owner: self) ?? recipient
		sender = createInstance(type: Reference.self, for: "sender", in: json, context: &instCtx, owner: self) ?? sender
		sent = createInstance(type: DateTime.self, for: "sent", in: json, context: &instCtx, owner: self) ?? sent
		status = createEnum(type: EventStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusReason = createInstance(type: CodeableConcept.self, for: "statusReason", in: json, context: &instCtx, owner: self) ?? statusReason
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		topic = createInstance(type: CodeableConcept.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "about", using: self.about, errors: &errors)
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "inResponseTo", using: self.inResponseTo, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesCanonical", using: self.instantiatesCanonical, errors: &errors)
		arrayDecorate(json: &json, withKey: "instantiatesUri", using: self.instantiatesUri, errors: &errors)
		arrayDecorate(json: &json, withKey: "medium", using: self.medium, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "payload", using: self.payload, errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonCode", using: self.reasonCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "reasonReference", using: self.reasonReference, errors: &errors)
		self.received?.decorate(json: &json, withKey: "received", errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		self.sender?.decorate(json: &json, withKey: "sender", errors: &errors)
		self.sent?.decorate(json: &json, withKey: "sent", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusReason?.decorate(json: &json, withKey: "statusReason", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.topic?.decorate(json: &json, withKey: "topic", errors: &errors)
	}
}


/**
Message payload.

Text, attachment(s), or resource(s) that was communicated to the recipient.
*/
open class CommunicationPayload: BackboneElement {
	override open class var resourceType: String {
		get { return "CommunicationPayload" }
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
			fhir_warn("Type “\(Swift.type(of: content))” for property “\(content)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		contentAttachment = createInstance(type: Attachment.self, for: "contentAttachment", in: json, context: &instCtx, owner: self) ?? contentAttachment
		contentReference = createInstance(type: Reference.self, for: "contentReference", in: json, context: &instCtx, owner: self) ?? contentReference
		contentString = createInstance(type: FHIRString.self, for: "contentString", in: json, context: &instCtx, owner: self) ?? contentString
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.contentString && nil == self.contentAttachment && nil == self.contentReference {
			instCtx.addError(FHIRValidationError(missing: "content[x]"))
		}
		
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

