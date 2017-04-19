//
//  Communication.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Communication) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A record of information transmitted from a sender to a receiver.

An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health
agency was notified about a reportable condition.
*/
open class Communication: DomainResource {
	override open class var resourceType: String {
		get { return "Communication" }
	}
	
	/// Request fulfilled by this communication.
	public var basedOn: [Reference]?
	
	/// Message category.
	public var category: [CodeableConcept]?
	
	/// Encounter or episode leading to message.
	public var context: Reference?
	
	/// Instantiates protocol or definition.
	public var definition: [Reference]?
	
	/// Unique identifier.
	public var identifier: [Identifier]?
	
	/// A channel of communication.
	public var medium: [CodeableConcept]?
	
	/// Communication did not occur.
	public var notDone: FHIRBool?
	
	/// Why communication did not occur.
	public var notDoneReason: CodeableConcept?
	
	/// Comments made about the communication.
	public var note: [Annotation]?
	
	/// Part of this action.
	public var partOf: [Reference]?
	
	/// Message payload.
	public var payload: [CommunicationPayload]?
	
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
	
	/// Focus of message.
	public var subject: Reference?
	
	/// Focal resources.
	public var topic: [Reference]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: EventStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		basedOn = createInstances(of: Reference.self, for: "basedOn", in: json, context: &instCtx, owner: self) ?? basedOn
		category = createInstances(of: CodeableConcept.self, for: "category", in: json, context: &instCtx, owner: self) ?? category
		context = createInstance(type: Reference.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		definition = createInstances(of: Reference.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		medium = createInstances(of: CodeableConcept.self, for: "medium", in: json, context: &instCtx, owner: self) ?? medium
		notDone = createInstance(type: FHIRBool.self, for: "notDone", in: json, context: &instCtx, owner: self) ?? notDone
		notDoneReason = createInstance(type: CodeableConcept.self, for: "notDoneReason", in: json, context: &instCtx, owner: self) ?? notDoneReason
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		partOf = createInstances(of: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		payload = createInstances(of: CommunicationPayload.self, for: "payload", in: json, context: &instCtx, owner: self) ?? payload
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
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		topic = createInstances(of: Reference.self, for: "topic", in: json, context: &instCtx, owner: self) ?? topic
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "basedOn", using: self.basedOn, errors: &errors)
		arrayDecorate(json: &json, withKey: "category", using: self.category, errors: &errors)
		self.context?.decorate(json: &json, withKey: "context", errors: &errors)
		arrayDecorate(json: &json, withKey: "definition", using: self.definition, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "medium", using: self.medium, errors: &errors)
		self.notDone?.decorate(json: &json, withKey: "notDone", errors: &errors)
		self.notDoneReason?.decorate(json: &json, withKey: "notDoneReason", errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "partOf", using: self.partOf, errors: &errors)
		arrayDecorate(json: &json, withKey: "payload", using: self.payload, errors: &errors)
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
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		arrayDecorate(json: &json, withKey: "topic", using: self.topic, errors: &errors)
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
			fhir_warn("Type “\(type(of: content))” for property “\(content)” is invalid, ignoring")
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

